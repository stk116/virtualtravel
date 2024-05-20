<%@ page language="java" contentType="text/html; charset=windows-31j"
    pageEncoding="windows-31j"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-31j">
<title>新規会員登録エラーページ</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/Signupteststyle.css">
</head>
<body>
<!-- <h2>新規会員登録エラー画面</h2> --><br><br>
<div id="wrapper"></div>
<div class="SUE-container">
  <div class="SUE-top">
    <p class="SUE-message">エラー</p>
    <% if (request.getAttribute("errorMessageLog") != null){ %>
    <p class="SUE-message3"><%=request.getAttribute("errorMessageLog") %></p>
    <%}else if(request.getAttribute("errorMessageUsername") != null){ %>
    <p class="SUE-message3"><%=request.getAttribute("errorMessageUsername") %></p>
    <%} %>
    <div class="message-space"></div>
    <p class="SUE-message2">会員登録に失敗しました</p>
  </div>
  <a class="login-button" href="<%=request.getContextPath() %>/jsp/inputregist.jsp">登録画面へ戻る</a>
</div>
</body>
</html>