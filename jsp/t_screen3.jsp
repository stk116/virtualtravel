<%@ page language="java" contentType="text/html; charset=windows-31j"
    pageEncoding="windows-31j"%>
<!DOCTYPE HTML PUBLIC "-//W3C//CTC HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-31j">
<title>���z�g���x��</title>

<link rel="stylesheet" href="<%=request.getContextPath() %>/css/style001.css">  <!--  CSS�t�@�C���̃����N -->


</head>
<body bgcolor="black">

<div class="photo-container">
    <div class="photo-caption">
      <h2 style="text-align:left"><p style="color: white;">�@<%=request.getAttribute("name") %></p> </h2> <!-- ���� -->
  	  <img src="<%=request.getAttribute("pic") %>" width="1150" height="600">
   														<!-- �ʐ^ -->
    </div>

    <div class="button008">
		<a href="<%=request.getContextPath() %>/dbtest">����</a>  <!-- �y�[�W�J�� ������/��߂�-->
	</div>


    <div class="button009">
	<a href="<%=request.getContextPath() %>/screen2">�O�̏ꏊ��</a>  <!-- �y�[�W�J�� �c�A�[�Q-->
	</div>

    <p style="color: white;"> <%=request.getAttribute("place") %> </p> <!-- �Z�� -->
    <p style="color: white;">  <%=request.getAttribute("text") %> </p>  <!-- ���� -->

    <p style="color: white;">�Q�Ɛ�F <%=request.getAttribute("link") %> </p> <!-- �Q�� -->

</div>
</body>
</html>