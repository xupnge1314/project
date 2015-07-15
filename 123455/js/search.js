// JavaScript Document 20140930 新增

$(function(){ 

	$("#searchSelected2").click(function(){ 
		$("#searchTab2").show();
		$(this).addClass("searchOpen2");
	}); 

	$("#searchTab2 li").hover(function(){
		$(this).addClass("selected2");
	},function(){
		$(this).removeClass("selected2");
	});
	 
	$("#searchTab2 li").click(function(){
		$("#searchSelected2").html($(this).html());
		$("#searchTab2").hide();
		$("#searchSelected2").removeClass("searchOpen2");
	});
});
