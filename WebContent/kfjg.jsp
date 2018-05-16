<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>客房-酒店</title>
<link rel="icon" href="img2/timg-.ico" type="image/x-icon"/> 
<link rel="shortcut icon" href="img2/timg-.ico" type="image/x-icon"/> 
<style type="text/css">
<!--
body,td,th {
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



</head>

<body leftmargin="0" topmargin="0">
<div align="center">
  <%@ include file="top.jsp" %>
  <table width="1003" height="580" border="0" cellpadding="0" cellspacing="0" background="img/47.jpg" bgcolor="#FFF4C7" >
    <tr>
      <td width="234" height="580" align="left" valign="top" style="background:url(img/49.jpg); background-position:bottom; background-repeat:repeat;"><img src="img/42.jpg" width="234" height="616" /></td>
      <td width="682" align="center" valign="top"><table width="632" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td><img src="img/43.jpg" width="682" height="179" /></td>
        </tr>
      </table>
        <table width="632" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="10"></td>
          </tr>
        </table>
        <table width="632" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="402" height="25" align="left" valign="middle">&nbsp;<font style="font-weight:bold; font-size:15px; color:6E4B25;">客房展示</font>-客房价格表</td>
            <td width="230" align="right" valign="middle"><font style="font-family:Arial, Helvetica, sans-serif; font-size:12px; font-weight:bold; color:6E4B25;">LK International Hotel</font></td>
          </tr>
          <tr>
            <td height="1" colspan="2" bgcolor="593E34"></td>
          </tr>
        </table>
        <table width="632" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="20"></td>
          </tr>
        </table>
        <table width="632" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td align="left" valign="top" style="line-height:20px">
            <TABLE cellSpacing=1 cellPadding=5 align=center bgColor=#dcaa55 border=0>
<TBODY>
<TR>
<TD noWrap width=171 bgColor=#fef5cc>
<P align=center><STRONG>房型 </STRONG></P></TD>
<TD width=193 bgColor=#fef5cc>
<P align=center><STRONG>门市价（元） </STRONG></P></TD>
<TD width=204 bgColor=#fef5cc>
<P align=center><STRONG>面积（平方米） </STRONG></P></TD></TR>
<TR>
<TD noWrap width=171 bgColor=#fef5cc>
<P align=center>高级客房 </P></TD>
<TD width=193 bgColor=#fef5cc>
<P align=center>1299</P></TD>
<TD vAlign=top width=204 bgColor=#fef5cc>
<P align=center>36</P></TD></TR>
<TR>
<TD noWrap width=171 bgColor=#fef5cc>
<P align=center>豪华客房 </P></TD>
<TD width=193 bgColor=#fef5cc>
<P align=center>1599</P></TD>
<TD vAlign=top width=204 bgColor=#fef5cc>
<P align=center>45</P></TD></TR>
<TR>
<TD noWrap width=171 bgColor=#fef5cc>
<P align=center>豪华商务客房 </P></TD>
<TD width=193 bgColor=#fef5cc>
<P align=center>1399</P></TD>
<TD vAlign=top width=204 bgColor=#fef5cc>
<P align=center>86</P></TD></TR>
<TR>
<TD noWrap width=171 bgColor=#fef5cc>
<P align=center>高级商务套房 </P></TD>
<TD width=193 bgColor=#fef5cc>
<P align=center>1999</P></TD>
<TD vAlign=top width=204 bgColor=#fef5cc>
<P align=center>58</P></TD></TR>
<TR>
<TD noWrap width=171 bgColor=#fef5cc>
<P align=center>豪华商务套房 </P></TD>
<TD width=193 bgColor=#fef5cc>
<P align=center>2399</P></TD>
<TD vAlign=top width=204 bgColor=#fef5cc>
<P align=center>86</P></TD></TR>
<TR>
<TD noWrap width=171 bgColor=#fef5cc>
<P align=center>行政标间 </P></TD>
<TD width=193 bgColor=#fef5cc>
<P align=center>1399</P></TD>
<TD vAlign=top width=204 bgColor=#fef5cc>
<P align=center>36</P></TD></TR>
<TR>
<TD noWrap width=171 bgColor=#fef5cc>
<P align=center>行政单间 </P></TD>
<TD width=193 bgColor=#fef5cc>
<P align=center>1399</P></TD>
<TD vAlign=top width=204 bgColor=#fef5cc>
<P align=center>36</P></TD></TR>
<TR>
<TD noWrap width=171 bgColor=#fef5cc>
<P align=center>豪华行政单间 </P></TD>
<TD width=193 bgColor=#fef5cc>
<P align=center>1599</P></TD>
<TD vAlign=top width=204 bgColor=#fef5cc>
<P align=center>45</P></TD></TR>
<TR>
<TD noWrap width=171 bgColor=#fef5cc>
<P align=center>行政套房 </P></TD>
<TD width=193 bgColor=#fef5cc>
<P align=center>2299</P></TD>
<TD vAlign=top width=204 bgColor=#fef5cc>
<P align=center>86</P></TD></TR>
<TR>
<TD noWrap width=171 bgColor=#fef5cc>
<P align=center>豪华行政套房 </P></TD>
<TD width=193 bgColor=#fef5cc>
<P align=center>2699</P></TD>
<TD vAlign=top width=204 bgColor=#fef5cc>
<P align=center>76</P></TD></TR>
<TR>
<TD noWrap width=171 bgColor=#fef5cc>
<P align=center>总统套房 </P></TD>
<TD width=193 bgColor=#fef5cc>
<P align=center>39999</P></TD>
<TD vAlign=top width=204 bgColor=#fef5cc>
<P align=center>600</P></TD></TR>
<TR>
<TD noWrap width=171 bgColor=#fef5cc>
<P align=center>女士客房 </P></TD>
<TD width=193 bgColor=#fef5cc>
<P align=center>1699</P></TD>
<TD vAlign=top width=204 bgColor=#fef5cc>
<P align=center>45</P></TD></TR>
<TR>
<TD noWrap width=171 bgColor=#fef5cc>
<P align=center>豪华女士套房 </P></TD>
<TD width=193 bgColor=#fef5cc>
<P align=center>2999</P></TD>
<TD vAlign=top width=204 bgColor=#fef5cc>
<P align=center>190</P></TD></TR>
<TR>
<TD noWrap width=171 bgColor=#fef5cc>
<P align=center>豪华中州套房 </P></TD>
<TD width=193 bgColor=#fef5cc>
<P align=center>6999</P></TD>
<TD vAlign=top width=204 bgColor=#fef5cc>
<P align=center>410</P></TD></TR>
<TR>
<TD noWrap width=171 bgColor=#fef5cc>
<P align=center>贵宾别墅 </P></TD>
<TD width=193 bgColor=#fef5cc>
<P align=center>　</P></TD>
<TD vAlign=top width=204 bgColor=#fef5cc>
<P align=center>　</P></TD></TR></TBODY></TABLE>
<OL>
<LI>家庭计划：12岁以下儿童与父母同住，不加床不再额外收取房费。 
<LI>以上价格含10%的服务费及5%的政府税。 
<LI>价格如有更改，恕不另行通知。 </LI></OL>
<P>客房服务项目 </P>
<OL>
<LI>闹钟（叫醒服务） 
<LI>婴儿床（可提供） 
<LI>加床（可提供） 
<LI>保健枕头（有降压、明目功效）（可提供） 
<LI>软、硬床垫 
<LI>国际/国内直拨电话 
<LI>吹风机 
<LI>免费宽带上网 
<LI>电子保险箱 
<LI>熨斗、烫衣板 
<LI>迷你酒吧 
<LI>免费擦鞋服务 
<LI>手机多功能充电器 
<LI>无烟房 
<LI>蜜月房 
<LI>女士房 
<LI>麻将客房 
<LI>电脑客房 
<LI>贴身管家服务（可提供） 
<LI>托婴服务 
<LI>自行车出租 </LI></OL>
           </td>
          </tr>
        </table>
        <table width="634" height="50" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td>　</td>
          </tr>
      </table></td>
      <td width="87" align="left" valign="top" style="background:url(img/46.jpg); background-position:bottom; background-repeat:no-repeat;"><img src="img/45.jpg" width="87" height="251" /></td>
    </tr>
  </table>
  
<table width="1003" border="0" cellpadding="0" cellspacing="0" bgcolor="#000000">
    <tr>
      <td width="1005" height="1" bgcolor="622700"></td>
    </tr>
    <tr>
      <td height="25" align="center" valign="middle" bgcolor="4E0000" ><font color="#ffffff"><font style="font-family:Arial, Helvetica, sans-serif">Copyright &copy; 2008 Nanjing  International Hotel.
</font></font></td>
    </tr>
    <tr>
      <td height="75" align="center" valign="middle" >
      <%@ include file="foot.jsp" %>
      </td>
    </tr>
  </table>
</div>
</body>
</html>
