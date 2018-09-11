<%@ page language="java" import="java.util.*,java.text.*" pageEncoding="utf-8"%>

<html>
<head>
<title>逻辑思维能力测试网-管理员登录</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #1D3647;
}
-->
	.button111 {
			background-color: #E5E5E5;
			color: white;
		    padding: 14px 32px;
		    text-align: center;
		
		}
</style>

<script language="JavaScript">
	function login11() {

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
	}
</script>

<link href="images/skin.css" rel="stylesheet" type="text/css">
</head>

<body>
	<table width="100%" height="166" border="0" cellpadding="0"
		cellspacing="0">
		<tr>
			<td height="42" valign="top">
			<table width="100%" height="42" border="0" cellpadding="0" cellspacing="0" class="login_top_bg">
					<tr>
						<td width="1%" height="21">&nbsp;</td>
						<td height="42">&nbsp;</td>
						<td width="20%">
						<a href="${pageContext.request.contextPath}/login.jsp" class="button111">点击进入逻辑思维能力测试网</a>
						</td>
					</tr>
				</table></td>
		</tr>		
		<tr>
			<td valign="top">
			<table width="100%" height="532" border="0" cellpadding="0" cellspacing="0" class="login_bg">
					<tr>
						<td width="25%">&nbsp;</td>
						<td width="50%" valign="bottom">        					
						<table width="100%"
								height="59" border="0" align="center" cellpadding="0"
								cellspacing="0">
								<tr>
									<td width="4%">&nbsp;</td>
									<td width="96%" height="38"><span class="login_txt_bt">&nbsp;&nbsp;逻辑思维能力测试题库后台管理系统</span></td>
								</tr>
								<tr>
									<td>&nbsp;</td>
									<td height="21"><table cellSpacing="0" cellPadding="0"
											width="100%" border="0" id="table211" height="328">
											<tr>
												<td height="164" colspan="2" align="middle">

													<form name="form1" action="${pageContext.request.contextPath}/loginAdmin.do" method="post">
														<table cellSpacing="0" cellPadding="0" width="100%"
															border="0" height="143" id="table212">
															<tr>
																<td width="4%" height="38" class="top_hui_text"><span
																	class="login_txt">管理员： </span></td>
																<td height="38" colspan="2" class="top_hui_text">
																<input
																	name="aname" class="input" type="text" size="20"/></td>
															</tr>
															<tr>
																<td width="4%" height="35" class="top_hui_text"><span
																	class="login_txt"> 密 码：</span></td>
																<td height="35" colspan="2" class="top_hui_text">
																<input
																	class="input" type="password" size="20" name="apwd"/>
																	<img src="images/luck.gif" width="19" height="18">
																</td>
															</tr>
															<tr>
																<td height="35">&nbsp;</td>
																<td width="5%" height="35"><input type="submit"  value="登 录">
																</td>
																<td width="40%" class="top_hui_text"><input
																	name="cs" type="button" class="button" id="cs"
																	value="重 置" onClick="javascript:window.location.reload();"></td>
															</tr>
														</table>
														<br>
													</form>

												</td>
											</tr>
											<tr>
												<td width="433" height="164" align="right" valign="bottom"><img
													src="images/login-wel.gif" width="242" height="138"></td>
												<td width="57" align="right" valign="bottom">&nbsp;</td>
											</tr>
										</table></td>
								</tr>
							</table></td>
					</tr>
				</table></td>
		</tr>
		<tr>
			<td height="20"><table width="100%" border="0" cellspacing="0"
					cellpadding="0" class="login-buttom-bg">
					<tr>
						<td align="center"><span class="login-buttom-txt">Copyright
								&copy; 2018-2068</span></td>
					</tr>
				</table></td>
		</tr>
	</table>
</body>
</html>
