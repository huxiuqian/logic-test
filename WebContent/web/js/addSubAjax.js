$(function(){
	$("input[name='subName']").blur(function(){
		var $subName=$("[name='subName']").val();
		$.get("http://localhost:8080/pro01/addSubAjax.action",{"subName":$subName},function(date){
			if(date!=""){
				alert(date);
				//$("[name='subName']").focus();
			}
		});
	});
});