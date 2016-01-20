<?php
public function getUnresolvedBugs($projectID)
{
    return $this->loadExtension('kanban')->getUnresolvedBugs($projectID);
}
