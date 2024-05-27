<%@ page language="java" contentType="text/html; charset=windows-31j"
    pageEncoding="windows-31j"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-31j">
<title>新規会員登録画面</title>
<script>

window.onload = function() {
    history.pushState(null, null, null);
    window.addEventListener('popstate', function () {
        history.pushState(null, null, null);
        window.alert('前のページに戻る場合は、「戻る」ボタンから戻ってください。');
    });
};

</script>
</head>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/Signupteststyle.css">
<body>
<!-- <h2>新規会員登録画面</h2> --><br><br>
<div id="wrapper"></div>
<div class="signup_container">
      <form action="<%=request.getContextPath() %>/regist" method="POST">
        <p class="fsize">新規会員登録画面</p>
        <input type="text" name="username" placeholder="Username（8文字以内）" />
        <input type="password" name="pass"placeholder="Password（半角8文字以上16文字以内）" />
        <button type="submit">登録　</button>
      </form>
      <br>
      <form action="<%=request.getContextPath() %>/jsp/title.jsp" method="post">
          <button type="submit">タイトルに戻る　</button>
      </form>
</div>
</body>
</html>