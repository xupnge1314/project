function changeDate(date)
{
    if(date.indexOf('-') != -1)
    {
        var datearray = date.split("-");
        var date = '';
        for(i=0 ; i<datearray.length ; i++)
        {
            date = date + datearray[i]; 
        }
    }
    link = createLink('company', 'effort', 'date=' + date);
    location.href=link;
}

function changeUser(account)
{
    link = createLink('company', 'effort', 'date=all&type=account&param=' + account);
    location.href = link;
}

function changeProject(project)
{
    link = createLink('company', 'effort', 'date=all&type=project&param=' + project);
    location.href = link;
}

function changeProduct(product)
{
    link = createLink('company', 'effort', 'date=all&type=product&param=' + product);
    location.href = link;
}

function changeDept(dept)
{
    link = createLink('company', 'calendar', 'parent=' + dept);
    location.href=link;
}

function changeDeptDate(dept, begin, end)
{
    if(begin.indexOf('-') != -1)
    {
        var beginarray = begin.split("-");
        var begin = '';
        for(i=0 ; i < beginarray.length ; i++)
        {
            begin = begin + beginarray[i]; 
        }
    }
    if(end.indexOf('-') != -1)
    {
        var endarray = end.split("-");
        var end = '';
        for(i=0 ; i < endarray.length ; i++)
        {
            end = end + endarray[i]; 
        }
    }
    link = createLink('company', 'calendar', 'dept=' + dept + '&begin=' + begin + '&end=' + end);
    location.href=link;
}

$(function()
{
    var $showdata = $('#showdata');
    $showdata.load($showdata.data('url'), function()
    {
        $('#datatable').datatable({fixedLeftWidth: 200, scrollPos: 'out', customizable: false, sortable: false, mergeRows: true});
    });

    var dateVal = $('#featurebar ul.nav li #date').val();
    $('#date').focus(function(){$(this).val('').datetimepicker('update');}).blur(function(){$(this).val(dateVal)});
});
