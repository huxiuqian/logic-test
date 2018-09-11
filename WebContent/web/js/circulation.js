//循环跳转
$(function(){
	var timer;
	//计时器
	timer=setInterval(function(){
		//调用方法
		dflist();
	},1000);
	
	//鼠标在上面不动
	$("#dflist").children("ul").children("li").mouseover(function(){
		//清空计时器
		clearInterval(timer);
	}).mouseout(function(){//鼠标移除事件
		timer=setInterval(function(){
			//调用方法
			dflist();
		},1000);
	});
	
});

function dflist(){
	//获取第一个链接的高度
	var height=$("#dflist").children("ul").children("li:first").height();
	//将第一个链接向上移
	$("#dflist").children("ul").animate({"top":-height},function(){
		//将第一个链接放在最后一个
		$("#dflist").children("ul").children("li:first").appendTo($("#dflist").children("ul"));
	});
}