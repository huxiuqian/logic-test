<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="Content-Type"  content="text/html;charset=utf-8">
    <meta name="keywords" content="社区">
    <title>问题讨论</title>
    <link href="${pageContext.request.contextPath}/web/css/bootstrap.min.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/web/js/jquery-3.2.1.js"></script>
    <script src="${pageContext.request.contextPath}/web/js/bootstrap.min.js"></script>
    <style>
        li {list-style-type:none;}
        html, body {
            height: 100%;
            font-size: 14px;
            color: #525252;
            font-family: NotoSansHans-Regular,AvenirNext-Regular,arial,Hiragino Sans GB,"Microsoft Yahei","Hiragino Sans GB","WenQuanYi Micro Hei",sans-serif;
            background: #f0f2f5;
        }
        .footer {
            background-color: #fff;
            margin-top: 22px;
            margin-bottom: 22px;
            width: 100%;
            padding-top: 22px;
            color: #8A8A8A;
            display: block;
            height: 200px;
            border: 1px ;
            clear:both
        }

        .container {
            margin-right: 5%;
            margin-left: 5%;
            padding-left: 15px;
            padding-right: 15px;
            width: 40%;
            float: left;
        }
        .info {
            margin-right: 5%;
            width: 10%;
            float: left;
        }
        a{
            color: #8A8A8A;
            cursor: pointer;
        }
        .button {
			background-color: #4CAF50;
			border: none;
			color: white;
		    padding: 5px 20px;
		    text-align: center;
		    text-decoration: none;
		    display: inline-block;
		    font-size: 16px;
		    margin: 4px 2px;
		    cursor: pointer;
		    
		}
    </style>
</head>
<body>



<div class="panel panel-default" id="main" >
	<div class="panel-heading" style="background-color: white; text-align:right">
		<form action="${pageContext.request.contextPath}/ssTalk.do" method="post">
		<input type="text" placeholder="请输入搜索关键字" name="topic" class="input" style="width:230px; line-height:17px;display:inline-block" />
        <input type="submit" class="btn btn-default btn-sm" value="搜索">
        <a href="${pageContext.request.contextPath}/web/addtalk.jsp" class="button">我要发贴</a>
        </form>
               
    </div>
	
       
    <div class="panel-heading" style="background-color: white">
        <a style="margin-right: 2%">最新</a>
    </div>

<ul class="list-group" style="width: 100%">
    <c:forEach items="${talk}" var="talk">
    <li class="list-group-item">
        <div style="height: 50px">
            <div style="width: 89%;float: left">
                <a href="${pageContext.request.contextPath}/showReply/${talk.mid}.do">${talk.mtopic}</a><br/>
                <div>
                    <a><span class="label label-default" >${talk.realName}</span></a>&nbsp;&nbsp;&nbsp;
                    <a href="${pageContext.request.contextPath}/showReply/${talk.mid}.do"><span ><strong>${talk.mcet}</strong></span></a>&nbsp;&nbsp;&nbsp;
                    <small class="text-muted">${talk.mtime}</small>
                </div>
            </div>
            <div style="width: 5%;float: right;text-align: center">
                <span class="badge">问题讨论</span>
            </div>
        </div>
    </li>
    </c:forEach>

</ul>

</div>

</body>
</html>