<?php
public function execute($fromVersion)
{
    $result = array();

    /* Check bizext extension to set fromVersion.*/
    if(strpos($fromVersion, 'pro') === false)
    {
        $bizext = $this->dao->select('*')->from(TABLE_EXTENSION)->where('code')->like('bizext%')->fetch();
        $fromVersion = empty($bizext) ? $fromVersion : 'pro' . str_replace('.', '_', $bizext->version);
    }

    /* Delete useless file.*/
    foreach($this->config->delete as $deleteFiles)
    {
        $basePath = $this->app->getBasePath();
        foreach($deleteFiles as $file)
        {
            $fullPath = $basePath . str_replace('/', DIRECTORY_SEPARATOR, $file);
            if(file_exists($fullPath) and !unlink($fullPath)) $result[] = $fullPath;
        }
    }
    if(!empty($result)) return $result;

    /* get open source zentao from version. */
    $zentaoVersion = empty($this->config->proVersion[$fromVersion]) ? $fromVersion : $this->config->proVersion[$fromVersion];

    parent::execute($zentaoVersion);
    if(strpos($fromVersion, 'pro') === false)
    {
        $this->upgradeFreeToPro();
    }

    switch($fromVersion)
    {
        case 'pro1_0':   $this->execSQL($this->getUpgradeFile('pro1.0'));
        case 'pro1_1':
        case 'pro1_1_1': $this->execSQL($this->getUpgradeFile('pro1.1'));
        case 'pro1_2':
        case 'pro1_3':   $this->execSQL($this->getUpgradeFile('pro1.3'));
        case 'pro2_0':
        case 'pro2_0_1':
        case 'pro2_1':   $this->execSQL($this->getUpgradeFile('pro2.1'));
        case 'pro2_2_beta':
        case 'pro2_3_beta':
        case 'pro3_0_beta1':
        case 'pro3_0':   $this->execSQL($this->getUpgradeFile('pro3.0'));
        case 'pro3_1':
        case 'pro3_2':
        case 'pro3_2_1':
            $this->recordFinished();
        case 'pro3_3':
            $this->toLowerTable('pro');
        case 'pro4_0_beta1':
        case 'pro4_0':
            $this->execSQL($this->getUpgradeFile('pro4.0'));
            $this->fixRepo();
        case 'pro4_1_beta':
            $this->execSQL($this->getUpgradeFile('pro4.1'));
        case 'pro4_2':
            $this->execSQL($this->getUpgradeFile('pro4.2'));
        case 'pro4_3':
            $this->execSQL($this->getUpgradeFile('pro4.3'));
        case 'pro4_4':
            $this->execSQL($this->getUpgradeFile('pro4.4'));
        case 'pro4_5':
            $this->execSQL($this->getUpgradeFile('pro4.5'));
        case 'pro4_6':
            $this->execSQL($this->getUpgradeFile('pro4.6'));
        case 'pro4_7':
        default:
            $this->dao->delete()->from(TABLE_EXTENSION)->where('code')->like('bizext%')->exec();
            $this->setting->updateVersion($this->config->version);
    }

    return $result;
}

