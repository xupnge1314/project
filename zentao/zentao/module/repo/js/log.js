$(document).ready(function(){
  $("input:checkbox[name='revision[]']").each(function(){
    $(this).click(function(){
      var checkNum = $("input:checkbox[name='revision[]']:checked").length;
      if (checkNum >= 2) {
        $("input:checkbox[name='revision[]']").each(function(){if($(this).attr('checked') == false) $(this).attr("disabled","disabled")});
      } 
      else{
        $("input:checkbox[name='revision[]']").each(function(){if($(this).attr('checked') == false) $(this).attr("enabled","enabled")});
      }
    });
  });

  $('#logForm').submit(function()
  {
      $('#diffModal').modal('show');
      $('#showDiff').load(function()
      {
          var iframe$ = window.frames['showDiff'].$;
          $('#diffModal .modal-body').height(iframe$('body').height() + 20);
      });
  })
});
