<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>Insert title here</title>
</head>
<body>
 
<style type="text/css"> 
#gongao{width:1000px;height:30px;overflow:hidden;line-height:30px;font-size:13px;font-family:'宋体';background:#DDE5ED;color:#0C77CF;font-weight:bold;} 
#gongao #scroll_begin, #gongao #scroll_end{display:inline} 
</style> 
<script type="text/javascript"> 
function ScrollImgLeft(){ 
var speed=50; 
var scroll_begin = document.getElementById("scroll_begin"); 
var scroll_end = document.getElementById("scroll_end"); 
var scroll_div = document.getElementById("scroll_div"); 
scroll_end.innerHTML=scroll_begin.innerHTML; 
function Marquee(){ 
if(scroll_end.offsetWidth-scroll_div.scrollLeft<=0) 
scroll_div.scrollLeft-=scroll_begin.offsetWidth; 
else 
scroll_div.scrollLeft++; 
} 
var MyMar=setInterval(Marquee,speed); 
scroll_div.onmouseover=function() {clearInterval(MyMar);} 
scroll_div.onmouseout=function() {MyMar=setInterval(Marquee,speed);} 
} 
</script> 
<div id="gongao"> 
<div style="width:900px;height:30px;margin:0 auto;white-space: nowrap;overflow:hidden;" id="scroll_div" class="scroll_div"> 
<div id="scroll_begin"> 
${affiche.content} ${affiche.content} ${affiche.content} 
${affiche.content} ${affiche.content} ${affiche.content} 
</div> 
<div id="scroll_end"></div> 
</div> 
<script type="text/javascript">ScrollImgLeft();</script> 
</div> 

</body>
</html>