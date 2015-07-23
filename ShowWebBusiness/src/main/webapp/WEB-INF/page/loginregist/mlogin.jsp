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
	<div id='login_div'>
	<form  name='loginform' id="mloginform" method="post" action='<%=basePath%>logicAction/mloginMethon.swb'>
		<table class="login_tab" id="login_tab">
			<thead>
				<tr>
					<td  colspan='4'>欢迎登陆休闲旅游网后台管理系统</td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><b>用户名:</b></td> 
					<td><input type='text' id='username' name='username' placeholder='用户名/手机号/邮箱'/></td>
					<td colspan="2"></td>
				</tr>
				<tr>
					<td rowspan="2"><b>密码:</b></td>
					<td rowspan="2"><input type="password" id='password' name='password'/></td>
					<td ><b>验证码:</b></td>
					<td ><input type="button" id="checkcode" class="checkcode" value=""/></td>
				</tr>
				<tr>
				<td ><input type='text' placeholder="请输入验证码"/></td>
				<td><input type="button" id="changecheckcode" class="changecheckcode" onClick="changecheckcode()" value="换一张"/></td>
				</tr>
				<tr>				    
				  <td height="38" colspan="2"><input type='submit' id='login_submit' class='login_submit' value="提交" onClick="return submitC()"/></td>
				  <td height="38" colspan="2"><input type='reset'  value="重置"/></td>
				</tr>
		  </tbody>
	  </table>
	  </form>	
	</div>
</body>
</html>