public function getConfirm($fromVersion)
{
    $zentaoVersion = empty($this->config->proVersion[$fromVersion]) ? $fromVersion : $this->config->proVersion[$fromVersion];
    $confirmContent = parent::getConfirm($zentaoVersion);
    if(strpos($fromVersion, 'pro') === false) $confirmContent .= file_get_contents($this->getUpgradeFile('proinstall'));

    switch($fromVersion)
    {
        case 'pro1_0':   $confirmContent .= file_get_contents($this->getUpgradeFile('pro1.0'));
        case 'pro1_1':
        case 'pro1_1_1': $confirmContent .= file_get_contents($this->getUpgradeFile('pro1.1'));
        case 'pro1_2':
        case 'pro1_3':   $confirmContent .= file_get_contents($this->getUpgradeFile('pro1.3'));
        case 'pro2_0':
        case 'pro2_0_1':
        case 'pro2_1':   $confirmContent .= file_get_contents($this->getUpgradeFile('pro2.1'));
        case 'pro2_2_beta':
        case 'pro2_3_beta':
        case 'pro3_0_beta1':
        case 'pro3_0':   $confirmContent .= file_get_contents($this->getUpgradeFile('pro3.0'));
        case 'pro3_1':
        case 'pro3_2':
        case 'pro3_2_1':
        case 'pro3_3':
        case 'pro4_0_beta1':
        case 'pro4_0': $confirmContent .= file_get_contents($this->getUpgradeFile('pro4.0'));
        case 'pro4_1_beta': $confirmContent .= file_get_contents($this->getUpgradeFile('pro4.1'));
        case 'pro4_2': $confirmContent .= file_get_contents($this->getUpgradeFile('pro4.2'));
        case 'pro4_3': $confirmContent .= file_get_contents($this->getUpgradeFile('pro4.3'));
        case 'pro4_4': $confirmContent .= file_get_contents($this->getUpgradeFile('pro4.4'));
        case 'pro4_5': $confirmContent .= file_get_contents($this->getUpgradeFile('pro4.5'));
        case 'pro4_6': $confirmContent .= file_get_contents($this->getUpgradeFile('pro4.6'));
        case 'pro4_7':
    }

    return str_replace('zt_', $this->config->db->prefix, $confirmContent);
}

public function upgradeFreeToPro()
{
    $this->execSQL($this->getUpgradeFile('proinstall'));
    if(!$this->isError()) $this->setting->updateVersion($this->config->version);
}

public function recordFinished()
{
    $tasks = $this->dao->select('id,finishedBy,lastEditedBy,finishedDate,lastEditedDate')->from(TABLE_TASK)
        ->where('status')->in('done,closed')
        ->andWhere("(finishedDate='0000-00-00 00:00:00' or lastEditedDate='0000-00-00 00:00:00')")
        ->fetchAll('id');

    $efforts = $this->dao->select('t1.*,t2.date as actionDate')->from(TABLE_EFFORT)->alias('t1')
        ->leftJoin(TABLE_ACTION)->alias('t2')->on('t1.id=t2.objectID')
        ->where('t2.objectType')->eq('effort')
        ->andWhere('t1.left')->eq(0)
        ->andWhere('t1.objectType')->eq('task')
        ->andWhere('t1.objectID')->in(array_keys($tasks))
        ->orderBy('id')
        ->fetchAll('objectID');

    foreach($efforts as $taskID => $effort)
    {
        $data = array();
        if(empty($tasks[$taskID]->finishedBy))   $data['finishedBy']   = $effort->account;
        if(empty($tasks[$taskID]->lastEditedBy)) $data['lastEditedBy'] = $effort->account;
        if($tasks[$taskID]->finishedDate == '0000-00-00 00:00:00')   $data['finishedDate']   = $effort->actionDate;
        if($tasks[$taskID]->lastEditedDate == '0000-00-00 00:00:00') $data['lastEditedDate'] = $effort->actionDate;
        if(!empty($data))$this->dao->update(TABLE_TASK)->data($data)->where('id')->eq($taskID)->exec();
    }

    return !dao::isError();
}

public function fixRepo()
{
    $this->app->loadConfig('repo');
    $repos = $this->dao->select('*')->from(TABLE_REPO)->fetchAll();
    foreach($repos as $repo)
    {
        if($repo->SCM == 'Subversion')
        {
            $scm = $this->app->loadClass('scm');
            $scm->setEngine($repo);
            $info = $scm->info('');
            $prefix = empty($info->root) ? '' : trim(str_ireplace($info->root, '', str_replace('\\', '/', $repo->path)), '/');
            if($prefix)
            {
                $prefix = '/' . $prefix;
                $this->dao->update(TABLE_REPO)->set('prefix')->eq($prefix)->where('id')->eq($repo->id)->exec();
            }
        }
    }
}
