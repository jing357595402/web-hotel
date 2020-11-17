<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf8" />
<title>预订中心</title>
<link rel="icon" href="${pageContext.request.contextPath }/portal/imgs/favicon.ico" type="image/x-icon" />
<link rel="shortcut icon" href="${pageContext.request.contextPath }/portal/imgs/favicon.ico" type="image/x-icon" />
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
<link href="${pageContext.request.contextPath }/portal/css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/portal/css/lightbox.css" type="text/css" media="screen" />

<script type="text/javascript" src="${pageContext.request.contextPath }/portal/js/prototype.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/portal/js/scriptaculous.js?load=effects"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/portal/js/lightbox.js"></script>
<script language="javascript" src="${pageContext.request.contextPath }/portal/js/Calendar.js"></script>
<script language="javascript" src="${pageContext.request.contextPath }/portal/js/xmlHttpRequest.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/portal/js/ajax.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/portal/js/check.js"></script>

<style type="text/css">
<!--
.wo03 {
	FONT-SIZE: 11px;
	COLOR: #885937;
	LINE-HEIGHT: 1.4;
	FONT-FAMILY: 新細明體
}

.wo04 {
	FONT-SIZE: 11px;
	COLOR: #6c4900;
	LINE-HEIGHT: 1.4;
	FONT-FAMILY: Verdana
}
-->
</style>
</head>

<script language="javascript">
	function wq() {
		if (form1.kflx1.options[form1.kflx1.selectedIndex].value == "") {
			form1.company.value = "  ";
			form1.company.focus();
			form1.company1.focus();
			form1.company.readOnly = true;
		} else {
			form1.company.value = "";
			form1.company.focus();
			form1.company.readOnly = false;
		}
	}

	function aa() {
		layer100.innerHTML = "<img border='0' src='${pageContext.request.contextPath }/portal/imgs/error.gif' width='19' height='16'>";
	}

	function chenphone(mobile) {

		var reg0 = /^13\d{5,9}$/;
		var reg1 = /^15\d{5,9}$/;
		var reg2 = /^(([0\+]\d{2,3}-)?(0\d{2,3})-)?(\d{7,8})(-(\d{3,}))?$/;
		var reg3 = /^0\d{10,11}$/;
		var my = false;
		if (reg0.test(mobile))
			my = true;
		if (reg1.test(mobile))
			my = true;
		if (reg2.test(mobile))
			my = true;
		if (reg3.test(mobile))
			my = true;

		if (!my) {
			return false;
		}
		return true;
	}
	function miss(x) {
		switch (x) {
		case 1:
			if (trim(form1.fs.value) == "") {
				layer1.innerHTML = "<img border='0' src='${pageContext.request.contextPath }/portal/imgs/error.gif' width='19' height='16'>";
			} else {
				layer1.innerHTML = "<img border='0' src='${pageContext.request.contextPath }/portal/imgs/ok.gif' width='19' height='16'>";
			}
			break;
		case 2:
			if (trim(form1.rs.value) == "" || !IsNum(form1.rs.value)) {
				layer2.innerHTML = "<img border='0' src='${pageContext.request.contextPath }/portal/imgs/error.gif' width='19' height='16'>";
			} else {
				layer2.innerHTML = "<img border='0' src='${pageContext.request.contextPath }/portal/imgs/ok.gif' width='19' height='16'>";
			}
			break;
		case 3:
			if (trim(form1.name1.value) == "") {
				layer3.innerHTML = "<img border='0' src='${pageContext.request.contextPath }/portal/imgs/error.gif' width='19' height='16'>";

			} else {
				layer3.innerHTML = "<img border='0' src='${pageContext.request.contextPath }/portal/imgs/ok.gif' width='19' height='16'>";
			}
			break;
		case 4:
			if (form1.company.value == "") {
				layer4.innerHTML = "<img border='0' src='${pageContext.request.contextPath }/portal/imgs/error.gif' width='19' height='16'>";

			} else {
				layer4.innerHTML = "<img border='0' src='${pageContext.request.contextPath }/portal/imgs/ok.gif' width='19' height='16'>";
			}
			break;
		case 5:
			if (trim(form1.company1.value) == "" || !IsNum(form1.company1.value)){
				layer5.innerHTML = "<img border='0' src='${pageContext.request.contextPath }/portal/imgs/error.gif' width='19' height='16'>";
			} else {
				layer5.innerHTML = "<img border='0' src='${pageContext.request.contextPath }/portal/imgs/ok.gif' width='19' height='16'>";
			}
			break;

		case 6:
			if (!chenphone(form1.tel.value)){
				layer6.innerHTML = "<img border='0' src='${pageContext.request.contextPath }/portal/imgs/error.gif' width='19' height='16'>";
			}else{
				layer6.innerHTML = "<img border='0' src='${pageContext.request.contextPath }/portal/imgs/ok.gif' width='19' height='16'>";
			}
			break;
		case 7:
			if (!chenphone(form1.fax.value)){
				layer7.innerHTML = "<img border='0' src='${pageContext.request.contextPath }/portal/imgs/error.gif' width='19' height='16'>";
			}else{
				layer7.innerHTML = "<img border='0' src='${pageContext.request.contextPath }/portal/imgs/ok.gif' width='19' height='16'>";
			}
			break;
		case 8:
			if (trim(form1.femail.value) == ""
					|| !(isEmail(form1.femail.value))){
				layer8.innerHTML = "<img border='0' src='${pageContext.request.contextPath }/portal/imgs/error.gif' width='19' height='16'>";
			}else{
				layer8.innerHTML = "<img border='0' src='${pageContext.request.contextPath }/portal/imgs/ok.gif' width='19' height='16'>";
			}
			break;
		case 9:
			if (trim(form1.where.value) == ""){
				layer9.innerHTML = "<img border='0' src='${pageContext.request.contextPath }/portal/imgs/error.gif' width='19' height='16'>";
			}else{
				layer9.innerHTML = "<img border='0' src='${pageContext.request.contextPath }/portal/imgs/ok.gif' width='19' height='16'>";
			}
			break;
		case 11:
			if (form1.fanshi.value == ""){
				layer11.innerHTML = "<img border='0' src='${pageContext.request.contextPath }/portal/imgs/error.gif' width='19' height='16'>";
			}else{
				layer11.innerHTML = "<img border='0' src='${pageContext.request.contextPath }/portal/imgs/ok.gif' width='19' height='16'>";
			}
			break;
		case 12:
			if (form1.company2.value == ""){
				layer12.innerHTML = "<img border='0' src='${pageContext.request.contextPath }/portal/imgs/error.gif' width='19' height='16'>";
			}else{
				layer12.innerHTML = "<img border='0' src='${pageContext.request.contextPath }/portal/imgs/ok.gif' width='19' height='16'>";
			}
			break;
		}
	}
