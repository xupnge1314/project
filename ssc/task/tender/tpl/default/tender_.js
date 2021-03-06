

$(function(){
	//第一步
	$('#pubTaskFormstep1').scojs_valid({
	    rules:{
	    	task_cash_cove: ['not_empty','digit'],
	    	txt_budget: ['not_empty','digit'],
	    	txt_task_day:['not_empty']
	    },
	    messages: {
	    	
	    	task_cash_cove: {
				not_empty: "请选择您的预算",
				digit:'输入格式不正确'
			},
			txt_budget: {
				not_empty: "请输入您的预算",
				digit:'输入格式不正确'
			},
			txt_task_day:{
				not_empty: "请选择结束日期"
			}
	    },
	    wrapper:'.form-group'
	    ,onSuccess: function(response, validator, $form) {
	    	  tipsUser(response.data,response.status);
	    	  if(response.url){
					window.location.href=response.url;
	    	  }
	    }
	});
	//第二步
	$('#pubTaskFormstep2').scojs_valid({
		rules: {
			indus_pid:	['not_empty'],
			indus_id: 	['not_empty'],
			txt_title:	['not_empty',{min_length:2}, {max_length:50} ],
	    	tar_content:['not_empty',{min_length:20},{max_length:65565} ],
	    	txt_mobile:	['not_empty',{min_length:11},{max_length:11},'digit' ],
	    	task_ext_16: ['not_empty'],
	    	task_ext_1:['not_empty'],
	    	task_ext_6:['not_empty'],
	    	task_ext_10:['not_empty'],
	    	task_ext_15:['not_empty'],
	    	province:['not_empty']

		},
		messages: {
			indus_pid: {
				not_empty : "请选择父行业"
			},
			indus_id:{
				not_empty : "请选择子行业"
			},
			txt_title:{
				not_empty : "请输入标题名称",
				min_length: "标题名称最少2字符",
				max_length: "标题名称最多50字符"
			},
			tar_content:{
				not_empty : "请输入需求描述",
				min_length: "需求描述最少20字符",
				max_length: "需求描述最多65565字符"
			},
			txt_mobile:{
				not_empty : "请输入手机号码",
				digit     : "请输入正确的手机号码",
				min_length: '请检查手机号码是否输入正确',
				max_length: '请检查手机号码是否输入正确'
			},
			task_ext_16:{
				not_empty : "请输入预计开始时间"
			},
			task_ext_1:{
				not_empty : "231"
			},
			task_ext_6:{
				not_empty : "1"
			},
			task_ext_10:{
				not_empty : "23535"
			},
			task_ext_15:{
				not_empty : "请输入样品"
			},
			province:{
				not_empty : "请选择地区分类"
			}
		},
		wrapper:'.form-group'
			,onSuccess: function(response, validator, $form) {
				tipsUser(response.data,response.status);
				if(response.url){
					window.location.href=response.url;
				}
			}
	});
	//第三步
	$('#pubTaskFormstep3').scojs_valid({
		rules: {},
		messages: {},
		wrapper:'.form-group'
			,onSuccess: function(response, validator, $form) {
				tipsUser(response.data,response.status);
				if(response.url){
					window.location.href=response.url;
				}
			}
	});

	//查看更多
	$("#viewMoreContent").click(function(){
		if($(this).text() == '查看更多'){
			$("#fullContent").removeClass('hidden');
			$("#partContent").addClass('hidden');
			$(this).text('收起更多');
		}else{
			$("#fullContent").addClass('hidden');
			$("#partContent").removeClass('hidden');
			$(this).text('查看更多');
		}
	});
	$("#verifyBudget").click(function(){
		 if($(this).text() =='我有明确的预算'){
			 $("#div-cash_cove").addClass('hidden');
			 $("#div-budget").removeClass('hidden');
			 $("#budget_radio").val('2');
			 $(this).text('我无明确的预算') ;
		 }else{
			 $("#div-cash_cove").removeClass('hidden');
			 $("#div-budget").addClass('hidden');
			 $("#budget_radio").val('1');
			 $(this).text('我有明确的预算') ;
		 }
	});
    /**
     * 稿件单价自动显示*/
	checkSingleCash();
	$("#txt_task_cash").keyup(function(){
		checkSingleCash();
	});
	$("#txt_work_count").keyup(function(){
		checkSingleCash();
	})
})

/**
 * 稿件单价计算*/
	function checkSingleCash(){
		var floatTotleCash = Number($("#txt_task_cash").val())+0;
		var intWorkCount = Number($("#txt_work_count").val())+0;
		var floatSingleCash = 0;
		if(intWorkCount){
			floatSingleCash = parseFloat(floatTotleCash/intWorkCount);
			floatSingleCash = formatnumber(floatSingleCash,2);
		}
		$("#txt_single_cash").val(floatSingleCash);
	}
/**
 * 格式化稿件单价数据
 * @param value
 * @param num
 * @returns
 */
function formatnumber(value,num){
	var a,b,c,i
	a = value.toString();
	b = a.indexOf('.');
	c = a.length;
	if(b!=-1){
		if(num>0){
			a = a.substring(0,b+num+1);
			for (i=c;i<=b+num;i++){
				a = a + "0";
			}
		}else{
			a = a + ".";
			for (i=1;i<=num;i++){
				a = a + "0";
			}
		}
	}
	return Number(a);
}