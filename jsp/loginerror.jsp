<%@ page language="java" contentType="text/html; charset=windows-31j"
    pageEncoding="windows-31j"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-31j">
<title>ログインエラー画面</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/Signupteststyle.css">
</head>
<body>
<!-- <h2>ログインエラー画面</h2> --><br>
<div id="tekito"></div>

<div class="error-container">
  <div class="error-top">
    <p class="error-message">エラー</p>
    <p class="error-messageLogin"><%=request.getAttribute("errorMessageLogin") %></p>
  </div>
  <a class="login-button" href="<%=request.getContextPath() %>/jsp/login.jsp">ログイン画面へ戻る</a>
</div>
</body>
</html>