<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
<head>
<script language="JavaScript">
	function check11() {

		if (document.form1.ccet.value == "") {
			alert("请输入题目!");
			document.form1.ccet.focus();
			return false;
		}
		if (document.form1.a.value == "") {
			alert("请输入选项A!");
			document.form1.a.focus();
			return false;
		}
		if (document.form1.b.value == "") {
			alert("请输入选项B!");
			document.form1.b.focus();
			return false;
		}
		if (document.form1.c.value == "") {
			alert("请输入选项C!");
			document.form1.c.focus();
			return false;
		}
		if (document.form1.d.value == "") {
			alert("请输入选项D!");
			document.form1.d.focus();
			return false;
		}
		if (document.form1.correct.value == "") {
			alert("请输入正确选项!");
			document.form1.correct.focus();
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

					<form action="${pageContext.request.contextPath}/updateChoice/${choice.cid}.do" method="post"
						name="form1" onSubmit="return check11()">


						<table id="table2" class="line_table"
							style="width: 100%; margin: 0; padding: 0" cellSpacing="0"
							cellPadding="0">

							<tr>
								<td class="line_table" align="right" width="10%"><span
									class="left_bt2">选择题题目：</span></td>
								<td class="line_table" width="90%"><input type="text"
									name="ccet" size="45" value="${choice.ccet}"></td>
							</tr>
							<tr>
								<td class="line_table" align="right" width="10%"><span
									class="left_bt2">选项A：</span></td>
								<td class="line_table" width="90%"><input type="text"
									name="a" size="45" value="${choice.a}"></td>
							</tr>
							<tr>
								<td class="line_table" align="right" width="10%"><span
									class="left_bt2">选项B：</span></td>
								<td class="line_table" width="90%"><input type="text"
									name="b" size="45" value="${choice.b}"></td>
							</tr>
							<tr>
								<td class="line_table" align="right" width="10%"><span
									class="left_bt2">选项C：</span></td>
								<td class="line_table" width="90%"><input type="text"
									name="c" size="45" value="${choice.c}"></td>
							</tr>
							<tr>
								<td class="line_table" align="right" width="10%"><span
									class="left_bt2">选项D：</span></td>
								<td class="line_table" width="90%"><input type="text"
									name="d" size="45" value="${choice.d}"></td>
							</tr>
							<tr>
								<td class="line_table" align="right" width="10%"><span
									class="left_bt2">正确选项：</span></td>
								<td class="line_table" width="90%"><input type="text"
									name="correct" size="45" value="${choice.correct}"></td>
							</tr>
							<tr>
								<td class="line_table" height="25" align="center" colspan="2">
									<input type="submit" value="添加"/>
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