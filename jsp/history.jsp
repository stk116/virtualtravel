<%@ page language="java" contentType="text/html; charset=windows-31j"
    pageEncoding="windows-31j"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="ja">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=windows-31J">
	<title>���̗���</title>
		<link rel="stylesheet" href="<%=request.getContextPath() %>/css/history.css">
		<link href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" rel="stylesheet">
		<script src="https://kit.fontawesome.com/56784c94a5.js" crossorigin="anonymous"></script>
</head>
<body>
	<input type="checkbox" id="check">
	<label for="check">
		<i class="fas fa-bars" id="humb"></i>
		<i class="fas fa-times" id="times"></i>
	</label>

	<div class="sidebar">
		<header> <%=session.getAttribute("username") %><br>
		�����O�C����</header>

		<ul>
		  <li>
				<li><a href="start.jsp">�X�^�[�g�y�[�W</a></li>

				<li><a href="<%=request.getContextPath() %>/sessioninvalidate">���O�A�E�g</a></li>
		  </li>
		</ul>
	</div>

	<div class="bg">
	<div class="content">
		<table class="table" border="2" cellspacing="1">
			<caption>
				<b><u>���̗���</u></b><br/>

			</caption>
			<tr>
			<th class="r1">���t</th>
			<th class="r2">�c�A�[��</th>
			<th class="r3">���C�ɓ���</th>
			</tr>
			<tr>
				<td>date()</td>
				<td>select tour from db;</td>
				<td align="center">
					<input type="checkbox" id="okini">
					<label for="okini">
						<i class="fa-solid fa-star" id="yes"></i>
						<i class="fa-regular fa-star" id="no"></i>
					</label>
				</td>
			</tr>
			<tr>
				<td>date()</td>
				<td>select tour from db;</td>
				<td align="center">
					<input type="checkbox" id="okini2">
					<label for="okini2">
						<i class="fa-solid fa-star" id="yes"></i>
						<i class="fa-regular fa-star" id="no"></i>
					</label>
				</td>
			</tr>

		</table>

	</div>
	</div>



</body>
</html>