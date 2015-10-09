$(function()
{
    var $showdata = $('#showdata');
    $showdata.load($showdata.data('url') + ' #dataWrapper', function()
    {
        $('#datatable').datatable({fixedLeftWidth: 200, scrollPos: 'out'});
    });
});
