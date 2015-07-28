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
	<meta http-equiv="description" content="管理员用户主页面">

<script type="text/javascript" src="<%=basePath %>js/jquery-1.8.2.min.js"></script>
<script type="text/javascript">


</script>
<style type="text/css">
#home_div{
position:relative;
margin:8px 15%;
border:dashed;
background:#993366;
}
#head_div{
position:relative;
margin:8px 8px;
border:dashed;

}
#bodymain_div{
position:relative;
margin:8px 8px;
border:dashed;
float:left;
}
#bodyright_div{
position:relative;
margin:8px 8px;
border:dashed;
float:left;
}
#foot_div{
position:relative;
margin:8px 8px;
border:dashed;
clear:left;
}
</style>
  </head>
<body>
	管理员员工主页面
</body>
</html>