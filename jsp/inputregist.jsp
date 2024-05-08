<%@ page language="java" contentType="text/html; charset=windows-31j"
    pageEncoding="windows-31j"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-31j">
<title>新規会員登録画面</title>
</head>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/Signupteststyle.css">
<body>
<h2>新規会員登録画面</h2>
<div id="wrapper"></div>
<div class="signup_container">
      <form action="<%=request.getContextPath() %>/Signupsuccesstest.html">
        <p class="fsize">新規会員登録画面</p>
        <input type="text" placeholder="Username" />
        <input type="password" placeholder="Password" />
        <button type="submit">登録</button>
      </form>
</div>
</body>
</html>