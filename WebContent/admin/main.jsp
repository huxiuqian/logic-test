<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html>
<head>
<title>网上订餐后台- 管理页面</title>
<meta http-equiv=Content-Type content=text/html;charset=gb2312>
</head>
<frameset rows="64,*" frameborder="NO" border="0" framespacing="0">
	<frame src="http://localhost:8080/huxiuqianbs/admin/admin_top.jsp" noresize="noresize" frameborder="0"
		name="topFrame" scrolling="no" marginwidth="0" marginheight="0"
		target="main" />
	<frameset cols="200,*" rows="560,*" id="frame">
		<frame src="http://localhost:8080/huxiuqianbs/admin/admin_left.jsp" name="leftFrame" noresize="noresize"
			marginwidth="0" marginheight="0" frameborder="0" scrolling="no"
			target="main" />
		<frame src="http://localhost:8080/huxiuqianbs/admin/menus.jsp" name="main" marginwidth="0" marginheight="0"
			frameborder="0" scrolling="auto" target="_self" />
	</frameset>
	<noframes>
		<body></body>
	</noframes>
</html>
