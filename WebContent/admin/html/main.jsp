<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.helloworld.bean.Pwd"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link href="../css/style.css" rel="stylesheet" type="text/css" />

<script language="javascript">
var Arraycolor=new Array("olive","teal","red","blue","maroon","navy","lime","fuschia","green","purple","gray","yellow","aqua","white","silver");
var n=0;
function turncolors(){
  if (n==(Arraycolor.length-1)) n=0;
  n++;
  document.bgColor = Arraycolor[n];
}
</script>

</head>
<body>



<%
	Pwd pwd = (Pwd)session.getAttribute("pwd");
 %>
 <a href="#" class="t_msg2" title="颜色切换" onclick="turncolors()">我的消息</a>
<div class="error-inner">
<h3 class="add">欢迎您，<%=pwd.getUserid() %>, 您打算下一步做什么？</font></h3>
</div>
</body>
</html>
