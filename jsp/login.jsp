<%@ page language="java" contentType="text/html; charset=windows-31j"
    pageEncoding="windows-31j"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-31j">
<title>テストページ</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/Signupteststyle.css">
</head>
<body>
<h2>ログイン画面</h2>
<div id="wrapper"></div>
<div class="login_container">
      <form action="<%=request.getContextPath() %>/">
        <p class="fsize">ログイン画面</p>
        <input type="text" placeholder="Username" />
        <input type="password" placeholder="Password" />
        <button type="submit">ログイン</button>
      </form>
</div>
</body>
</html>