</script>

<body leftmargin="0" topmargin="0" onLoad="aa()">

	<div align="center">
		<%@ include file="top.jsp"%>
		<table width="1003" height="580" border="0" cellpadding="0" cellspacing="0" background="${pageContext.request.contextPath }/portal/imgs/22047.jpg" bgcolor="#FFF4C7">
			<tr>
				<td width="234" height="580" align="left" valign="top" background="${pageContext.request.contextPath }/portal/imgs/02.jpg"><img src="${pageContext.request.contextPath }/portal/imgs/11.jpg" width="234" height="651" /></td>
				<td width="682" align="center" valign="top"><table width="632" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td><img src="${pageContext.request.contextPath }/portal/imgs/12.jpg" width="682" height="179" /></td>
						</tr>
					</table>
					<table width="632" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td height="10"></td>
						</tr>
					</table>
					<table width="632" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td width="398" height="25" align="left" valign="middle">&nbsp;<font style="font-weight: bold; font-size: 15px; color: 6E4B25;">预订中心</font></td>
							<td width="234" align="right" valign="middle"><font
								style="font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-weight: bold; color: 6E4B25;">LK International Hotel</font></td>
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
					<table width="626" height="92" border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td align="left" valign="top"><img src="${pageContext.request.contextPath }/portal/imgs/22072.jpg" width="626" height="41"></td>
						</tr>
						<tr>
							<form id="form1" name="form1" method="post" action="ydzx1.asp" onsubmit="return checkform() ">
								<td align="center" valign="top" background="${pageContext.request.contextPath }/portal/imgs/22074.jpg">
									<table cellspacing="1" cellpadding="5" width="91%" align="center" border="0">
										<tbody>

											<tr>
												<td align="right" valign="middle">预定客房类型</td>
												<td align="left" valign="middle"><select name="kflx" id="kflx"
													style="BORDER-RIGHT: #9d9d6c 1px solid; BORDER-TOP: #9d9d6c 1px solid; FONT-SIZE: 12px; BORDER-LEFT: #9d9d6c 1px solid; WIDTH: 160px; BORDER-BOTTOM: #9d9d6c 1px solid; HEIGHT: 16px; BACKGROUND-COLOR: #ffffff"
													onchange="change(this)">


														<option value="6">豪华单人</option>


														<option value="7">高级双人</option>


														<option value="8">豪华套房</option>


														<option value="9">总统套房</option>


												</select> <font color="#660000">*</font></td>
											</tr>
											<tr>
												<td align="right" valign="middle">房间数：</td>
												<td align="left" valign="middle"><input size="15" name="fs" id="fs"
													style="BORDER-RIGHT: #9d9d6c 1px solid; BORDER-TOP: #9d9d6c 1px solid; FONT-SIZE: 12px; BORDER-LEFT: #9d9d6c 1px solid; WIDTH: 114px; BORDER-BOTTOM: #9d9d6c 1px solid; HEIGHT: 16px; BACKGROUND-COLOR: #eff4dd"
													onblur="miss(1)" /> <font color="#660000">*</font>
													<div style="position: absolute;" id="layer1"></div></td>
											</tr>
											<tr>
												<td align="right" valign="middle">人 数：</td>
												<td align="left" valign="middle"><input size="15" name="rs"
													style="BORDER-RIGHT: #9d9d6c 1px solid; BORDER-TOP: #9d9d6c 1px solid; FONT-SIZE: 12px; BORDER-LEFT: #9d9d6c 1px solid; WIDTH: 114px; BORDER-BOTTOM: #9d9d6c 1px solid; HEIGHT: 16px; BACKGROUND-COLOR: #ffffff"
													onBlur="miss(2)" /> <font color="#660000">* </font>
													<div style="position: absolute;" id="layer2"></div></td>
											</tr>
											<tr>
												<td width="32%" align="right" valign="middle" height="28"><span class="1cs">您的姓名</span></td>
												<td align="left" valign="middle" height="28"><input size="35" name="name1" id="name1"
													style="BORDER-RIGHT: #9d9d6c 1px solid; BORDER-TOP: #9d9d6c 1px solid; FONT-SIZE: 12px; BORDER-LEFT: #9d9d6c 1px solid; WIDTH: 114px; BORDER-BOTTOM: #9d9d6c 1px solid; HEIGHT: 16px; BACKGROUND-COLOR: #eff4dd"
													onBlur="miss(3)" /> *
													<div style="position: absolute;" id="layer3"></div></td>
											</tr>
											<tr>
												<td align="right" valign="middle">您的性别</td>
												<td align="left" valign="middle"><INPUT name=xsex type=radio class="inputCheck" value=小姐 CHECKED> <SPAN class=wo01>小姐</SPAN>
													<INPUT name=xsex type=radio class="inputCheck" value=先生> <SPAN class=wo01>先生</SPAN></td>
											</tr>


											<tr>
												<td align="right" valign="middle">邮政编码</td>
												<td align="left" valign="middle"><input size="35" name="company1"
													style="BORDER-RIGHT: #9d9d6c 1px solid; BORDER-TOP: #9d9d6c 1px solid; FONT-SIZE: 12px; BORDER-LEFT: #9d9d6c 1px solid; WIDTH: 114px; BORDER-BOTTOM: #9d9d6c 1px solid; HEIGHT: 16px; BACKGROUND-COLOR: #ffffff"
													onblur="javascript:miss(5)" />
													<div style="position: absolute;" id="layer5"></div></td>
											</tr>
											<tr>
												<td align="right" valign="middle">联系电话</td>
												<td align="left" valign="middle"><input size="35" name="tel"
													style="BORDER-RIGHT: #9d9d6c 1px solid; BORDER-TOP: #9d9d6c 1px solid; FONT-SIZE: 12px; BORDER-LEFT: #9d9d6c 1px solid; WIDTH: 114px; BORDER-BOTTOM: #9d9d6c 1px solid; HEIGHT: 16px; BACKGROUND-COLOR: #eff4dd"
													onblur="javascript:miss(6)" /> * 02034709708 &nbsp;&nbsp;&nbsp;
													<div style="position: absolute;" id="layer6"></div></td>
											</tr>
											<tr>
												<td align="right" valign="middle">传 真：</td>
												<td align="left" valign="middle"><input size="35" name="fax"
													style="BORDER-RIGHT: #9d9d6c 1px solid; BORDER-TOP: #9d9d6c 1px solid; FONT-SIZE: 12px; BORDER-LEFT: #9d9d6c 1px solid; WIDTH: 114px; BORDER-BOTTOM: #9d9d6c 1px solid; HEIGHT: 16px; BACKGROUND-COLOR: #ffffff"
													onBlur="javascript:miss(7)" /> 02034709708 &nbsp;&nbsp;&nbsp;
													<div style="position: absolute;" id="layer7"></div></td>
											</tr>
											<tr>
												<td align="right" valign="middle">电子邮箱</td>
												<td align="left" valign="middle"><input size="35" name="femail" id="femail"
													style="BORDER-RIGHT: #9d9d6c 1px solid; BORDER-TOP: #9d9d6c 1px solid; FONT-SIZE: 12px; BORDER-LEFT: #9d9d6c 1px solid; WIDTH: 114px; BORDER-BOTTOM: #9d9d6c 1px solid; HEIGHT: 16px; BACKGROUND-COLOR: #eff4dd"
													onblur="javascript:miss(8)" /> *
													<div style="position: absolute;" id="layer8"></div></td>
											</tr>
											<tr>
												<td align="right" valign="middle" height="27">您从哪里来：</td>
												<td align="left" valign="middle" height="27"><input id="where" size="35" name="where"
													style="BORDER-RIGHT: #9d9d6c 1px solid; BORDER-TOP: #9d9d6c 1px solid; FONT-SIZE: 12px; BORDER-LEFT: #9d9d6c 1px solid; WIDTH: 114px; BORDER-BOTTOM: #9d9d6c 1px solid; HEIGHT: 16px; BACKGROUND-COLOR: #ffffff"
													onBlur="javascript:miss(9)" /> *
													<div style="position: absolute;" id="layer9"></div></td>
											</tr>
											<tr>
												<td align="right" valign="middle">您入住日期：</td>
												<td align="left" valign="middle"><input name="rz" id="rz" type="text" class="input3" size=20 onFocus="setday(this)" readonly>
													* &nbsp;&nbsp;结算日期 <input name="js" id="js" type="text" class="input3" size="20" onFocus="setday(this)" readonly>
													<div style="position: absolute;" id="layer10"></div></td>
											</tr>
											<tr>
												<td align="right" valign="middle" nowrap="nowrap">结帐方式</td>
												<td align="left" valign="middle"><input id="fanshi" size="35" name="fanshi"
													style="border: 1px solid #9d9d6c; FONT-SIZE: 12px; WIDTH: 114; HEIGHT: 16; BACKGROUND-COLOR: #ffffff" onBlur="miss(11)" /> *
													<div style="position: absolute;" id="layer11"></div></td>
											</tr>
											<tr>
												<td valign="middle" align="right">公司名称</td>
												<td align="left" valign="middle"><input id="company2" size="35" name="company2"
													style="BORDER-RIGHT: #9d9d6c 1px solid; BORDER-TOP: #9d9d6c 1px solid; FONT-SIZE: 12px; BORDER-LEFT: #9d9d6c 1px solid; WIDTH: 271px; BORDER-BOTTOM: #9d9d6c 1px solid; HEIGHT: 16px; BACKGROUND-COLOR: #eff4dd"
													onBlur="miss(12)" />
													<div style="position: absolute;" id="layer12"></div></td>
											</tr>
											<tr>
												<td valign="top" align="right">请留下您<font color="#663300">宝贵意见</font></b></td>
												<td align="left" valign="middle"><textarea class="message_textarea" name="content" rows="3" cols="33"
														style="BORDER-RIGHT: #9d9d6c 1px solid; BORDER-TOP: #9d9d6c 1px solid; FONT-SIZE: 12px; BORDER-LEFT: #9d9d6c 1px solid; WIDTH: 271px; BORDER-BOTTOM: #9d9d6c 1px solid; HEIGHT: 95px; BACKGROUND-COLOR: #ffffff"></textarea>
													<div style="position: absolute;" id="layer13"></div></td>
											</tr>
											<tr align="left">
												<td width="62%" colspan="2"><table width="558" border="0" cellpadding="0" cellspacing="0">
														<tr>
															<td colspan="3" align="left" valign="top"><img src="${pageContext.request.contextPath }/portal/imgs/22075.jpg" width="561" height="7"></td>
														</tr>
														<tr>
															<td width="58" align="center" valign="top" bgcolor="#680001"><img src="${pageContext.request.contextPath }/portal/imgs/22077.jpg" width="35" height="33"></td>
															<td width="479" align="left" valign="top" bgcolor="#680001" style="line-height: 22px"><font color="#FFCC00"><strong>温馨提示:</strong><br>
																	·订房将保留至下午六点，以上房间若无事先通知或在没有担保金或订金情况下，本酒</br> &nbsp; 将不保证上述订房，如需取消订房，请预先通知本酒店</font></br> ·网上的酒店介绍、房态、价格等信息只作为参考，预订以最终电话、传真或短信确认</br> &nbsp; 准</font></td>
															<td width="24" align="left" valign="top" bgcolor="#680001"></td>
														</tr>
														<tr>
															<td colspan="3" align="left" valign="top"><img src="${pageContext.request.contextPath }/portal/imgs/22076.jpg" width="561" height="7"></td>
														</tr>
													</table></td>
											</tr>
											<tr align="middle">
												<td height="43" colspan="2" align="center"><input type="hidden" name="tHtml" /> <input class="go-wenbenkuang" type="submit"
													value="确认订房" name="btnSend" /> <input class="go-wenbenkuang" type="reset" value="清除" name="btnClear" /></td>
											</tr>
										</tbody>
									</table>

								</td>
							</form>
						</tr>

						<tr>
							<td align="left" valign="top"><img src="${pageContext.request.contextPath }/portal/imgs/22073.jpg" width="626" height="41"></td>
						</tr>
					</table>
					<table width="632" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td height="20"></td>
						</tr>
					</table></td>
				<td width="87" align="left" valign="top" style="background: url(${pageContext.request.contextPath }/portal/imgs/22046.jpg); background-position: bottom; background-repeat: no-repeat;"><img
					src="${pageContext.request.contextPath }/portal/imgs/22045.jpg" width="87" height="251" /></td>
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
	<div style="display: none; visibility: hidden;" id="1000">
		<div style="position: absolute;" id="layer100"></div>
	</div>
	<script language="javascript">
		function checkform() {
			if (form1.fs.value == "")

			{

				alert("房间数不能为空");

				form1.fs.focus();

				return false;

			}

			if (form1.rs.value == "")

			{

				alert("人数不能为空");

				form1.rs.focus();

				return false;

			}

			if (form1.name1.value == "")

			{

				alert("姓名不能为空");

				form1.name1.focus();

				return false;

			}
			if (form1.company.value == "")

			{

				alert("会员卡号不能为空");

				form1.company.focus();

				return false;

			}
			if (form1.company1.value == "")

			{

				alert("邮编不能为空");

				form1.company1.focus();

				return false;

			}
			if (form1.tel.value == "")

			{

				alert("联系电话不能为空");

				form1.tel.focus();

				return false;

			}
			if (form1.fax.value == "")

			{

				alert("传真不能为空");

				form1.fax.focus();

				return false;

			}
			if (form1.femail.value == "")

			{

				alert("电子邮箱不能为空");

				form1.femail.focus();

				return false;

			}
			if (form1.where.value == "")

			{

				alert("来自哪里不能为空");

				form1.where.focus();

				return false;

			}

			if (form1.rz.value == "")

			{

				alert("入住日期不能为空");

				form1.rz.focus();

				return false;

			}

			if (form1.js.value == "")

			{

				alert("结帐日期不能为空");

				form1.js.focus();

				return false;

			}

			if (form1.js.value < form1.rz.value)

			{

				alert("结帐日期不能小于入住日期");

				form1.js.focus();

				return false;

			}

			if (form1.fanshi.value == "")

			{

				alert("结帐方式不能为空");

				form1.fanshi.focus();

				return false;

			}

			if (form1.company2.value == "")

			{

				alert("公司名称不能为空");

				form1.company2.focus();

				return false;

			}

			var i = 2;

			for (i = 1; i <= 12; i++) {
				if (layer100.innerHTML == eval("layer" + i + ".innerHTML"))

				{
					alert("你好，信息填写有错误!");

					return false;
				}

			}

			return true;

		}
	</script>


</body>

</html>