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
	<script src="${pageContext.request.contextPath}/web/js/uploadPreview.js"></script>
	<script type="text/javascript" src="js/addUserAjax.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.8.2.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/web/js/userPwd.js"></script>
	
<style>
  #imgShow_WU_FILE_0{
    position:absolute;
    top:-25px;
    right:580px;
  }
</style>
	

</head>
<body>
<div class="panel admin-panel">
  <div class="panel-head" ><strong><span class="icon-pencil-square-o"></span>用户添加</strong></div>
  <div class="body-content">
   <form method="post" id="frm" class="form-x" action="${pageContext.request.contextPath}/addUser.do" target="_parent" >
      <div class="form-group">
        <div class="label">
          <label>用户账号：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" id="userName" name="userName" data-validate="required:请输入账号" />
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>用户密码：</label>
          </div>
          <div class="field">
          <input type="password" class="input w50" name="pwd" data-validate="required:请输入密码" />
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>真实姓名：</label>
          </div>
          <div class="field">
          <input type="text" class="input w50" name="realName" data-validate="required:请输入真实姓名" />
          <div class="tips"></div>
        </div>
       </div>  
		<div class="form-group">
        <div class="label">
          <label>联系电话：</label>
          </div>
          <div class="field">
          <input type="text" class="input w50" name="tel" data-validate="required:请输入联系电话" />
          <div class="tips"></div>
        </div>
       </div>  
       
       <div class="form-group">
        <div class="label">
          <label>电子邮箱：</label>
          </div>
          <div class="field">
          <input type="text" class="input w50" name="email" data-validate="required:请输入电子邮箱" />
          <div class="tips"></div>
        </div>
       </div>  
    
      <div class="form-group">
        <div class="label">
          <label></label>
        </div>
        <div class="field">
          <button class="button bg-main icon-check-square-o" type="submit"> 提交</button>
          <button class="button bg-main icon-check-square-o" onclick="window.location.href='../login.jsp'"> 返回</button>
        </div>
      </div>
    </form>
    
  </div>
  </div>
 <%
 if ((String)request.getAttribute("str") == "false") {
 %>
 <script>
 alert("注册失败！");
 </script>
 <%
 }
 %>
</body>
</html>