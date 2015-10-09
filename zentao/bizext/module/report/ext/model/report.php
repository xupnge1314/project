<?php
public function getTestcases($productID)
{
    return $this->loadExtension('report')->getTestcases($productID);
}

public function getBuildBugs($productID)
{
    return $this->loadExtension('report')->getBuildBugs($productID);
}

public function getWorkSummary($begin, $end, $dept)
{
    return $this->loadExtension('report')->getWorkSummary($begin, $end, $dept);
}

public function getRoadmaps($conditions = '')
{
    return $this->loadExtension('report')->getRoadmaps($conditions);
}

public function getBugSummary($begin, $end, $dept)
{
    return $this->loadExtension('report')->getBugSummary($begin, $end, $dept);
}
