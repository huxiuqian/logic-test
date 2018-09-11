<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link href="${pageContext.request.contextPath}/web/css/bootstrap.min.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/web/js/jquery-3.2.1.js"></script>
    <script src="${pageContext.request.contextPath}/web/js/bootstrap.min.js"></script>
    <title>问题讨论发帖</title>
</head>
<body>

    <div style="width: 70%;margin:1% 2% 1% 5%;float: left;">
    <div class="panel panel-default" id="main" style="">
        <div class="panel-heading" style="background-color: white">
            <a href="${pageContext.request.contextPath}/showTalk.do">问题讨论</a> › 发布新贴 
        </div>

        <div class="panel-body">
            <form action="${pageContext.request.contextPath}/addTalk.do" method="post" id="replyForm">
                <div class="form-group">
                    <label for="title">标题</label>
                    <input type="text" class="form-control" id="mtopic" name="mtopic" placeholder="请输入标题，不可以为空" required="required">
                </div>
                <div class="form-group">
                    <label for="content">正文</label>
                    <textarea class="form-control" rows="10" id="mcet" name="mcet" placeholder="请输入正文，不可以为空"></textarea>
                </div>
				<br/>
                <input type="submit" class="btn btn-default btn-sm" value="发布新帖">

            </form>
        </div>

    </div>



</div>


    <div class="panel panel-default" id="sidebar2" style="width: 20%;margin:1% 2% 1% 0%;float: right">
        <div class="panel-heading" style="background-color: white;text-align: center">
            发帖提示
        </div>
        <ul class="list-group" style="width: 100%">
            <li class="list-group-item">
                <h5>标题</h5>
                <p>
                    必填项！！！请在标题中描述内容要点。
                </p>
            </li>

            <li class="list-group-item">
                <h5>正文</h5>
                <p>
                    必填项！！！请清楚地表达所要说明的内容。
                </p>
            </li>
        </ul>
    </div>


    <div class="panel panel-default" id="sidebar1" style="width: 20%;margin:1% 2% 1% 0%;float: right">
    <div class="panel-heading" style="background-color: white;text-align: center">
        社区指导原则
    </div>
    <ul class="list-group" style="width: 100%">
        <li class="list-group-item">
            <h5>尊重原创，文明友好</h5>
            <p>
                请不要发布任何盗版下载链接，包括软件、音乐、电影等等。
                保持对陌生人的友善，互相尊重你我他。
            </p>
        </li>
    </ul>
</div>



<script>
    function submitValidate(flag){
        return flag;
    }
    $("#replyForm").submit(function () {
        if($("#title").val()==''){
            alert("请填写标题！");
            return submitValidate(false);
        }else {
            var ifSubmit=confirm("确定发表该帖子吗?");
            if (ifSubmit == true){

            }else {
                return submitValidate(false);
            }
        }
    })
</script>
</body>
</html>