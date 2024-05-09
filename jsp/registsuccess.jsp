<%@ page language="java" contentType="text/html; charset=windows-31j"
    pageEncoding="windows-31j"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-31j">
<title>会員登録完了ページ</title>

<link rel="stylesheet" href="<%=request.getContextPath() %>/css/Signupteststyle.css">
</head>
<body>
<h2>会員登録完了画面</h2>
<div id="wrapper"></div>
<div class="success-container">
  <div class="success-top">
    <p class="success-message">会員登録が完了しました！</p>
  </div>
  <a class="login-button_1" href="<%=request.getContextPath() %>/jsp/login.jsp">ログイン画面へ</a>
</div>
</body>
</html>