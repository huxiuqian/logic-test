<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
<head>
<script language="JavaScript">
function check11() {

	if (document.form1.qcet.value == "") {
		alert("请输入题目!");
		document.form1.qcet.focus();
		return false;
	}
	if (document.form1.answer.value == "") {
		alert("请输入答案!");
		document.form1.answer.focus();
		return false;
	}
}
</script>

<link href="images/skin.css" rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
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
</style>
</head>

<body>
	<table width="100%" height="1" border="0" cellpadding="0"
		cellspacing="0">
		<tr>
			<td valign="top" bgcolor="#F7F8F9">
				<p>&nbsp;</p>

				<div align="center">

					<form action="${pageContext.request.contextPath}/updateQue/${que.qid}.do" method="post"
						name="form1" onSubmit="return check11()">


						<table id="table2" class="line_table"
							style="width: 100%; margin: 0; padding: 0" cellSpacing="0"
							cellPadding="0">

							<tr>
								<td class="line_table" align="right" width="10%"><span
									class="left_bt2">问答题题目：</span></td>
								<td class="line_table" width="90%"><textarea rows="14"
										name="qcet" cols="105" >${que.qcet}</textarea></td>
							</tr>
							<tr>
								<td class="line_table" align="right" width="10%"><span
									class="left_bt2">问答题答案：</span></td>
								<td class="line_table" width="90%"><textarea rows="14"
										name="answer" cols="105" >${que.answer}</textarea></td>
							</tr>
							<tr>
								<td class="line_table" height="25" align="center" colspan="2">
									<input type="submit" value="修改"/>
								</td>
							</tr>
						</table>
					</form>
				</div>
			</td>

		</tr>
	</table>
</body>
</html>