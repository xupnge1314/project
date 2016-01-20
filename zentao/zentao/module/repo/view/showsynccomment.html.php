<?php
/**
 * The showSyncComment view file of repo module of ZenTaoPMS.
 *
 * @copyright   Copyright 2009-2010 QingDao Nature Easy Soft Network Technology Co,LTD (www.cnezsoft.com)
 * @license     LGPL (http://www.gnu.org/licenses/lgpl.html)
 * @author      Yidong Wang <yidong@cnezsoft.com>
 * @package     repo
 * @version     $Id$
 * @link        http://www.zentao.net
 */
?>
<?php include '../../common/view/header.html.php';?>
<style>
#percent{background:#33A52E; height:10px; width:0%;}
</style>
<table class='table'>
  <caption class='text-left'><strong id='caption'><?php echo $lang->repo->notice->syncing?></strong></caption>
  <tr>
    <td><div id='percent'></div></td>
    <td width='18' id='show'>0%</td>
  </tr>
</table>
<script language='Javascript'>
$(function(){
    var percent = 0;
    var link = createLink('repo', 'ajaxSyncComment', "repoID=<?php echo $repoID?>");
    function syncComments()
    {
        $.get(link, function(data)
        {
            percent = data;
            if(data >= 1) data = 1;
            var width = Math.round(data * 100) + '%';
            $('#percent').width(width);
            $('#show').html(width);
            if(percent <= 1)
            {
                setTimeout(syncComments, 10);
            }
            else
            {
                $('#caption').text('<?php echo $lang->repo->notice->syncComplete?>');
                self.location = createLink('repo', 'browse', "repoID=<?php echo $repoID?>");
            }
        });
    }
    setTimeout(syncComments, 500);
})
</script>
<?php include '../../common/view/footer.html.php';?>
