$(function(){	
	
	$(".w5_gd_band_main div span").mouseover(function(){
		$(this).addClass("w5_gd_band_main_span1").siblings("span").removeClass("w5_gd_band_main_span1");
	}).mouseout(function(){
		$(this).removeClass("w5_gd_band_main_span1").siblings("span");
	})
	
	
	var 
		 index = 0 ;
		Swidth = 1000 ;
		 timer = null ;
		   len = $(".w5_gd_band_title span a").length ; 
		
		function NextPage()
		{	
			if(index>2)
			{
				index = 0 ;
			}
			$(".w5_gd_band_title span a").removeClass("w5_gd_band_title_a1").eq(index).addClass("w5_gd_band_title_a1");
			$(".w5_gd_band_main").stop(true, false).animate({left: -index*Swidth+"px"},600)		
		}
		
		function PrevPage()
		{	
			if(index<0)
			{
				index = 2 ;
			}
			$(".w5_gd_band_title span a").removeClass("w5_gd_band_title_a1").eq(index).addClass("w5_gd_band_title_a1");
			$(".w5_gd_band_main").stop(true, false).animate({left: -index*Swidth+"px"},600)		
		}
		
		$(".w5_gd_band_title span a").each(function(a){
            $(this).mouseover(function(){
				index = a ;
				NextPage();
			});
        });
		//下一页
		$(".w5_gd_band_next img").click(function(){
			 index++ ;
			 NextPage();
		});
		//上一页
		$(".w5_gd_band_prev img").click(function(){
			 index-- ;
			 PrevPage();
		});
		//自动滚动
		var timer = setInterval(function(){
				index++ ;
				NextPage();
			},3000);
			
		$(".w5_gd_band_next img , .w5_gd_band_main , .w5_gd_band_prev img , .w5_gd_band_title span").mouseover(function(){
			clearInterval(timer);
		});
		$(".w5_gd_band_next img , .w5_gd_band_main , .w5_gd_band_prev img , .w5_gd_band_title span").mouseleave(function(){
			timer = setInterval(function(){
				index++ ;
				NextPage();
			},3000);	
		});
			
})//建站套餐


$(function(){	
	
	$(".ad_gd_tow_box_main div span").mouseover(function(){
		$(this).addClass("ad_gd_tow_box_main_span1").siblings("span").removeClass("ad_gd_tow_box_main_span1");
	}).mouseout(function(){
		$(this).removeClass("ad_gd_tow_box_main_span1").siblings("span");
	})
	
	
	var 
		 index = 0 ;
		Swidth = 1000 ;
		 timer = null ;
		   len = $(".ad_gd_tow_box_title span a").length ; 
		
		function NextPage()
		{	
			if(index>2)
			{
				index = 0 ;
			}
			$(".ad_gd_tow_box_title span a").removeClass("ad_gd_tow_box_title_a1").eq(index).addClass("ad_gd_tow_box_title_a1");
			$(".ad_gd_tow_box_main").stop(true, false).animate({left: -index*Swidth+"px"},600)		
		}
		
		function PrevPage()
		{	
			if(index<0)
			{
				index = 2 ;
			}
			$(".ad_gd_tow_box_title span a").removeClass("ad_gd_tow_box_title_a1").eq(index).addClass("ad_gd_tow_box_title_a1");
			$(".ad_gd_tow_box_main").stop(true, false).animate({left: -index*Swidth+"px"},600)		
		}
		
		$(".ad_gd_tow_box_title span a").each(function(a){
            $(this).mouseover(function(){
				index = a ;
				NextPage();
			});
        });
		//下一页
		$(".ad_gd_tow_box_next img").click(function(){
			 index++ ;
			 NextPage();
		});
		//上一页
		$(".ad_gd_tow_box_prev img").click(function(){
			 index-- ;
			 PrevPage();
		});
		//自动滚动
		var timer = setInterval(function(){
				index++ ;
				NextPage();
			},5000);
			
		$(".ad_gd_tow_box_next img , .ad_gd_tow_box_main , .ad_gd_tow_box_prev img , .ad_gd_tow_box_title span").mouseover(function(){
			clearInterval(timer);
		});
		$(".ad_gd_tow_box_next img , .ad_gd_tow_box_main , .ad_gd_tow_box_prev img , .ad_gd_tow_box_title span").mouseleave(function(){
			timer = setInterval(function(){
				index++ ;
				NextPage();
			},5000);	
		});
			
})//建站套餐

