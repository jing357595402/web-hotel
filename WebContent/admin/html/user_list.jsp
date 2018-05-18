<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.helloworld.bean.Pwd"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Internet Dreams</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/admin/css/style.css" type="text/css" media="screen" title="default" />
</head>
<body>
	<%
		List<Pwd> lst = (List<Pwd>) request.getAttribute("userlist");
	%>

	<div id="content-outer">
		<div id="content">
			<table border="0" width="100%" cellpadding="0" cellspacing="0" id="content-table">
				<tr>
					<th rowspan="3" class="sized"><img src="${pageContext.request.contextPath }/admin/images/side_shadowleft.jpg" width="20" height="300"
						alt="" /></th>
					<th class="topleft"></th>
					<td id="tbl-border-top">&nbsp;</td>
					<th class="topright"></th>
					<th rowspan="3" class="sized"><img src="${pageContext.request.contextPath }/admin/images/side_shadowright.jpg" width="20" height="300"
						alt="" /></th>
				</tr>
				<tr>
					<td id="tbl-border-left"></td>
					<td>
						<!--  start content-table-inner ...................................................................... START -->
						<div id="content-table-inner">

							<!--  start table-content  -->
							<div id="table-content">

								<!--  start message-yellow -->



								<!--  start product-table ..................................................................................... -->

								<form id="mainform" action="">
									<table border="0" width="100%" cellpadding="0" cellspacing="0" id="product-table">
										<tr>
											<th class="table-header-check padtp"><a id="toggle-all"></a></th>
											<th class="table-header-repeat line-left minwidth-1 padtp">ID</th>
											<th class="table-header-repeat line-left minwidth-1 padtp">用户名</th>
											<th class="table-header-repeat line-left padtp">密 码</th>
											<th class="table-header-options line-left padtp">操作</th>
										</tr>
										<%
											for (Pwd pwd : lst) {
										%>
										<tr>
											<td><input type="checkbox" /></td>
											<td><%=pwd.getPk()%></td>
											<td><%=pwd.getUserid()%></td>
											<td><%=pwd.getPwd()%></td>
											<td class="options-width"><a href="<%=request.getContextPath()%>/admin/html/user_add.jsp" title="Add"
												class="icon-3 info-tooltip"></a> <a href="<%=request.getContextPath()%>/UserOneServlet?id=<%=pwd.getPk()%>" title="Update"
												class="icon-1 info-tooltip"></a> <a href="<%=request.getContextPath()%>/UserDeleteServlet?id=<%=pwd.getPk()%>"
												onclick="javascript:return confirm('确定删除该用户？')" title="Delete" class="icon-2 info-tooltip"></a></td>
										</tr>
										<%
											}
										%>
									</table>
									<!--  end product-table................................... -->
								</form>
							</div>
							<!--  end content-table  -->

							<!--  start actions-box ............................................... -->
							<div id="actions-box">
								<a href="#" class=""> <img src="${pageContext.request.contextPath }/admin/images/dropdown_actions.gif" /></a>&nbsp;<a href="#" class=""><img
									src="${pageContext.request.contextPath }/admin/images/dropdown2.gif" /></a>
							</div>
							<!-- end actions-box........... -->

							<!--  start paging..................................................... -->
							<table border="0" cellpadding="0" cellspacing="0" id="paging-table">
								<tr>
									<td><a href="" class="page-far-left"></a> <a href="" class="page-left"></a>
										<div id="page-info">
											Page <strong>1</strong> / 15
										</div> <a href="" class="page-right"></a> <a href="" class="page-far-right"></a></td>
									<td><select class="styledselect_pages">
											<option value="">快速翻页</option>
											<option value="">1</option>
											<option value="">2</option>
											<option value="">3</option>
									</select></td>
								</tr>
							</table>
							<!--  end paging................ -->

							<div class="clear"></div>
						</div> <!--  end content-table-inner ............................................END  -->
					</td>
					<td id="tbl-border-right"></td>
				</tr>
				<tr>
					<th class="sized bottomleft"></th>
					<td id="tbl-border-bottom">&nbsp;</td>
					<th class="sized bottomright"></th>
				</tr>
			</table>
			<div class="clear">&nbsp;</div>

		</div>
		<!--  end content -->
		<div class="clear">&nbsp;</div>
	</div>
	<!--  end content-outer........................................................END -->

</body>
</html>