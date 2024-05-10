<%@ page language="java" contentType="text/html; charset=windows-31J"
	pageEncoding="windows-31J"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=windows-31J">
	<title>ツアー開始画面</title>
	<link rel="stylesheet" href="<%=request.getContextPath() %>/css/style.css">
</head>

<body>

	<br><br><br><br>

	<div class="boxwrap">

	<div id="kaisi"></div>

	<h1 style="text-align:center">今回は <%=request.getAttribute("tour") %>旅行</h1>
	<br><br>
	<h3 style="text-align:center"><%=request.getAttribute("explane") %></h3>
		<div class="button0080">
			<h1><a href="<%=request.getContextPath() %>/jsp/t_screen1.jsp">次へ→</a></h1>
		</div>
	<br><br><br>
	<h3 style="text-align:center">Have a nice trip</h3>
	</div>

</body>
</html>