<%@ page language="java" contentType="text/html; charset=windows-31j"
    pageEncoding="windows-31j"%>
<!DOCTYPE HTML PUBLIC "-//W3C//CTC HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-31j">
<title>���z�g���x��</title>

<link rel="stylesheet" href="<%=request.getContextPath() %>/css/style001.css">  <!--  CSS�t�@�C���̃����N -->

</head>
<body>


  <div class="photo-container">
    <div class="photo-caption">
      <h2 style="text-align:left"><%=request.getAttribute("name") %></h2> <!-- ���� -->

   <img src= " <%=request.getAttribute("pic") %>"  width="1150" height="600">  <!-- �ʐ^ -->

    </div>
    <div class="button008">
	<a href="<%=request.getContextPath() %>/screen3">���̏ꏊ��</a>  <!-- �y�[�W�J�� �c�A�[�R -->

</div>
	 </div>
    <div class="button009">
	<a href="<%=request.getContextPath() %>/screen1">�O�̏ꏊ��</a>  <!-- �y�[�W�J�� �c�A�[1-->
</div>

    <p class="address"> <%=request.getAttribute("place") %> </p> <!-- �Z�� -->
    <p>  <%=request.getAttribute("text") %>  </p>  <!-- ���� -->

    <br><br>
    �Q�Ɛ�F  <%=request.getAttribute("link") %> <!-- �Q�� -->



</body>
</html>