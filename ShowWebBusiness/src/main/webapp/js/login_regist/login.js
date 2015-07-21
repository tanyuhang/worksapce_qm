function submitC(){
		  if($("#username").val()==null || $("#username").val()==""){
			  alert("用户名为空，请重新输入！");
			  return;
		  }
		  if($("#password").val()==null || $("#password").val()==""){
			  alert("密码为为空，请重新输入！");
			  return;
		  }
}

var code=parseInt(Math.random()*8899+1000);
$(function(){
	 alert("a");
	$("#changecheckcode").value=code;
});

	

function changecheckcode(){
	
	$("#changecheckcode").value=code;
}