<%@ page language="java" contentType="text/html; charset=windows-31J"
	pageEncoding="windows-31J"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="ja">

<head>

	<meta http-equiv="Content-Type" content="text/html; charset=windows-31J">

	<title>�X�^�[�g�y�[�W</title>

	<link rel="stylesheet" href="<%=request.getContextPath() %>/css/style.css">

		<script type="text/javascript">

		window.onbeforeunload = function() {
		};
		window.onunload = function() {
		};
		  window.onload = function() {
			    history.pushState(null, null, "/virtualtravel/vagabond.html");
			    window.addEventListener('popstate', function () {
			      history.pushState(null, null, "/virtualtravel/404.html");
			      window.location.href = "/jsp/title.jsp";
			    });

			  }
		</script>

</head>

<body>
	<div id="sutart"></div>

	<header>

        <div class="header">
            <h3>�悤���� <%=session.getAttribute("username") %> ����I</h3>
        </div>
        <input id="r_sidebar" class="r_sidebar_button" type="checkbox">
        <label class="r_sidebar_label" for="r_sidebar"></label>

        <div class="r_sidebar_menu">
            <%=session.getAttribute("username") %>���񂪃��O�C����<br>
            <a href="<%=request.getContextPath() %>/final" style="text-decoration: none;">���̗���</a><br>
            <a href="<%=request.getContextPath() %>/sessioninvalidate" style="text-decoration: none;">���O�A�E�g</a><br>
        </div>
        <div id="r_sidebar_closer" class="r_sidebar_closer"></div>
    </header>
    <br>


	<div class="button_solid006">
		<h1><a href="<%=request.getContextPath() %>/tour">�����̗���</a></h1>
	</div>


</body>
</html>