<%@ page language="java" contentType="text/html; charset=windows-31j"
    pageEncoding="windows-31j"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-31j">
<title>�V�K����o�^���</title>
		<script type="text/javascript">

		window.onload = function() {
		    history.pushState(null, null, null);
		    window.addEventListener('popstate', function () {
		        history.pushState(null, null, null);
		        window.alert('�u���E�U�o�b�N���g�p�����ɖ߂�{�^�����g�p���Ă�������');
		    });
		};

		</script>
</head>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/Signupteststyle.css">
<body>
<!-- <h2>�V�K����o�^���</h2> --><br><br>
<div id="wrapper"></div>
<div class="signup_container">
      <form action="<%=request.getContextPath() %>/regist" method="POST">
        <p class="fsize">�V�K����o�^���</p>
        <input type="text" name="username" placeholder="Username�i8�����ȓ��j" />
        <input type="password" name="pass"placeholder="Password�i���p8�����ȏ�16�����ȓ��j" />
        <button type="submit">�o�^�@</button>
      </form>
      <br>
      <form action="<%=request.getContextPath() %>/jsp/title.jsp" method="post">
          <button type="submit">�^�C�g���ɖ߂�@</button>
      </form>
</div>
</body>
</html>