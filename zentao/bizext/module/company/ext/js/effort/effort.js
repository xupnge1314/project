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

$(function()
{
    var dateVal = $('#featurebar ul.nav li #date').val();
    $('#featurebar ul.nav li #date').focus(function(){$(this).val('').datetimepicker('update');}).blur(function(){$(this).val(dateVal)});
});
