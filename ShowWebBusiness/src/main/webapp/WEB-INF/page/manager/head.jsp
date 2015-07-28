<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%><%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
       <title>管理员用户管理导航页</title>    
    <meta charset="utf-8"/>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="description" content="管理员用户登陆注册">
<script type="text/javascript" src="<%=basePath %>js/jquery-1.8.2.min.js"></script>
<script type="text/javascript">

</script>
  </head>
<body>
	<div id='head_div'>
		<table>
			<tr>
				<td colspan="8">&nbsp;</td>
			</tr>
			<tr>
				<td><a href='navigation/navigationmb.swb?mainid=mb' >首页</a> |</td>
				<td><a href='' >景点管理</a> |</td>
				<td><a href='' >网站状态管理 </a> |</td>
				<td><a href='' >用户管理 </a> |</td>
				<td><a href='' >快速导航 </a> |</td>
				<td><a href='' >娱乐</a> |</td>
				<td><a href='' >员工关怀 </a>|</td>
				<td><a href='' >操作帮助</a></td>
			</tr>
		</table>
	</div>
</body>
</html>