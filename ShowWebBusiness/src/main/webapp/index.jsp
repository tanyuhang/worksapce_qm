<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
    <%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>Insert title here</title>
<script type="text/javascript" src="<%=basePath %>js/jquery-1.8.2.min.js"></script>
<script type="text/javascript">
function method1(){
    $("#method1").submit();    
} 
function method2(){
 window.location.replace("<%=basePath%>logicAction/skipLoginView.swb");
}
</script>
</head>
<body onload="method2()">
<%-- method3 <% request.getRequestDispatcher("redict/login.do").forward(request, response); %> 
<%-- <form id="method1" action="<%=basePath%>redict/login.do" method="post"></form> --%>
</body>
</html>