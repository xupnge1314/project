$(function(){	
	
	$(".Div1_main div span").mouseover(function(){
		$(this).addClass("Div1_main_span1").siblings("span").removeClass("Div1_main_span1");
	}).mouseout(function(){
		$(this).removeClass("Div1_main_span1").siblings("span");
	})
	
	
	var 
		 index = 0 ;
		Swidth = 1180 ;
		 timer = null ;
		   len = $(".brand_title span a").length ; 
		
		function NextPage()
		{	
			if(index>2)
			{
				index = 0 ;
			}
			$(".brand_title span a").removeClass("Div1_title_a1").eq(index).addClass("Div1_title_a1");
			$(".Div1_main").stop(true, false).animate({left: -index*Swidth+"px"},600)		
		}
		
		function PrevPage()
		{	
			if(index<0)
			{
				index = 2 ;
			}
			$(".brand_title span a").removeClass("Div1_title_a1").eq(index).addClass("Div1_title_a1");
			$(".Div1_main").stop(true, false).animate({left: -index*Swidth+"px"},600)		
		}
		
		$(".brand_title span a").each(function(a){
            $(this).mouseover(function(){
				index = a ;
				NextPage();
			});
        });
		//下一页
		$(".Div1_next img").click(function(){
			 index++ ;
			 NextPage();
		});
		//上一页
		$(".Div1_prev img").click(function(){
			 index-- ;
			 PrevPage();
		});
		//自动滚动
		var timer = setInterval(function(){
				index++ ;
				NextPage();
			},4000);
			
		$(".Div1_next img , .Div1_main , .Div1_prev img , .brand_title span").mouseover(function(){
			clearInterval(timer);
		});
		$(".Div1_next img , .Div1_main , .Div1_prev img , .brand_title span").mouseleave(function(){
			timer = setInterval(function(){
				index++ ;
				NextPage();
			},4000);	
		});
			
})//建站套餐
