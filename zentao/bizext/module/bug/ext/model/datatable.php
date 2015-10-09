<?php
public function printCell($col, $bug, $users, $builds)
{
    return $this->loadExtension('datatable')->printCell($col, $bug, $users, $builds);
}

public function printHead($col, $orderBy, $vars)
{
    return $this->loadExtension('datatable')->printHead($col, $orderBy, $vars);
}
