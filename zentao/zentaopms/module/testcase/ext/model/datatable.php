<?php
public function printCell($col, $case, $users)
{
    return $this->loadExtension('datatable')->printCell($col, $case, $users);
}

public function printHead($col, $orderBy, $vars)
{
    return $this->loadExtension('datatable')->printHead($col, $orderBy, $vars);
}
