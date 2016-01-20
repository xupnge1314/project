<?php
public function printCell($col, $task, $users, $browseType)
{
    return $this->loadExtension('datatable')->printCell($col, $task, $users, $browseType);
}

public function printHead($col, $orderBy, $vars)
{
    return $this->loadExtension('datatable')->printHead($col, $orderBy, $vars);
}
