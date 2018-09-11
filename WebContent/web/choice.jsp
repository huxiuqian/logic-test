<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<html>
<head>
    <script src="${pageContext.request.contextPath}/web/js/jquery.min.js"></script>
	<meta http-equiv="accept-charset" charset="utf-8">
  	<title>能力训练</title>
<script type="text/javascript">
$(function(){
	  $(".check").click(function(){
	    $(".text").show();
	  })
	})
</script>
</head>
<body>
<h3 style="float: left">逻辑思维能力能力训练</h3>
<div id="time" style="color:red;float: right;margin: 12px 20px 0 0;padding: 0 0 0 0;font-size: xx-large"></div>
<br/><br/><br/>
<hr/>

<form id="myform" name="myform" method="post" >  
	
		能力训练：&nbsp;&nbsp;${choice.ccet}<br>		
		<input type="radio" name="radio" value="A">A.&nbsp;${choice.a}<br>
		<input type="radio" name="radio" value="B">B.&nbsp;${choice.b}<br>
		<input type="radio" name="radio" value="C">C.&nbsp;${choice.c}<br>
		<input type="radio" name="radio" value="D">D.&nbsp;${choice.d}<br>
		<input type="button" class="check" value="答案"/>
		<input type="text" class="text" style="display:none;" value="${choice.correct}"/><br>
		<a href="${pageContext.request.contextPath}/showC.do"  name="xunlian">继续训练</a>
</form>
<hr/>

</body>
<script type="text/javascript">
$(function() {
    $("#submit").click(function() {
        if (!$(':radio[name=radio]:checked').length) { 
        alert("题目未选择，请重新选择！");
        return false;
        } 
    })
})
</script>
</html>