<%@ page language="java" contentType="text/html; charset=windows-31j"
    pageEncoding="windows-31j"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-31j">
<title>�V�K����o�^���</title>
</head>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/Signupteststyle.css">
<body>
<h2>�V�K����o�^���</h2>
<div id="wrapper"></div>
<div class="signup_container">
      <form action="<%=request.getContextPath() %>/Signupsuccesstest.html">
        <p class="fsize">�V�K����o�^���</p>
        <input type="text" placeholder="Username" />
        <input type="password" placeholder="Password" />
        <button type="submit">�o�^</button>
      </form>
</div>
</body>
</html>