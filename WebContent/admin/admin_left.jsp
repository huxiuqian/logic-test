<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<style>
body {
	font:12px Arial, Helvetica, sans-serif;
	color: #000;
	background-color: #EEF2FB;
	margin: 0px;
}
#container {
	width: 182px;
}
H1 {
	font-size: 12px;
	margin: 0px;
	width: 182px;
	cursor: pointer;
	height: 30px;
	line-height: 20px;	
}
H1 a {
	display: block;
	width: 182px;
	color: #000;
	height: 30px;
	text-decoration: none;
	moz-outline-style: none;
	line-height: 30px;
	text-align: center;
	margin: 0px;
	padding: 0px;
}
.content{
	width: 182px;
	
}
.MM ul {
	list-style-type: none;
	margin: 0px;
	padding: 0px;
	display: block;
}
.MM li {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	line-height: 26px;
	color: #333333;
	list-style-type: none;
	display: block;
	text-decoration: none;
	height: 26px;
	width: 182px;
	padding-left: 0px;
}
.MM {
	width: 182px;
	margin: 0px;
	padding: 0px;
	left: 0px;
	top: 0px;
	right: 0px;
	bottom: 0px;
	clip: rect(0px,0px,0px,0px);
}
.MM a:link {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	line-height: 26px;
	color: #333333;
	height: 26px;
	width: 182px;
	display: block;
	text-align: center;
	margin: 0px;
	padding: 0px;
	overflow: hidden;
	text-decoration: none;
}
.MM a:visited {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	line-height: 26px;
	color: #333333;
	display: block;
	text-align: center;
	margin: 0px;
	padding: 0px;
	height: 26px;
	width: 182px;
	text-decoration: none;
}
.MM a:active {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	line-height: 26px;
	color: #333333;
	height: 26px;
	width: 182px;
	display: block;
	text-align: center;
	margin: 0px;
	padding: 0px;
	overflow: hidden;
	text-decoration: none;
}
.MM a:hover {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	line-height: 26px;
	font-weight: bold;
	color: #006600;
	text-align: center;
	display: block;
	margin: 0px;
	padding: 0px;
	height: 26px;
	width: 182px;
	text-decoration: none;
}
</style>
</head>

<body>


<table width="100%" height="280" border="0" cellpadding="0" cellspacing="0" bgcolor="#EEF2FB">
  <tr>
    <td width="182" valign="top"><div id="container">
      <h1 class="type"><a href="javascript:void(0)">帖子管理</a></h1>
      <div class="content">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
        </table>
        <ul class="MM">
        <li><a href="${pageContext.request.contextPath}/talkMag.do" target="main">问题讨论帖子管理</a></li>
        <li><a href="${pageContext.request.contextPath}/chatMag.do" target="main">聊天灌水帖子管理</a></li>
        <li><a href="${pageContext.request.contextPath}/jobMag.do" target="main">求职招聘帖子管理</a></li>
        </ul>
      </div>
      <h1 class="type"><a href="javascript:void(0)">测试题库管理</a></h1>
      <div class="content">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
        </table>
        <ul class="MM">
            <li><a href="../admin/addchoice.jsp" target="main">添加选择题</a></li>
            <li><a href="../admin/addquestion.jsp" target="main">添加问答题</a></li>
            <li><a href="${pageContext.request.contextPath}/choiceMag.do" target="main">选择题管理</a></li>
            <li><a href="${pageContext.request.contextPath}/queMag.do" target="main">问答题管理</a></li>
        </ul>
      </div>
      <h1 class="type"><a href="javascript:void(0)">技术前沿信息管理</a></h1>
      <div class="content">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
        </table>
        <ul class="MM">
		   <li><a href="../admin/addtech.jsp" target="main">添加新信息</a></li>
            <li><a href="${pageContext.request.contextPath}/techMag.do" target="main">技术前沿信息列表</a></li>
        </ul>
      </div>
      <h1 class="type"><a href="javascript:void(0)">用户管理</a></h1>
      <div class="content">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
        </table>
        <ul class="MM">
          <li><a href="${pageContext.request.contextPath}/userMag.do" target="main">用户信息列表</a></li>
        </ul>
      </div>
    </div>

    <h1 class="type"><a href="../admin/admin_update.jsp" target="main">管理员信息修改</a></h1>
    <h1 class="type"><a href="../admin/index.jsp" target="_top">注销退出</a></h1>
      </td>
  </tr>
</table>
</body>
</html>
