function changeParams(obj)
{
    var dept  = $('.main .row').find('#dept').val();
    link = createLink('report', 'bugsummary', 'dept=' + dept);
    location.href=link;
}
