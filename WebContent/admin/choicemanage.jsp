<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<link href="images/skin.css" rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #EEF2FB;
}
-->
td {
      width:143px;
      word-wrap:break-word;
}

</style>
</head>
<script type="text/javascript">
function goPage(pno,psize){
    var itable = document.getElementById("table3");
    var num = itable.rows.length;//表格所有行数(所有记录数)
    console.log(num);
    var totalPage = 0;//总页数
    var pageSize = psize;//每页显示行数
    //总共分几页 
    if(num / pageSize > parseInt(num / pageSize)){   
            totalPage=parseInt(num/pageSize)+1;   
       }else{   
           totalPage=parseInt(num/pageSize);   
       }   
    var currentPage = pno;//当前页数
    var startRow = (currentPage - 1) * pageSize+1;//开始显示的行  31 
       var endRow = currentPage * pageSize;//结束显示的行   40
       endRow = (endRow > num)? num : endRow;    40
       console.log(endRow);
       //遍历显示数据实现分页
    for(var i=1;i<(num+1);i++){    
        var irow = itable.rows[i-1];
        if(i>=startRow && i<=endRow){
            irow.style.display = "block";    
        }else{
            irow.style.display = "none";
        }
    }
    var pageEnd = document.getElementById("pageEnd");
    var num1 = num;
    var tempStr = "共"+num1+"条记录 分"+totalPage+"页 当前第"+currentPage+"页";
    if(currentPage>1){
        tempStr += "<a href=\"#\" onClick=\"goPage("+(1)+","+psize+")\">&nbsp;首页&nbsp;</a>";
        tempStr += "<a href=\"#\" onClick=\"goPage("+(currentPage-1)+","+psize+")\">&nbsp;<上一页&nbsp;</a>"
    }else{
        tempStr += "&nbsp;首页&nbsp;";
        tempStr += "&nbsp;<上一页&nbsp;";    
    }

    if(currentPage<totalPage){
        tempStr += "<a href=\"#\" onClick=\"goPage("+(currentPage+1)+","+psize+")\">&nbsp;下一页>&nbsp;</a>";
        tempStr += "<a href=\"#\" onClick=\"goPage("+(totalPage)+","+psize+")\">&nbsp;尾页&nbsp;</a>";
    }else{
        tempStr += "&nbsp;下一页>&nbsp;";
        tempStr += "&nbsp;尾页&nbsp;";    
    }

    document.getElementById("barcon").innerHTML = tempStr;
    
}
</script>
<body  style='background: transparent' onLoad="goPage(1,5);">

	<table width="100%" height="1" border="1" cellpadding="0"
		cellspacing="0">
		<tr>
			<td valign="top" bgcolor="#F7F8F9">
				<div align="center">
					<table id="table2" class="line_table"
						style="width: 100%; margin: 0; padding: 0; table-layout: fixed" border="1" cellSpacing="0"
						cellPadding="0">
						<tbody style="margin: 0; padding: 0">
							<tr>
								<td class="line_table" align="center" colspan="8" height="20"><span
									class="left_bt2">选择题列表</span></td>
							</tr>
							<tr>
								<td class="line_table" align="center"><span
									class="left_bt2">选择题题目</span></td>
								<td class="line_table" align="center"><span
									class="left_bt2">选项A</span></td>
								<td class="line_table" align="center"><span
									class="left_bt2">选项B</span></td>
								<td class="line_table" align="center"><span
									class="left_bt2">选项C</span></td>
								<td class="line_table" align="center"><span
									class="left_bt2">选项D</span></td>
								<td class="line_table" align="center"><span
									class="left_bt2">正确选项</span></td>
								<td class="line_table" align="center"><span
									class="left_bt2">操作1</span></td>
								<td class="line_table" align="center"><span
									class="left_bt2">操作2</span></td>
							</tr>
							</table>
							<table id="table3" class="line_table"
									style="width: 100%; margin: 0; padding: 0; table-layout: fixed" border="1" cellSpacing="0"
									cellPadding="0">
    					<c:forEach items="${choice}" var="choice">
							<tr>
								<td align="center">${choice.ccet}</td>
								<td align="center">${choice.a}</td>
								<td align="center">${choice.b}</td>
								<td align="center">${choice.c}</td>
								<td align="center">${choice.d}</td>
								<td align="center">${choice.correct}</td>
								<td align="center"><a href="${pageContext.request.contextPath}/getChoice/${choice.cid}.do">修改</a></td>
								<td align="center"><a href="${pageContext.request.contextPath}/delChoice/${choice.cid}.do">删除</a></td>
							</tr>
						</c:forEach>
								<!-- 
							<tr>
								<td class="line_table" align="center" colspan="5" height="20">
								 <span class="left_bt2">第1页
										&nbsp;&nbsp;共1页
								</span>&nbsp;&nbsp; 
								    <a href="#">[首页]</a>
								    <a href="#">[尾页]</a>&nbsp;&nbsp; 
								    <a href="#%>">[上一页]</a>
									<a href="#">[下一页]</a>
								
									<label>第${page.currentPage}/${page.totalPage}页 共${page.totalRows}条</label> 
  										<a href="init.do?currentPage=0">首页</a> 
   										<a href="init.do?currentPage=${page.currentPage-1}" onclick="return checkFirst()">上一页</a> 
   										<a href="init.do?currentPage=${page.currentPage+1}" onclick="return checkNext()">下一页</a> 
   										<a href="init.do?currentPage=${page.totalPage}">尾页</a> 跳转到:
   										<input type="text" style="width:30px" id="turnPage" />页 
   										<input type="button" onclick="startTurn()" value="跳转" /> 
   										
								</td>
							</tr>-->
					</table>
					<table width="60%" align="right">
       					 <tr><td><div id="barcon" name="barcon"></div></td></tr>
    				</table>
				</div>
			</td>
		</tr>
	</table>
</body>
</html>
