
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

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
</style>

<script language="JavaScript">
	function check11() {

		if (document.form1.aname.value == "") {
			alert("请输入用户名!");
			document.form1.aname.focus();
			return false;
		}
		if (document.form1.apwd.value == "") {
			alert("请输入密码!");
			document.form1.apwd.focus();
			return false;
		}
		if (document.form1.arealName.value == "") {
			alert("请输入真实姓名!");
			document.form1.arealName.focus();
			return false;
		}
		if (document.form1.atel.value == "") {
			alert("请输入联系电话!");
			document.form1.atel.focus();
			return false;
		}
		if (document.form1.aemail.value == "") {
			alert("请输入电子邮箱!");
			document.form1.aemail.focus();
			return false;
		}
		
	}
</script>
</head>

<body>
	<table width="100%" height="1" border="0" cellpadding="0"
		cellspacing="0">
		<tr>
			<td valign="top" bgcolor="#F7F8F9">


				<div align="center">

					<form name="form1" action="${pageContext.request.contextPath}/updateAdmin.do"
						method="post" onSubmit="return check11()">
						<table id="table2" class="line_table"
							style="width: 100%; margin: 0; padding: 0" cellSpacing="0"
							cellPadding="0">
							<tbody style="margin: 0; padding: 0">
								<tr>
									<td class="line_table" align="center" colspan="8" height="20">
										<span class="left_bt2">更改管理员信息</span>
									</td>
								</tr>

								<tr>
									<td class="line_table" align="right" width="45%"><span
										class="left_bt2">管理员账号</span></td>
									<td class="line_table" align="left" width="55%"><input
										type="text" name="aname" size="20" value="${admin.aname}"></td>
								</tr>
								<tr>
									<td class="line_table" align="right" width="45%"><span
										class="left_bt2">管理员密码</span></td>
									<td class="line_table" align="left" width="55%"><input
										type="password" name="apwd" size="20" value="${admin.apwd}">
										<input type="hidden" name="id" value="1" />
									</td>
								</tr>
								<tr>
									<td class="line_table" align="right" width="45%"><span
										class="left_bt2">管理员姓名</span></td>
									<td class="line_table" align="left" width="55%"><input
										type="text" name="arealName" size="20" value="${admin.arealName}">
										<input type="hidden" name="id" value="1" />
									</td>
								</tr>
								<tr>
									<td class="line_table" align="right" width="45%"><span
										class="left_bt2">管理员电话</span></td>
									<td class="line_table" align="left" width="55%"><input
										type="text" name="atel" size="20" value="${admin.atel}">
										<input type="hidden" name="id" value="1" />
									</td>
								</tr>
								<tr>
									<td class="line_table" align="right" width="45%"><span
										class="left_bt2">管理员邮箱</span></td>
									<td class="line_table" align="left" width="55%"><input
										type="text" name="aemail" size="20" value="${admin.aemail}">
										<input type="hidden" name="id" value="1" />
									</td>
								</tr>
								<tr>
									<td class="line_table" align="center" colspan="8" height="20">
										<input type="submit" value="修改" />
									</td>
								</tr>
							</tbody>
						</table>
					</form>
				</div>


			</td>


		</tr>
	</table>

</body>
</html>
