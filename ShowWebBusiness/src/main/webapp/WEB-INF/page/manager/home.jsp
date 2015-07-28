<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %><%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
 

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
	<div id='home_div'>
		<div id='head_div'>
		 ${mb}
			<jsp:include page="head.jsp"></jsp:include>
		</div>
		<div id='bodymain_div'>
		left
		   <c:set var="mb" value='${mb}' scope="session"/>
			 <c:if test="${mb=='mbaa'}"  var="mb" scope='page'>
				<jsp:include page="main_body.jsp"></jsp:include>
			</c:if>  
		</div>
		<div id='bodyright_div'>right</div>
		<div id='foot_div'>foot</div>
	</div>
</body>
</html>