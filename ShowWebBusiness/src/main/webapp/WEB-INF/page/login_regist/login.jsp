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

<title>����Ա�û���½ע��</title>
</head>
<body>
	<div id='login_div'>
		<table>
			<thead>
				<tr>
					<td  colspan='2'>��ӭ��½������������̨����ϵͳ</td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><b>�û���:</b></td>
					<td><input type='text' id='username' class='username' placeholder='�û���/�ֻ���/����'/></td>
				</tr>
				<tr>
					<td><b>����:</b></td>
					<td><input type="password" id='password' class='password'/></td>
				</tr>
			</tbody>
		</table>
	</div>
</body>
</html>