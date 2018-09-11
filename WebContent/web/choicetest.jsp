<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<html>
<head>
    <script src="${pageContext.request.contextPath}/web/js/jquery.min.js"></script>
	<meta http-equiv="accept-charset" charset="utf-8">
  	<title>考试系统</title>

</head>
<body>
<h3 style="float: left">逻辑思维能力随机测试</h3>
<div id="time" style="color:red;float: right;margin: 12px 20px 0 0;padding: 0 0 0 0;font-size: xx-large"></div>
<br/><br/><br/>
<hr/>
<h4>单选题（每题20分，满分100分）</h4>
<form id="myform" name="myform" method="post" action="${pageContext.request.contextPath}/score.do">  
	
		1.&nbsp;&nbsp;${choice1.ccet}
		<input type="hidden" name="id1" style="width:20px" value="${choice1.cid}"/><br>		
		<input type="radio" name="radio1" value="A">A.&nbsp;${choice1.a}<br>
		<input type="radio" name="radio1" value="B">B.&nbsp;${choice1.b}<br>
		<input type="radio" name="radio1" value="C">C.&nbsp;${choice1.c}<br>
		<input type="radio" name="radio1" value="D">D.&nbsp;${choice1.d}<br>
		2.&nbsp;&nbsp;${choice2.ccet}
		<input type="hidden" name="id2" style="width:20px" value="${choice2.cid}"/><br>
		<input type="radio" name="radio2" value="A">A.&nbsp;${choice2.a}<br>
		<input type="radio" name="radio2" value="B">B.&nbsp;${choice2.b}<br>
		<input type="radio" name="radio2" value="C">C.&nbsp;${choice2.c}<br>
		<input type="radio" name="radio2" value="D">D.&nbsp;${choice2.d}<br>
		3.&nbsp;&nbsp;${choice3.ccet}
		<input type="hidden" name="id3" style="width:20px" value="${choice3.cid}"/><br>
		<input type="radio" name="radio3" value="A">A.&nbsp;${choice3.a}<br>
		<input type="radio" name="radio3" value="B">B.&nbsp;${choice3.b}<br>
		<input type="radio" name="radio3" value="C">C.&nbsp;${choice3.c}<br>
		<input type="radio" name="radio4" value="D">D.&nbsp;${choice3.d}<br>
		4.&nbsp;&nbsp;${choice4.ccet}
		<input type="hidden" name="id4" style="width:20px" value="${choice4.cid}"/><br>
		<input type="radio" name="radio4" value="A">A.&nbsp;${choice4.a}<br>
		<input type="radio" name="radio4" value="B">B.&nbsp;${choice4.b}<br>
		<input type="radio" name="radio4" value="C">C.&nbsp;${choice4.c}<br>
		<input type="radio" name="radio4" value="D">D.&nbsp;${choice4.d}<br>
		5.&nbsp;&nbsp;${choice5.ccet}
		<input type="hidden" name="id5" style="width:20px" value="${choice5.cid}"/><br>
		<input type="radio" name="radio5" value="A">A.&nbsp;${choice5.a}<br>
		<input type="radio" name="radio5" value="B">B.&nbsp;${choice5.b}<br>
		<input type="radio" name="radio5" value="C">C.&nbsp;${choice5.c}<br>
		<input type="radio" name="radio5" value="D">D.&nbsp;${choice5.d}<br>
		<input type="submit" id="submit" value="提交试卷">
</form>
<hr/>

</body>
<script type="text/javascript">
$(function() {
    $("#submit").click(function() {
        if (!$(':radio[name=radio1]:checked').length) { 
        alert("第一题未选择，请重新选择！");
        return false;
        } else if (!$(':radio[name=radio2]:checked').length) { 
            alert("第二题未选择，请重新选择！");
            return false;
        }else if (!$(':radio[name=radio3]:checked').length) { 
            alert("第三题未选择，请重新选择！");
            return false;
        }else if (!$(':radio[name=radio4]:checked').length) { 
            alert("第四题未选择，请重新选择！");
            return false;
        }else if (!$(':radio[name=radio5]:checked').length) { 
            alert("第五题未选择，请重新选择！");
            return false;
        }
    })
})
</script>
</html>