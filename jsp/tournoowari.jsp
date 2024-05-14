<%@ page language="java" contentType="text/html; charset=windows-31J"
	pageEncoding="windows-31J"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=windows-31J">

	<title>ツアー継続・終了画面</title>

	<link rel="stylesheet" href="<%=request.getContextPath() %>/css/botanno.css">
</head>

<body>
	<div id="syuuryou"></div>

	<br><br>

	<div class="tugihebutton">
		<h1><a href="<%=request.getContextPath() %>/tour">次の旅へ →</a></h1>
	</div>

	<div class="owaributton">
		<h1><a href="<%=request.getContextPath() %>/jsp/history.jsp">今回の旅は終了！</a></h1>
	</div>

</body>
</html>