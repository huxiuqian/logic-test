<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-cn">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
	<meta name="renderer" content="webkit">
	<title></title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/web/css/pintuer.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/web/css/admin.css">
	<script src="${pageContext.request.contextPath}/web/js/jquery.js"></script>
	<script src="${pageContext.request.contextPath}/web/js/pintuer.js"></script>

</head>
<body>
<div class="panel admin-panel">
  <div class="panel-head"><strong><span class="icon-key"></span> 忘记用户密码</strong></div>
  <div class="body-content">
    <form method="post" id="frm" class="form-x" action="${pageContext.request.contextPath}/forgetPwd.do" target="_parent" onsubmit="return vaildate();">
      <div class="form-group">
      <div class="label">
        <label for="sitename">用户帐号：</label>
      </div>
      <div class="field">
        <input type="text" class="input w50" id="uname" name="uname" size="50" placeholder="请输入用户账号" data-validate="required:请输入用户账号" />       
      </div>
    </div>      
      <div class="form-group">
      <div class="label">
        <label for="sitename">电子邮箱：</label>
      </div>
      <div class="field">
        <input type="text" class="input w50" id="uemail" name="uemail" size="50" placeholder="请输入电子邮箱" data-validate="required:请输入电子邮箱" />       
      </div>
    </div>         
      <div class="form-group">
        <div class="label">
          <label for="sitename">新密码：</label>
        </div>
        <div class="field">
          <input type="password" class="input w50" name="newpass" size="50" placeholder="请输入新密码" data-validate="required:请输入新密码,length#>=5:新密码不能小于5位" />         
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label for="sitename">确认新密码：</label>
        </div>
        <div class="field">
          <input type="password" class="input w50" name="repass" size="50" placeholder="请再次输入新密码" data-validate="required:请再次输入新密码,repeat#newpass:两次输入的密码不一致" />          
        </div>
      </div>
      
      <div class="form-group">
        <div class="label">
          <label></label>
        </div>
        <div class="field">
          <button class="button bg-main icon-check-square-o" type="submit"> 确认修改</button>   
        </div>
      </div>      
    </form>
  </div>
</div>
<%
 if ((String)request.getAttribute("str") == "false") {
 %>
 <script>
 alert("电子邮件不正确！");
 </script>
 <%
 }
 %>
</body>
</html>