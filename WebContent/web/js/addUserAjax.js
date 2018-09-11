$(function(){
	$("[name='userName']").blur(function(){
		var $userName=$("[name='userName']").val();
		$.get("http://localhost:8080/pro01/addUserAjax.action",{"userName":$userName},function(date){
			if(date!=""){
				alert(date);
				//$("[name='userName']").focus();
			}
		});
	});
});