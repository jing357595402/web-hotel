<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>健身和娱乐</title>
<link rel="icon" href="img2/timg-.ico" type="image/x-icon" />
<link rel="shortcut icon" href="img2/timg-.ico" type="image/x-icon" />
<style type="text/css">
<!--
body, td, th {
	font-family: 宋体;
	font-size: 9pt;
	color: #593E34;
}

body {
	background-color: #000000;
}
-->
</style>
<link href="css/css.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="css/lightbox.css" type="text/css" media="screen" />

<script type="text/javascript" src="js/prototype.js"></script>
<script type="text/javascript" src="js/scriptaculous.js?load=effects"></script>
<script type="text/javascript" src="js/lightbox.js"></script>
<script language="javascript" src="Inc/xmlHttpRequest.js"></script>
<script type="text/javascript" src="Inc/ajax.js"></script>

</head>

<body leftmargin="0" topmargin="0">
	<div align="center">
		<%@ include file="top.jsp"%>
		<table width="1003" border="0" cellpadding="0" cellspacing="0" background="img/47.jpg" bgcolor="#FFF4C7">
			<tr>
				<td width="234" height="580" align="left" valign="top" background="img2/02.jpg"><img src="img2/09.jpg" width="234" height="651" /></td>
				<td width="682" align="center" valign="top"><table width="632" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td><img src="img2/10.jpg" width="682" height="179" /></td>
						</tr>
					</table>
					<table width="632" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td height="10"></td>
						</tr>
					</table>
					<table width="632" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td width="379" height="25" align="left" valign="middle">&nbsp;<font style="font-weight: bold; font-size: 15px; color: 6E4B25;">健身和娱乐</font></td>
							<td width="253" align="right" valign="middle"><font
								style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; color: 6E4B25;">LK International Hotel</font></td>
						</tr>
						<tr>
							<td height="1" colspan="2" bgcolor="593E34"></td>
						</tr>
					</table>
					<table width="632" height="97" border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td align="center" valign="middle" style="line-height: 20px"><a href="#"> <img src="img/65.jpg" alt="水疗馆" width="167"
									height="51" border="0" /></a></td>
							<td align="center" valign="middle" style="line-height: 20px"><a href="#"><img src="img/66.jpg" alt="健身中心" width="167"
									height="51" border="0" /></a></td>
							<td align="center" valign="middle" style="line-height: 20px"><a href="#"><img src="img/67.jpg" alt="中原首家泰国风情KTV" width="167"
									height="51" border="0" /></a></td>
						</tr>
					</table>
					<table width="632" height="66" border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td align="left" valign="top" style="line-height: 20px" id="showSubPage">
								<P>
									<STRONG>水疗馆</STRONG>
								</P>
								<P>13000平方米的水疗中心，1500平方米的天然地矿温泉游泳馆，和多达76间的各式豪华包房；并设有芬兰浴、冲浪浴、盐浴、香薰花浴、悬浮浴、足浴、泰式按摩等服务项目，更有贵宾休息大厅和专用自助餐厅。</P>
								<FONT face=Verdana>正在筹备中......</FONT>
							</td>
						</tr>
					</table>
					<table width="633" height="50" border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td align="center"></td>
						</tr>
					</table></td>
				<td width="87" align="left" valign="top" style="background: url(img/46.jpg); background-position: bottom; background-repeat: no-repeat;"><img
					src="img/45.jpg" width="87" height="251" /></td>
			</tr>
		</table>

		<table width="1003" border="0" cellpadding="0" cellspacing="0" bgcolor="#000000">
			<tr>
				<td width="1005" height="1" bgcolor="622700"></td>
			</tr>
			<tr>
				<td height="25" align="center" valign="middle" bgcolor="4E0000"><font color="#ffffff"><font
						style="font-family: Arial, Helvetica, sans-serif">Copyright &copy; 2008 Nanjing International Hotel. </font></font></td>
			</tr>
			<tr>
				<td height="75" align="center" valign="middle"><%@ include file="foot.jsp"%></td>
			</tr>
		</table>
	</div>
</body>
</html>
