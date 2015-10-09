<?php
public function create($objectType, $objectID, $actionType, $comment = '', $extra = '', $actor = '')
{
    $actionID = parent::create($objectType, $objectID, $actionType, $comment, $extra, $actor);
    $this->loadExtension('search')->saveIndex($objectType, $objectID, $actionType);
    return $actionID;
}
