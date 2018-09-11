<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title>逻辑思维能力测试网-首页</title>  
    <link rel="stylesheet" href="${pageContext.request.contextPath}/web/css/pintuer.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/web/css/admin.css">
    <script src="${pageContext.request.contextPath}/web/js/jquery.js"></script>
</head>

<body style="background-color:#f2f9fd;">
<div class="header bg-main">
  <div class="logo margin-big-left fadein-top">
    <h1><img src="${pageContext.request.contextPath}/${img}" class="radius-circle rotate-hover" height="50" alt="" />逻辑思维能力测试网</h1>
  </div>
  <div class="head-l"><a class="button button-little bg-green" href="${pageContext.request.contextPath}/web/index.jsp" target="_self"><span class="icon-home"></span> 前台首页</a> &nbsp;&nbsp;<a class="button button-little bg-red" href="${pageContext.request.contextPath}/login.jsp"><span class="icon-power-off"></span> 退出登录</a> </div>
</div>
<div class="leftnav">
  <div class="leftnav-title"><strong><span class="icon-list"></span>菜单列表</strong></div>
  <!-- 
  <h2><span class="icon-pencil-square-o"></span>逻辑思维能力测试</h2>
  <ul style="display:block">
    <li><a href="${pageContext.request.contextPath}/getAllSub.action" target="right"><span class="icon-caret-right"></span>科目管理</a></li>
    <li><a href="${pageContext.request.contextPath}/getAllQuestion.action" target="right"><span class="icon-caret-right"></span>题库管理</a></li>  
    <li><a href="${pageContext.request.contextPath}/showExam.action" target="right"><span class="icon-caret-right"></span>试卷生成</a></li>     
    <li><a href="${pageContext.request.contextPath}/queClass.action" target="right"><span class="icon-caret-right"></span>统计分析</a></li>
  </ul>   
   -->
  <h2><span class="icon-pencil-square-o"></span>能力训练</h2>
  <ul style="display:block">
    <li><a href="${pageContext.request.contextPath}/showC.do" target="right"><span class="icon-caret-right"></span>能力训练</a></li>
    <li><a href="${pageContext.request.contextPath}/showQue.do" target="right"><span class="icon-caret-right"></span>问答详解</a></li>      
  </ul>   
  <h2><span class="icon-pencil-square-o"></span>能力测试</h2>
  <ul style="display:block"> 
    <li><a href="${pageContext.request.contextPath}/showChoice.do" target="right"><span class="icon-caret-right"></span>随机测试</a></li>     
  </ul>
  <h2><span class="icon-pencil-square-o"></span>交流专区</h2>
  <ul style="display:block">
    <li><a href="${pageContext.request.contextPath}/showTalk.do" target="right"><span class="icon-caret-right"></span>问题讨论</a></li>     
    <li><a href="${pageContext.request.contextPath}/showChat.do" target="right"><span class="icon-caret-right"></span>聊天灌水</a></li>
  </ul> 
    <h2><span class="icon-pencil-square-o"></span>求职招聘</h2>
  <ul style="display:block">
    <li><a href="${pageContext.request.contextPath}/showJob.do" target="right"><span class="icon-caret-right"></span>求职招聘</a></li>     
  <!--   <li><a href="${pageContext.request.contextPath}/queClass.action" target="right"><span class="icon-caret-right"></span>个人求职</a></li>  -->
  </ul>    
  <h2><span class="icon-pencil-square-o"></span>技术前沿</h2>
  <ul style="display:block">
    <li><a href="${pageContext.request.contextPath}/showTech.do" target="right"><span class="icon-caret-right"></span>前沿信息</a></li>     
  </ul>      
  <h2><span class="icon-user"></span>个人中心</h2>
  <ul>
    <li><a href="${pageContext.request.contextPath}/web/updatepwd.jsp" target="right"><span class="icon-caret-right"></span>修改密码</a></li>
<!--  <li><a href="${pageContext.request.contextPath}/#" target="right"><span class="icon-caret-right"></span>用户管理</a></li>
      <li><a href="cate.jsp" target="right"><span class="icon-caret-right"></span>分类管理</a></li> -->        
  </ul>  
</div>
<script type="text/javascript">
$(function(){
  $(".leftnav h2").click(function(){
	  $(this).next().slideToggle(200);	
	  $(this).toggleClass("on"); 
  })
  $(".leftnav ul li a").click(function(){
	    $("#a_leader_txt").text($(this).text());
  		$(".leftnav ul li a").removeClass("on");
		$(this).addClass("on");
  })
});
</script>
<ul class="bread">
  <li><a href="${pageContext.request.contextPath}/web/index.jsp"  class="icon-home"> 首页</a></li>
  <li><b>当前用户：</b><span style="color:red;">${user.userName}</php></span>
 <!--  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;切换语言：<a href="##">中文</a> &nbsp;&nbsp;<a href="##">英文</a>  --></li>
</ul>
<div class="admin">
  <iframe scrolling="auto" rameborder="0" src="http://localhost:8080/huxiuqianbs/images/zytp.jpg" name="right" width="100%" height="100%"></iframe>
</div>
<div style="text-align:center;">
<p></p>
</div>

</body>
</html>