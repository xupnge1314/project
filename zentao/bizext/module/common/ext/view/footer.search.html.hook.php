<style>
#searchbox .dropdown-menu {margin-top: 0; left: 1px;}
#searchbox .dropdown-menu > li > a {padding: 5px 8px}
#searchbox .dropdown-menu > li {display: none}
#searchbox .dropdown-menu > li.search-type-all {width: 100%; display: block;}
#searchbox .dropdown-menu > li:hover {position: relative;}
#searchbox .dropdown-menu > li.active > a:before, #searchbox .dropdown-menu > li:hover > a:before {content: '\e6e1'; font-family: ZenIcon; font-size: 14px; position: absolute; right: 8px; top: 4px; display: block; color: #808080; font-weight: normal;}
#searchbox .dropdown-menu > li.search-type-all.active > a:before, #searchbox .dropdown-menu > li.search-type-all:hover > a:before {content: '\e603';}
#searchbox .dropdown-menu.show-quick-go.with-active {padding-top: 28px; position: absolute;}
#searchbox .dropdown-menu.show-quick-go > li {display: block;}
#searchbox .dropdown-menu.show-quick-go > li.active {position: absolute; top: 0; left: 0; right: 0; width: 100%;}
#objectSwitcher > a.btn {border-left: none; padding-right:5px;}
</style>
<script>
$(function()
{
    var reg = /[^0-9]/;
    var $typeSelector = $('#typeSelector');
    var $dropmenu = $typeSelector.children('.dropdown-menu');
    var $searchQuery = $('#searchQuery');
    var $searchbox = $('#searchbox');
    var searchType = $('#searchType').val();

    var toggleMmenu = function(show)
    {
        $searchbox.toggleClass('open', show);
        $dropmenu.toggleClass('show', show).toggleClass('in', show);
        if(show) $dropmenu.show();
        else $dropmenu.hide();
    };

    var hideMenu = function() {
        toggleMmenu(false);
    };

    var refreshMenu = function()
    {
        var val = $searchQuery.val();
        if(val !== null && val !== "")
        {
            var isQuickGo = !reg.test(val);
            $dropmenu.toggleClass('show-quick-go', isQuickGo);
            var $typeAll = $dropmenu.find('li.search-type-all > a');
            $typeAll.html('<?php echo $lang->searchAB?> <span>"' + val + '"</span>');
            if(isQuickGo)
            {
                $typeAll.closest('li').removeClass('active');
                $dropmenu.removeClass('with-active').find('li:not(.search-type-all) > a').each(function()
                {
                    var $this = $(this);
                    var isActiveType = $this.data('value') === searchType && searchType !== 'all';
                    $this.closest('li').toggleClass('active', isActiveType);
                    $this.html($this.data('name') + ' <span>#' + (val.length > 4 ? (val.substr(0, 4) + '...') : val) + "</span>");
                    if(isActiveType) $dropmenu.addClass('with-active');
                });
            }
            else
            {
                $dropmenu.find('li.active').removeClass('active');
                $typeAll.closest('li').addClass('active');
            }
            toggleMmenu(true);
        } else
        {
            hideMenu();
        }
    };

    if(searchType == 'bug' && '<?php echo $this->app->getModuleName()?>' != 'bug' && '<?php echo $this->app->getMethodName()?>' != 'bug')
    {
        searchType = 'all';
        $('#searchType').val(searchType);
        $('#searchTypeName').html("<?php echo $lang->searchObjects['all']?>");
    }

    $dropmenu = $dropmenu.appendTo($searchbox);
    $typeSelector.hide();
    $dropmenu.on('click', 'a', function(e)
    {
        shortcut($(this).data('value'), $searchQuery.val());
        e.stopPropagation();
    }).find('li > a').each(function()
    {
        var $this = $(this);
        $this.attr('data-name', $this.text());
    });
    var $allItem = $dropmenu.find('li > a[data-value="all"]');
    if($allItem.length)
    {
        $allItem.closest('li').addClass('search-type-all').prependTo($dropmenu);
    }
    $('#objectSwitcher > a').html('<?php echo $lang->searchAB?>');
    $searchQuery.on('change keyup paste input propertychange', refreshMenu).on('focus', function(){
        setTimeout(refreshMenu, 300);
    });

    $(document).on('click', hideMenu);
});

function shortcut(objectType, objectValue)
{
    if(objectType === undefined) objectType  = $('#searchType').attr('value');
    if(objectValue === undefined) objectValue = $('#searchQuery').attr('value');
    if(objectType && objectValue)
    {
        var reg = /[^0-9]/;
        if(reg.test(objectValue) || objectType == 'all')
        {
            location.href=createLink('search', 'index') + (config.requestType == 'PATH_INFO' ? '?words=' + objectValue : '&words=' + objectValue);
        }
        else
        {
            location.href=createLink(objectType, 'view', "id=" + objectValue);
        }
    }    
}
</script>
