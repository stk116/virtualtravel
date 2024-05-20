<%@ page language="java" contentType="text/html; charset=windows-31j"
    pageEncoding="windows-31j"%>
<%@ page import="java.util.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="ja">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=windows-31J">
	<title>旅の履歴</title>
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
		がログイン中</header>

		<ul>
		  <li>
				<li><a href="<%=request.getContextPath() %>/tour">スタートページ</a></li>
				<li><a href="<%=request.getContextPath() %>/sessioninvalidate">ログアウト</a></li>
		  </li>
		</ul>
	</div>

	<div class="bg">
	<div class="bigContent">
	<p class="history"><b>旅の履歴</b></p>
	<div class="content">
		<table class="table" border="2" cellspacing="1" >
			<!-- <caption class="tcaption">
				<b><u>旅の履歴</u></b><br/>

			</caption> -->
			<tr class="thead">
			<th class="r1">日付</th>
			<th class="r2">ツアー名</th>
			<th class="r3">お気に入り</th>
			</tr>
				<%
				List<String> hisList = (List<String>)request.getAttribute("hisList");
				List<String> dateList = (List<String>)request.getAttribute("dateList");
				for(int i = 0; i< hisList.size(); i++){

				%>

				<tr>
				<td><%=dateList.get(i) %></td>
				<td><%=hisList.get(i) %></td>
				<td align="center">
					<input type="checkbox">
				</td>


				<%
				}
				%>


		</table>

	</div>
	</div>
	</div>



</body>
</html>