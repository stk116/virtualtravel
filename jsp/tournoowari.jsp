<%@ page language="java" contentType="text/html; charset=windows-31J"
	pageEncoding="windows-31J"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=windows-31J">

	<title>�c�A�[�p���E�I�����</title>

	<link rel="stylesheet" href="<%=request.getContextPath() %>/css/botanno.css">

			<script type="text/javascript">

		window.onbeforeunload = function() {
		};
		window.onunload = function() {
		};
		  window.onload = function() {
			    history.pushState(null, null, "/virtualtravel/tour.html");
			    window.addEventListener('popstate', function () {
			      history.pushState(null, null, "/virtualtravel/404.html");
			      window.location.href = "/jsp/title.jsp";
			    });
			  }
		</script>

</head>

<body>
	<div id="syuuryou"></div>

	<br><br>

	<div class="tugihebutton">
		<h1><a href="<%=request.getContextPath() %>/tour">���̗��� ��</a></h1>
	</div>

	<div class="owaributton">
		<h1><a href="<%=request.getContextPath() %>/final">����̗��͏I���I</a></h1>
	</div>

</body>
</html>