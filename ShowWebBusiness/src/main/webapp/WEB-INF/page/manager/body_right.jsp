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
    
       <title>管理员用户登陆注册</title>    
    <meta charset="utf-8"/>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="description" content="管理员用户登陆注册">
<link rel="stylesheet" type="text/css"  href="<%=basePath %>css/login_regist/login.css">
<%-- <script type="text/javascript" src="<%=basePath %>js/login_regist/login.js"></script>
 --%><script type="text/javascript" src="<%=basePath %>js/jquery-1.8.2.min.js"></script>
<script type="text/javascript">
function submitC(){
	  if($("#username").val()==null || $("#username").val()==""){
		  alert("用户名为空，请重新输入！");
		  return false;
	  }
	  if($("#password").val()==null || $("#password").val()==""){
		  alert("密码为为空，请重新输入！");
		  return false;
	  }
}

var code=parseInt(Math.random()*8899+1000);
$(function(){
$("#checkcode").val(code);
});
function changecheckcode(){
$("#checkcode").val(parseInt(Math.random()*8899+1000));
}

</script>
  </head>
<body>
	主体右侧页面
</body>
</html>