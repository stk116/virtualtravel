<%@ page language="java" contentType="text/html; charset=windows-31j"
    pageEncoding="windows-31j"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-31j">
<title>�V�K����o�^�G���[�y�[�W</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/Signupteststyle.css">
</head>
<body>
<!-- <h2>�V�K����o�^�G���[���</h2> --><br><br>
<div id="wrapper"></div>
<div class="SUE-container">
  <div class="SUE-top">
    <p class="SUE-message">�G���[</p>
    <% if (request.getAttribute("errorMessageLog") != null){ %>
    <p class="SUE-message3"><%=request.getAttribute("errorMessageLog") %></p>
    <%}else if(request.getAttribute("errorMessageUsername") != null){ %>
    <p class="SUE-message3"><%=request.getAttribute("errorMessageUsername") %></p>
    <%} %>
    <div class="message-space"></div>
    <p class="SUE-message2">����o�^�Ɏ��s���܂���</p>
  </div>
  <a class="login-button" href="<%=request.getContextPath() %>/jsp/inputregist.jsp">�o�^��ʂ֖߂�</a>
</div>
</body>
</html>