function updateAction(date)
{
    date = date.replace(/\-/g, '');
    link = createLink('effort', 'batchCreate', 'date=' + date);
    location.href=link;
}

function addEffort(clickedButton)
{

    effortRow = '<tr class="effortBox">' + $(clickedButton).parent().parent().html() + '</tr>';
    $(clickedButton).parent().parent().after(effortRow);
    var nextBox = $(clickedButton).parent().parent().next('.effortBox');
    $(nextBox).find('input').each(function(){
            var inputName = $(this).attr('name');
            var end = inputName.indexOf('[')
            if(end >= 0)
            {
                newName = inputName.substring(0, end + 1) + num + ']';
                $(this).attr('name', newName);
                $(this).attr('id', newName);
            }
        })
    $(nextBox).find('select').attr('name', 'objectType[' + num + ']');
    $(nextBox).find('select').attr('id', 'objectType' + num);

    num++;

    updateID();
}

function deleteEffort(clickedButton)
{
    if($('.effortBox').size() == 1) return;
    $(clickedButton).parent().parent().remove();
    updateID();
}

function cleanEffort()
{
    $('#objectTable tbody tr.computed').remove();
    updateID();
}

function updateID()
{
    i = 1;
    $('.effortID').each(function(){$(this).html(i ++)});
}
