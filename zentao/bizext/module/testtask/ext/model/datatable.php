<?php
public function printCell($col, $case, $users, $task)
{
    return $this->loadExtension('datatable')->printCell($col, $case, $users, $task);
}
