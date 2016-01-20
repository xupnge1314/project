<?php
public function send($toList, $subject, $body = '', $ccList = '', $includeMe = false)
{
    $accounts  = empty($ccList) ? $toList : $toList . ',' . $ccList;
    $accounts  = $this->dao->select('mobile')->from(TABLE_USER)->where('account')->in($accounts)->fetchAll();
    $mobiles   = array();
    $delimiter = isset($this->app->config->sms->delimiter) ? $this->app->config->sms->delimiter : ',';
    foreach($accounts as $account)
    {
        if($account->mobile) $mobiles[] = $account->mobile;
    }

    $this->loadModel('sms')->send(join($mobiles, $delimiter), $subject);
    return parent::send($toList, $subject, $body, $ccList, $includeMe);
}
