<?php
/**
 * getKanbanTasks 
 * 
 * @param  int    $projectID 
 * @param  string $orderBy 
 * @param  object $pager 
 * @access public
 * @return void
 */
public function getKanbanTasks($projectID, $orderBy = 'status_asc, id_desc', $pager = null)
{
    return $this->loadExtension('kanban')->getKanbanTasks($projectID, $orderBy, $pager);
}

public function saveKanbanData($projectID, $kanbanDatas)
{
    return $this->loadExtension('kanban')->saveKanbanData($projectID, $kanbanDatas);
}

public function getPrevKanban($projectID)
{
    return $this->loadExtension('kanban')->getPrevKanban($projectID);
}
