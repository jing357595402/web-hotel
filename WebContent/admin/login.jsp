<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>酒店管理系统_用户登录</title>
<link rel="icon" href="../img2/timg-.ico" type="image/x-icon"/> 
<link rel="shortcut icon" href="../img2/timg-.ico" type="image/x-icon"/> 
<style type="text/css">
<!--
body {
	margin-left: 0px;    
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	overflow:hidden;
}
.STYLE1 {font-size: 12px}
-->
</style></head>
<script type="text/javascript">
	function tijiao() {
		document.form1.submit();
	
	}



</script>
<body>
<form action="<%=request.getContextPath() %>/LoginServlet" name="form1" method="post">
<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td bgcolor="9fc967">&nbsp;</td>
  </tr>
  <tr>
    <td height="604"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="604" background="images/login_02.gif">&nbsp;</td>
        <td width="989"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="345" background="images/login_1.jpg">&nbsp;</td>
          </tr>
          <tr>
            <td height="47"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="539" height="47" background="images/login_05.gif" nowrap="nowrap">&nbsp;</td>
                <td width="206" background="images/login_06.gif" nowrap="nowrap"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="17%" height="22"><div align="center"><span class="STYLE1">用户</span></div></td>
                    <td width="58%" height="22"><div align="center">
                        <input name="textfield" type="text" size="15" style="height:17px; border:solid 1px #bbbbbb">
                    </div></td>
                    <td width="25%" height="22">&nbsp;</td>
                  </tr>
                  <tr>
                    <td height="22"><div align="center"><span class="STYLE1">密码</span></div></td>
                    <td height="22"><div align="center">
                        <input name="password" type="password" size="15" style="height:17px; border:solid 1px #bbbbbb">
                    </div></td>
                    <td height="22"><div align="center" ><img src="images/dl.gif" width="39" height="18" onclick="tijiao()"></div></td>
                  </tr>
                </table></td>
                <td width="244" background="images/login_07.gif" nowrap="nowrap">&nbsp;</td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td height="212" background="images/login_08.gif">&nbsp;</td>
          </tr>
        </table></td>
        <td background="images/login_04.gif">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td bgcolor="70ad21">&nbsp;</td>
  </tr>
</table>
</form>
</body>
</html>
