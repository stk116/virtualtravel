<%@ page language="java" contentType="text/html; charset=windows-31j"
    pageEncoding="windows-31j"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-31j">
<title>ログインページ</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/Signupteststyle.css">
</head>
<body>
<!-- <h2>ログイン画面</h2> -->
<div id="wrapper"></div>
<div class="login_container">
      <form action="<%=request.getContextPath() %>/login" method="POST">
        <p class="fsize">ログイン画面</p>
        <input type="text" name="username" placeholder="Username" />
        <input type="password" name="pass" placeholder="Password" />
        <button type="submit" class="submit_btn">ログイン　</button>
      </form>
     <form action="<%=request.getContextPath() %>/sessioninvalidate" method="get">
    <br><button type="submit">タイトル画面に戻る　</button>
</form>
</div>
</body>
</html>