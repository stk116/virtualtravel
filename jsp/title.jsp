<%@ page language="java" contentType="text/html; charset=windows-31j"
    pageEncoding="windows-31j"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="ja">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=windows-31J">
	<title>�^�C�g�����</title>
		<link rel="stylesheet" href="<%=request.getContextPath() %>/css/title.css">

		<script type="text/javascript">

		window.onbeforeunload = function() {
		};
		window.onunload = function() {
		};
		  window.onload = function() {
			    history.pushState(null, null, "/jsp/title.jsp");
			    window.addEventListener('popstate', function () {
			      history.pushState(null, null, "/jsp/title.jsp");
			      window.location.href = "/jsp/title.jsp";
			    });
			  }
		</script>


</head>
<body class="titleBody">
<div class="titleBG">
<div class="titleContent">
<br>

<div class="youkoso">
<h1 class="test01">���z�g���x���ւ悤����</h1>
</div>
<div class="syuppatsu">
<h3>���z�̗��֏o�����܂��傤</h3>
</div>
<div class="titleText">
�{�T�C�g�́A���Ԃ���K�I�Ȏ���A���邢�̗͓͑I�Ȗ�肩�痷�s�ɏo�����邱�Ƃ��ł��Ȃ����ł�<br>
�C�y�ɗ��s�C���𖡂키���Ƃ��ł���web�T�C�g�ł��B<br>
�����_���Ńc�A�[��I�肵�A�f�G�ȗ��ւ��A�ꂵ�܂��B<br>
</div>
<br>
<br>
<br>
<br>
�@�@�@�@�@<div class="title_login_btn">
	<a href="<%=request.getContextPath() %>/jsp/login.jsp">���O�C����ʂ�</a>
</div>
�@�@�@�@�@<div class="title_touroku_btn">
<a href="<%=request.getContextPath() %>/jsp/inputregist.jsp">�V�K����o�^�͂�����</a>
</div>


</div>
</div>
</body>
</html>

