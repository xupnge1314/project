<?php
public function printCell($col, $story, $users)
{
    return $this->loadExtension('datatable')->printCell($col, $story, $users);
}

public function printHead($col, $orderBy, $vars)
{
    return $this->loadExtension('datatable')->printHead($col, $orderBy, $vars);
}
