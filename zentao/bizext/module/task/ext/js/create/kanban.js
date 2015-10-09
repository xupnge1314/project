$(function()
{
    /* First unbind ajaxForm for form.*/
    $("form[data-type='ajax']").unbind('submit');
    setForm();

    /* Bind ajaxForm for form again. */
    $.ajaxForm("form[data-type='ajax']", function(response)
    {
        if(response.message) alert(response.message);
        if(response.locate)
        {   
            if(response.locate == 'reload')
            {   
                if(response.target == 'parent')
                {
                     parent.$.cookie('selfClose', 1);
                     parent.$.closeModal(null, 'this');
                }else
                {
                    location.href = location.href;
                }
            }
            else
            {
                location.href = response.locate;
            }
        }
        return false;
    });
});
