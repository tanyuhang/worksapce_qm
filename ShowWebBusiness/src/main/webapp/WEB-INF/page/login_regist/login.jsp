<%@ page language="java" contentType="text/html; charset=GBK"  pageEncoding="GBK"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<script type="text/javascript" src="<%=basePath %>js/jquery-1.8.2.min.js"></script>

<title>管理员用户登陆注册</title>
</head>
<body>
	<div id='login_div'>
		<table>
			<thead>
				<tr>
					<td  colspan='2'>欢迎登陆休闲旅游网后台管理系统</td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><b>用户名:</b></td>
					<td><input type='text' id='username' class='username' placeholder='用户名/手机号/邮箱'/></td>
				</tr>
				<tr>
					<td><b>密码:</b></td>
					<td><input type="password" id='password' class='password'/></td>
				</tr>
			</tbody>
		</table>
	</div>
</body>
</html>