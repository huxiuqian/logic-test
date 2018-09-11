$(function(){
	$("input[name='pwd']").blur(function(){
		var $pwd=$("input[name='pwd']").val();
		var reg = /^\d{6}$/;
		if(!reg.test($.trim($pwd))){
			alert("密码只能是6位数字格式");
		}
	});
});