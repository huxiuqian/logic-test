<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html lang="en">
<head>
  <script src="${pageContext.request.contextPath}/web/js/jquery.min.js"></script>
	<meta http-equiv="accept-charset" charset="utf-8">
  <title>考试结果</title>
 
</head>
<body>
<h2>考试结束！</h2>
<a href="${pageContext.request.contextPath}/showChoice.do" class="button">继续测试</a>
<hr/>
<h4>您的成绩为:</h4>
<h1>${score}分</h1>
<hr/>
		1.&nbsp;&nbsp;${c1.ccet}<br>
		A.&nbsp;${c1.a}	<br>
		B.&nbsp;${c1.b}	<br>
		C.&nbsp;${c1.c}	<br>
		D.&nbsp;${c1.d}	<br>
		正确答案为：&nbsp;&nbsp;&nbsp;${c1.correct}<br>	
		2.&nbsp;&nbsp;${c2.ccet}<br>
		A.&nbsp;${c2.a}	<br>
		B.&nbsp;${c2.b}	<br>
		C.&nbsp;${c2.c}	<br>
		D.&nbsp;${c2.d}	<br>
		正确答案为：&nbsp;&nbsp;&nbsp;${c2.correct}<br>	
		3.&nbsp;&nbsp;${c3.ccet}<br>
		A.&nbsp;${c3.a}	<br>
		B.&nbsp;${c3.b}	<br>
		C.&nbsp;${c3.c}	<br>
		D.&nbsp;${c3.d}	<br>
		正确答案为：&nbsp;&nbsp;&nbsp;${c3.correct}<br>	
		4.&nbsp;&nbsp;${c4.ccet}<br>
		A.&nbsp;${c4.a}	<br>
		B.&nbsp;${c4.b}	<br>
		C.&nbsp;${c4.c}	<br>
		D.&nbsp;${c4.d}	<br>
		正确答案为：&nbsp;&nbsp;&nbsp;${c4.correct}<br>	
		5.&nbsp;&nbsp;${c5.ccet}<br>
		A.&nbsp;${c5.a}	<br>
		B.&nbsp;${c5.b}	<br>
		C.&nbsp;${c5.c}	<br>
		D.&nbsp;${c5.d}	<br>
		正确答案为：&nbsp;&nbsp;&nbsp;${c5.correct}<br>	
		
</body>
</html>