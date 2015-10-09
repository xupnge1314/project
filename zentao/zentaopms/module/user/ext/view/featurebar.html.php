<div id='featurebar'>
  <ul class='nav'>
  <?php
    if(!isset($type))   $type   = 'today';
    if(!isset($period)) $period = 'today';
    $date = isset($date) ? $date : helper::today();

    echo '<li>' . $userList . '</li>';
    echo "<li id='todoTab'>";    common::printLink('user', 'todo',     "account=$account", $lang->user->todo);  echo '</li>';
    echo "<li id='effortTab'>";  common::printLink('user', 'effort',   "account=$account&type=today", $lang->user->effort); echo '</li>' ;
    echo "<li id='storyTab'>";   common::printLink('user', 'story',    "account=$account", $lang->user->story); echo '</li>';
    echo "<li id='taskTab'>";    common::printLink('user', 'task',     "account=$account", $lang->user->task);  echo '</li>';
    echo "<li id='bugTab'>" ;    common::printLink('user', 'bug',      "account=$account", $lang->user->bug);   echo '</li>';
    echo "<li id='testTab'>";    common::printLink('user', 'testtask', "account=$account", $lang->user->test);  echo '</li>';
    echo "<li id='dynamicTab'>"; common::printLink('user', 'dynamic',  "type=today&account=$account", $lang->user->dynamic); echo '</li>' ;
    echo "<li id='projectTab'>"; common::printLink('user', 'project',  "account=$account", $lang->user->project); echo '</li>';
    echo "<li id='profileTab'>"; common::printLink('user', 'profile',  "account=$account", $lang->user->profile); echo '</li>';

    $activedSpan = $this->app->getMethodName() . 'Tab';
    echo "<script>$('#$activedSpan').addClass('active')</script>";
    ?>
  </ul>
  <?php if($this->app->getMethodName() == 'effort'):?>
  <div class='actions'>
    <?php common::printLink('effort', 'export', "account=$account&orderBy=date_asc,begin_asc", $lang->export, '', 'class="export btn"');?>
  </div>
  <?php endif;?>
</div>
<script>
var type   = '<?php echo $type;?>';
var period = '<?php echo $period;?>';
</script>
<?php
$calendarHook = dirname(__FILE__) . '/featurebar.calendar.html.hook.php';
if(file_exists($calendarHook)) include $calendarHook;
?>
