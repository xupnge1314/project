<?php
include '../../control.php'; 
/**
 * The control file of user module of ZenTaoPMS.
*/
class myUser extends user
{
    /**
     * User login, identify him and authorize him.
     * 
     * @access public
     * @return void
     */
    public function login($referer = '', $from = '')
    {
        $this->setReferer($referer);

        $loginLink = $this->createLink('user', 'login');
        $denyLink  = $this->createLink('user', 'deny');

        /* If user is logon, back to the rerferer. */
        if($this->user->isLogon())
        {
            if(strpos($this->referer, $loginLink) === false and 
               strpos($this->referer, $denyLink)  === false 
            )
            {
                $this->locate($this->referer);
            }
            else
            {
                $this->locate($this->createLink($this->config->default->module));
            }
        }

        /* Passed account and password by post or get. */
        if(!empty($_POST) or (isset($_GET['account']) and isset($_GET['password'])))
        {
            $account  = '';
            $password = '';
            if($this->post->account)  $account  = $this->post->account;
            if($this->get->account)   $account  = $this->get->account;
            if($this->post->password) $password = $this->post->password;
            if($this->get->password)  $password = $this->get->password;

            if($this->user->checkLocked($account)) die(js::error(sprintf($this->lang->user->loginLocked, $this->config->user->lockMinutes)));
            
            $user = $this->user->identify($account, $password);

            if($user)
            {
                $this->user->cleanLocked($account);
                /* Authorize him and save to session. */
                $user->rights = $this->user->authorize($account);
                $user->groups = $this->user->getGroups($account);
                $this->session->set('user', $user);
                $this->app->user = $this->session->user;
                $this->loadModel('action')->create('user', $user->id, 'login');

                /* Keep login. */
                if($this->post->keepLogin) $this->user->keepLogin($user);
				
				$isDefult = $this->dao->select('password')
					->from(TABLE_DEFAULTPASSWORD)
					->Where('password')->eq($password)
					->fetchAll();
				
				//如果用户使用默认密码则跳到修改密码界面
				if($isDefult) die(js::locate($this->createLink('my', 'changePassword', 'type=type'), 'parent'));
				
                /* Go to the referer. */
                if($this->post->referer and 
                   strpos($this->post->referer, $loginLink) === false and 
                   strpos($this->post->referer, $denyLink)  === false 
                )
                {
                    if($this->app->getViewType() == 'json') die(json_encode(array('status' => 'success')));

                    /* Get the module and method of the referer. */
                    if($this->config->requestType == 'PATH_INFO')
                    {
                        $path = substr($this->post->referer, strrpos($this->post->referer, '/') + 1);
                        $path = rtrim($path, '.html');
                        if(empty($path)) $path = $this->config->requestFix;
                        list($module, $method) = explode($this->config->requestFix, $path);
                    }
                    else
                    {
                        $url   = html_entity_decode($this->post->referer);
                        $param = substr($url, strrpos($url, '?') + 1);
                        list($module, $method) = explode('&', $param);
                        $module = str_replace('m=', '', $module);
                        $method = str_replace('f=', '', $method);
                    }

                    if(common::hasPriv($module, $method))
                    {
                        die(js::locate($this->post->referer, 'parent'));
                    }
                    else
                    {
                        die(js::locate($this->createLink($this->config->default->module), 'parent'));
                    }
                }
                else
                {
                    if($this->app->getViewType() == 'json') die(json_encode(array('status' => 'success')));
                    die(js::locate($this->createLink($this->config->default->module), 'parent'));
                }
            }
            else
            {
                if($this->app->getViewType() == 'json') die(json_encode(array('status' => 'failed')));
                $fails       = $this->user->failPlus($account);
                $remainTimes = $this->config->user->failTimes - $fails;
                if($remainTimes <= 0)
                {
                    die(js::error(sprintf($this->lang->user->loginLocked, $this->config->user->lockMinutes)));
                }
                else if($remainTimes <= 3)
                {
                    die(js::error(sprintf($this->lang->user->lockWarning, $remainTimes)));
                }
                die(js::error($this->lang->user->loginFailed));
            }
        }
        else
        { 
            if(!empty($this->config->global->showDemoUsers))
            {
                $demoUsers = $this->user->getPairs('nodeleted, noletter, noempty, noclosed');
                $this->view->demoUsers = $demoUsers;
            }

            $this->app->loadLang('misc');
            $this->view->noGDLib   = sprintf($this->lang->misc->noGDLib, common::getSysURL() . $this->config->webRoot);
            $this->view->title     = $this->lang->user->login;
            $this->view->referer   = $this->referer;
            $this->view->s         = zget($this->config->global, 'sn');
            $this->view->keepLogin = $this->cookie->keepLogin ? $this->cookie->keepLogin : 'off';
            $this->display();
        }
    }
}
