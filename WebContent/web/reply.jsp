<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link href="${pageContext.request.contextPath}/web/css/bootstrap.min.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/web/js/jquery-3.2.1.js"></script>
    <script src="${pageContext.request.contextPath}/web/js/bootstrap.min.js"></script>
    <title>帖子</title>
</head>
<body>

<div style="width: 70%;margin:1% 2% 1% 5%;float: left;">
<div class="panel panel-default" id="main" style="">
    <div class="panel-heading" style="background-color: white">
        <div>
            <div class="panel-heading" style="background-color: white">
                <a href="${pageContext.request.contextPath}/showTalk.do">问题讨论</a> › 帖子
            </div>
            <h3> ${message[0].mtopic} </h3><br/>
            <div>
                <a href="#"><span ><strong>${message[0].id}</strong></span></a>&nbsp;&nbsp;
                <small class="text-muted">${message[0].mtime}&nbsp;&nbsp;&nbsp;+08:00</small>&nbsp;&nbsp;
                <small class="text-muted">${(fn:length(reply)+3)*13}次点击</small>
            </div>
        </div>

    </div>

    <ul class="list-group" style="width: 100%">
            <li class="list-group-item">
                ${message[0].mcet}
            </li>
    </ul>
</div>

<c:if test="${!empty reply}">
<div class="panel panel-default" id="main" style="">
    <div class="panel-heading" style="background-color: white">
        <span>
                ${fn:length(reply)} 回复  |  直到 <c:forEach items="${reply}" var="reply" varStatus="status">

<c:if test="${status.last}">
    ${reply.rtime}
    </c:if>
    </c:forEach>
    </span>
    </div>

    <ul class="list-group" style="width: 100%">
        <!-- 遍历评论 -->
        <c:forEach items="${reply}" var="reply">
        <li class="list-group-item">
            <div style="height: 50px">
                
                <div style="width: 89%;float: left">
                    <a href="#"><strong>${reply.realName}</strong></a>&nbsp;&nbsp;
                    <small class="text-muted">${reply.rtime}</small>
                    <br/>
                    <div>
                        <p>${reply.rcet}</p>
                    </div>
                </div>
            </div>
        </li>
        </c:forEach>

    </ul>
</div>
</c:if>


<div class="panel panel-default" id="main" style="">
    <div class="panel-heading" style="background-color: white">
        添加一条新回复
    </div>
    <div class="panel-body">
        <div class="form-group">
            <form action="${pageContext.request.contextPath}/addReply.do" method="post">
                <input type="hidden" name="mid" value="${message[0].mid}">
                <input type="hidden" name="id" value="${user.id}">
                <textarea class="form-control" rows="3" name="rcet" required="required"></textarea><br/>
            <input type="submit" class="btn btn-default btn-sm" value="回复">
            </form>
        </div>

    </div>
</div>

</div>

</body>
</html>