/**
 * Swtich repo.
 * 
 * @param  int    $repoID 
 * @param  string $module 
 * @param  string $method 
 * @access public
 * @return void
 */
function switchRepo(repoID, module, method)
{
    if(typeof(eventKeyCode) == 'undefined') eventKeyCode = 0;
    if(eventKeyCode > 0 && eventKeyCode != 13) return false;

    /* The projec id is a string, use it as the project model. */
    if(isNaN(repoID))
    {
        $.cookie('projectMode', repoID, {expires:config.cookieLife, path:config.webRoot});
        repoID = 0;
    }

    if(method != 'settings') method ="browse";
    link = createLink(module, method, 'repoID=' + repoID);
    location.href=link;
}

/**
 * Limit select two. 
 * @return void
 */
if($("input:checkbox[name='revision[]']:checked").length < 2)
{
    $("input:checkbox[name='revision[]']:lt(2)").attr('checked', 'checked');
}
$("input:checkbox[name='revision[]']").each(function(){ if(!$(this).is(':checked')) $(this).attr("disabled","disabled")});
$("input:checkbox[name='revision[]']").click(function(){
    var checkNum = $("input:checkbox[name='revision[]']:checked").length;
    if (checkNum >= 2) 
    {
        $("input:checkbox[name='revision[]']").each(function(){ if(!$(this).is(':checked')) $(this).attr("disabled","disabled")});
        $("input:checkbox[name='revision[]']:checked:last").after('<input type="submit" id="diffRepo" value=" 比较 ">');
    } 
    else
    {
        $('#diffRepo').remove();
        $("input:checkbox[name='revision[]']").each(function(){$(this).attr("disabled", false)});
    }
});

$(function()
{
    $(document).on('click', '.ajaxPager', function()
    {
        $('#revisionData .side-body').load($(this).attr('href'));
        return false;
    })

    if($('#revisionData').size() > 0)
    {
        var fixH = $("#revisionData").offset().top;
        $(window).scroll(function()
        {
            var scroH = $(this).scrollTop();
            if(scroH>=fixH)
            {
                $("#revisionData").addClass('affix');
            }
            else if(scroH<fixH)
            {
                $("#revisionData").removeClass('affix');
            }
        });
    }
})
