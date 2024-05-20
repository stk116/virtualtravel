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
<!-- <h2>新規会員登録画面</h2> --><br><br>
<div id="wrapper"></div>
<div class="signup_container">
      <form action="<%=request.getContextPath() %>/regist" method="POST">
        <p class="fsize">新規会員登録画面</p>
        <input type="text" name="username" placeholder="Username（8文字以内でお願いします）" />
        <input type="password" name="pass"placeholder="Password（8文字以上16文字未満の英数字で登録してください）" />
        <button type="submit">登録　</button>
      </form>
      <br>
      <form action="<%=request.getContextPath() %>/jsp/title.jsp" method="get">
          <button type="submit">タイトルに戻る　</button>
      </form>
</div>
</body>
</html>