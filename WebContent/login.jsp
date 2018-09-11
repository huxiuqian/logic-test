<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title>逻辑思维能力测试网-用户登录</title>  
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/pintuer.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/admin.css">
    <script src="${pageContext.request.contextPath}/js/jquery.js"></script>
    <script src="${pageContext.request.contextPath}/js/pintuer.js"></script>  
    <style type="text/css">
    	.button111 {
			border: none;
			color: block;
		    padding: 15px 32px;
		    text-align: center;
		    text-decoration: none;
		    display: inline-block;
		    font-size: 16px;
		    margin: 4px 2px;
		    cursor: pointer;
		}
		</style>
 <script type="text/javascript">
   $(function(){
      if($("#msg").val()!=""){
        alert($("#msg").val());
      } 
   });
   
</script>   

</head>
<body>
<input type="hidden" id="msg" value="${msg}"/>
<div class="bg"> 
	<div style="text-align:right">
        <a href="${pageContext.request.contextPath}/admin/index.jsp" class="button111">点击进入后台管理系统</a>
    </div>
</div>
<div class="container">
    <div class="line bouncein">
        <div class="xs6 xm4 xs3-move xm4-move">
            <div style="height:150px;"></div>
            <div class="media media-y margin-big-bottom">           
            </div>         
            <form action="${pageContext.request.contextPath}/login.do" method="post">
            <div class="panel loginbox">
                <div class="text-center margin-big padding-big-top"><h1>逻辑思维能力测试网</h1></div>
                <div class="panel-body" style="padding:30px; padding-bottom:10px; padding-top:10px;">
                    <div class="form-group">
                        <div class="field field-icon-right">
                            <input type="text" class="input input-big" name="userName" placeholder="登录账号" data-validate="required:请填写账号" />
                            <span class="icon icon-user margin-small"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="field field-icon-right">
                            <input type="password" class="input input-big" name="pwd" placeholder="登录密码" data-validate="required:请填写密码" />
                            <span class="icon icon-key margin-small"></span>
                        </div>
                    </div>           		
                </div>
                <li style="list-style-type: none;line-height:30px; background:url(images/cateitems.gif) left no-repeat;padding-left:20px"> 如果您还没有注册会员，<a href="./web/register.jsp" target="_self"><font color="#FF6600">点这里注册新会员</font></a></li>
                  <li style="list-style-type: none;line-height:30px; background:url(images/cateitems.gif) left no-repeat;padding-left:20px"> 如果您忘记了密码， <a href="./web/forgetpwd.jsp" ><font color="#99CC00">点这里重设一个密码</font></a></li>
                <div style="padding:30px;"><input type="submit" class="button button-block bg-main text-big input-big" value="登录"></div>
             <!--     
             	<div style="padding:30px;"><input type="button" class="button button-block bg-main text-big input-big" value="注册"></div>
             -->
            </div>
            </form>    
        </div>
    </div>
</div>
	<%
 if ((String)request.getAttribute("str") == "true") {
 %>
 <script>
 alert("注册成功！");
 </script>
 <%
 }
 %>
</body>
</html>