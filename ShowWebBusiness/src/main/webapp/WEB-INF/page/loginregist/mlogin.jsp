<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML>
<html>
<head>
<base href="<%=basePath%>">

<title>管理员用户登陆注册</title>
<meta charset="utf-8" />
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="description" content="管理员用户登陆注册">
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>css/login_regist/login.css">
<%-- <script type="text/javascript" src="<%=basePath %>js/login_regist/login.js"></script>  
 --%>
<script type="text/javascript" src="<%=basePath%>js/jquery-1.8.2.min.js"></script>
<script type="text/javascript">
	function submitC() {
		if ($("#username").val() == "") {
			$("#usernameerror").text("用户名为空");
			return false;
		}
		if ($("#password").val() == "") {
			$("#passworderror").text("密码为空");
			return false;
		}
		if ($('#inputcheckcode').val() == '') {
			$('#checkcodeerror').text("验证码不正确，请重新输入");
			$("#checkcode").val(parseInt(Math.random() * 8899 + 1000));
			return false;
		}
	}

	$(function() {
		$("#checkcode").val(parseInt(Math.random() * 8899 + 1000));
	});
	function changecheckcode() {
		$("#checkcode").val(parseInt(Math.random() * 8899 + 1000));
	}
	function cleanvl(){
		 var cc=parseInt(Math.random() * 8899 + 1000);
		if($("#usernameerror").text() !=""){
			$("#usernameerror").text("");
			$("#checkcode").val(cc);
		}    
		if($("#passworderror").text() !=""){
			$("#passworderror").text("");
			$("#checkcode").val(cc);
		}
		if($("#checkcodeerror").text() !=""){
			$("#checkcodeerror").text("");
			$("#checkcode").val(cc);
		} 
	}
</script>
</head>
<body>
	<div id='login_div'>
		<form name='loginform' id="mloginform" method="post"
			action='<%=basePath%>logicAction/mloginMethon.swb'>
			<table class="login_tab" id="login_tab">
				<thead>
					<tr>
						<td colspan='4'>欢迎登陆休闲旅游网后台管理系统</td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><b>用户名:</b></td>
						<td><input type='text' id='username' name='username' placeholder='用户名/手机号/邮箱'  onfocus="cleanvl()" /><span id='mxing'> *</span>
						&nbsp;<span id='usernameerror'></span></td>
					</tr>
					<tr>
						<td><b>密码:</b></td>
						<td><input type="password" id='password' name='password'  onFocus="cleanvl()"  /><span id='mxing'> *</span>
						&nbsp;<span id='passworderror'></span></td>
					</tr>
					<tr>
						<td><b>验证码:</b></td>
						<td><input type='text' id='inputcheckcode'  onfocus="cleanvl()"	/><span id='mxing'> *</span>
						<input type="button" id="checkcode" class="checkcode" value="" onClick="changecheckcode()" />
						&nbsp;<span id='checkcodeerror'></span></td>
					</tr>
					<tr>
						<td></td>
						<td>&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" id="submitid" class="submitc" value="登陆" onClick="return submitC();" />
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type='reset' value='重置' /></td>
					</tr>
				</tbody>
				</table>
		</form>
	</div>
</body>
</html>