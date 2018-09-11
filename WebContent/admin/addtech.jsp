<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
<head>
<script language="JavaScript">
	function check11() {

		if (document.form1.techtopic.value == "") {
			alert("请输入标题!");
			document.form1.techtopic.focus();
			return false;
		}
		if (document.form1.techcet.value == "") {
			alert("请输入内容!");
			document.form1.techcet.focus();
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

					<form action="${pageContext.request.contextPath}/addTech.do" method="post"
						name="form1" onSubmit="return check11()">


						<table id="table2" class="line_table"
							style="width: 100%; margin: 0; padding: 0" cellSpacing="0"
							cellPadding="0">

							<tr>
								<td class="line_table" align="right" width="10%"><span
									class="left_bt2">信息标题：</span></td>
								<td class="line_table" width="90%"><input type="text"
									name="techtopic" size="45" value=""></td>
							</tr>
							<tr>
								<td class="line_table" align="right" width="10%"><span
									class="left_bt2">信息内容：</span></td>
								<td class="line_table" width="90%"><textarea rows="14"
										name="techcet" cols="105"></textarea></td>
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
