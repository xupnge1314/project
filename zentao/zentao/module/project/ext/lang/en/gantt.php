<?php
$lang->project->editrelation   = 'Edit relation';
$lang->project->deleterelation = 'Delete relation';
$lang->project->viewrelation   = 'View relation';
$lang->project->ganttchart     = 'Gantt chart';

$lang->project->gantt            = new stdclass();
$lang->project->gantt->common    = 'Gantt chart';
$lang->project->gantt->id        = 'ID';
$lang->project->gantt->pretask   = 'Fronting task';
$lang->project->gantt->condition = 'Condition';
$lang->project->gantt->task      = 'Task';
$lang->project->gantt->action    = 'Action';
$lang->project->gantt->type      = 'Relatio type';

$lang->project->gantt->createRelationOfTasks    = 'Create relation';
$lang->project->gantt->newCreateRelationOfTasks = 'Add relation';
$lang->project->gantt->editRelationOfTasks      = 'Edit relation';
$lang->project->gantt->relationOfTasks          = 'View relation';

$lang->project->gantt->assignTo  = 'Assign To';
$lang->project->gantt->duration  = 'Duration';
$lang->project->gantt->comp      = 'Comp';
$lang->project->gantt->startDate = 'Start Date';
$lang->project->gantt->endDate   = 'End Date';
$lang->project->gantt->days      = ' Days';
$lang->project->gantt->format    = 'Format';
$lang->project->gantt->day       = 'Day';
$lang->project->gantt->week      = 'Week';
$lang->project->gantt->month     = 'Month';
$lang->project->gantt->quarter   = 'Quarter';

$lang->project->gantt->preTaskStatus['']      = '';
$lang->project->gantt->preTaskStatus['begin'] = 'After the start';
$lang->project->gantt->preTaskStatus['end']   = 'After the end';

$lang->project->gantt->taskActions[''] = '';
$lang->project->gantt->taskActions['begin'] = 'Can start';
$lang->project->gantt->taskActions['end']   = 'Can finish';

$lang->project->gantt->color[0] = 'fff000';
$lang->project->gantt->color[1] = 'ff0000';
$lang->project->gantt->color[2] = 'ff00ff';
$lang->project->gantt->color[3] = '0000ff';
$lang->project->gantt->color[4] = '00ff00';

//$lang->project->gantt->browseType['module']     = 'Group by module';
$lang->project->gantt->browseType['type']       = 'Group by task type';
$lang->project->gantt->browseType['assignedTo'] = 'Group by assign to';
$lang->project->gantt->browseType['story']      = 'Group by story';

$lang->project->gantt->confirmDelete = 'Are sure delete this relation?';
$lang->project->gantt->tmpNotWrite   = 'Tmp not write';

$lang->project->gantt->warning                 = new stdclass();
$lang->project->gantt->warning->noEditSame     = "Existing ID:%s, before and after the task can not be the same!";
$lang->project->gantt->warning->noEditRepeat   = "Task the relationship between existing ID:%s existing ID:%s is repeated!";
$lang->project->gantt->warning->noEditContrary = "Existing ID:%s existing ID:%s task relationships, there are contradictions between!";
$lang->project->gantt->warning->noRepeat       = "Task the relationship between existing ID:%s, with the new ID:%s is repeated!";
$lang->project->gantt->warning->noContrary     = "Existing ID:%s, with the new ID:%s task relationships are contradictory!";
$lang->project->gantt->warning->noNewSame      = "The new ID:%s, before and after the task can not be the same!";
$lang->project->gantt->warning->noNewRepeat    = "New ID:%s, with the new ID:%s task relationships is repeated!"; 
$lang->project->gantt->warning->noNewContrary  = "New ID:%s, with the new ID:%s task relationships are contradictory!";
