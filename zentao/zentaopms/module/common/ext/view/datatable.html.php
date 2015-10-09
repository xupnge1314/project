<?php if($extView = $this->getExtViewFile(__FILE__)){include $extView; return helper::cd();}?>
<?php
css::import($jsRoot . 'datatable/min.css');
js::import($jsRoot . 'datatable/min.js');
?>
<?php if(!empty($lang->datatable)):?>
<style>
.table-datatable tbody > tr td,
.table-datatable thead > tr th {max-height: 34px; line-height: 21px;}
.table-datatable tbody > tr td .btn-icon > i {line-height: 19px;}
.hide-side .table-datatable thead > tr > th.check-btn i {visibility: hidden;}
.hide-side .side-handle {line-height: 33px}
.table-datatable .checkbox-row {display: none}
.outer .datatable {border: 1px solid #ddd;}
.outer .datatable .table, .outer .datatable .table tfoot td {border: none; box-shadow: none}
.datatable .table>tbody>tr>td.col-hover, .datatable .table>tbody>tr.hover>td {background-color: #ebf2f9 !important;}
.datatable-span.flexarea .scroll-slide {bottom: -30px}

.datatable-menu-wrapper {position: relative;}
.datatable-menu {position: absolute; right: 0; top: 0; border: 1px solid #ddd; background: #fff; z-index: 999;}
.datatable-menu > .btn {padding: 5px 6px 6px; outline: none; color: #4d90fe!important}
.datatable-menu > .btn:hover {color: #002563!important}

.panel > .datatable, .panel-body > .datatable {margin-bottom: 0;}
</style>
<script> 
<?php $dtId = $this->moduleName . $this->methodName;?>
$(document).ready(function()
{
    'use strict';

    var $datatable = $('table.datatable').first();
    var dtId = $datatable.attr('id');
    var dtSetting = $.cookie('datatable.<?php echo $dtId?>' + '.cols') || {};
    if(dtSetting === 'null') dtSetting = {};
    if(typeof dtSetting === 'string') dtSetting = $.parseJSON(dtSetting);
    var $modal = $('#customDatatable');
    var $checkList = $modal.find('.modal-body > .table > tbody');

    $datatable.find('thead>tr>th').each(function(idx)
    {
        var $th = $(this);
        idx = $th.data('index') || idx;
        var colSetting = dtSetting[idx];
        $th.toggleClass('ignore', !!(colSetting && colSetting.ignore));
    });

    $checkList.on('click', 'tr', function()
    {
        var $tr = $(this);
        if($tr.hasClass('disabled')) return;
        $tr.toggleClass('checked');
    });

    $datatable.datatable(
    {
        customizable  : false, 
        sortable      : false,
        scrollPos     : 'out',
        tableClass    : 'tablesorter',
        ready: function()
        {
            if(!this.$table) return;
            var customMenu = this.$table.data('customMenu');

            var $dropdown = $("<div class='datatable-menu-wrapper'><div class='dropdown datatable-menu'><button type='button' class='btn btn-link' data-toggle='dropdown'><i class='icon-cogs'></i> <span class='caret'></span></button></div></div>");
            var $dropmenu = $("<ul class='dropdown-menu pull-right'></ul>");
            if(customMenu)
            {
                $dropmenu.append("<li><a id='customBtn' href='<?php echo $this->createLink('datatable', 'custom', 'id=' . $this->moduleName . '&method=' . $this->methodName)?>' data-toggle='modal' data-type='ajax'><?php echo $lang->datatable->custom?></a></li>");
            }
            $dropmenu.append("<li><a href='javascript:;' id='switchToTable'><?php echo $lang->datatable->switchToTable?></a></li>");
            $dropdown.children('.dropdown').append($dropmenu);
            this.$datatable.before($dropdown);
            this.$datatable.find('[data-toggle=modal], a.iframe').modalTrigger();

            $('#customBtn').modalTrigger();

            $('#switchToTable').click(function()
            {
                saveDatatableConfig('mode', 'table', true)
            });
        }
    });

    window.saveDatatableConfig = function(name, value, reload)
    {
        var datatableId = '<?php echo $dtId;?>';
        if(typeof value === 'object') value = JSON.stringify(value);
        if('<?php echo $this->app->user->account?>' == 'guest') return;
        $.ajax(
        {
            type: "POST",
            dataType: 'json',
            data: {target: datatableId, name: name, value: value},
            success:function(e){if(reload) window.location.reload();},
            url: '<?php echo $this->createLink('datatable', 'ajaxSave')?>'
        });
    };
});
</script>
<?php endif;?>
