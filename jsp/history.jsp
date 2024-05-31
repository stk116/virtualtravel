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

		<script type="text/javascript">

		window.onbeforeunload = function() {
		};
		window.onunload = function() {
		};
		  window.onload = function() {
			    history.pushState(null, null, "/virtualtravel/vagabond.html");
			    window.addEventListener('popstate', function () {
			      history.pushState(null, null, "/virtualtravel/404.html");
			      window.location.href = "/jsp/title.jsp";
			    });
			  }
		</script>

</head>
<body class="HIS">
<div class="specific-jsp-container">
	<input type="checkbox" id="check">
	<label for="check">
		<i class="fas fa-bars" id="humb"></i>
		<i class="fas fa-times" id="times"></i>
	</label>

	<div class="HISsidebar">
		<header> <%=session.getAttribute("username") %><br>
		がログイン中</header>

		<ul>
		  <li>
				<li><a href="<%=request.getContextPath() %>/tour">ツアー開始！</a></li>
				<li><a href="<%=request.getContextPath() %>/sessioninvalidate">ログアウト</a></li>
		  </li>
		</ul>
	</div>
</div>

<%
	int c = 0;
	c = (int)session.getAttribute("status");
%>

	<div class="HISbg">
	<div class="bigContent">
	<p class="HIShistory"><b>旅の履歴</b>
	<% if(c == 1){ %>
		<i class="fa-solid fa-medal medal" ></i></p>
	<%
	}
	%>


	<div class="HIScontent">
	<form id="historyForm action="<%=request.getContextPath() %>/favorite" method="post" class="HISform">
		<table class="HIStable" border="2" cellspacing="1" >

			<tr class="thead">
			<th class="r1">日付</th>
			<th class="r2">ツアー名</th>
			<th class="r3">お気に入り</th>
			</tr>
				<%
				List<String> hisList = (List<String>)session.getAttribute("hisList");
				List<String> dateList = (List<String>)session.getAttribute("dateList");
				for(int i = 0; i< hisList.size(); i++){

				%>

				<tr>
				<td><%=dateList.get(i) %></td>
				<td><a href="<%=request.getContextPath() %>/favtour?param=<%=java.net.URLEncoder.encode(hisList.get(i), "UTF-8") %>"><%=hisList.get(i) %></a></td>
				<td align="center">
					<input class ="star-input" type="checkbox" id ="star_<%=i %>" name="checkbox_<%=i %>" value="checked"
					<% if ("checked".equals(session.getAttribute("checkbox_value" + i ))) { %>checked="checked"<% } %>>
					<label class="star-label" for="star_<%=i %>">★</label>
				</td>


				<%
				}
				%>


		</table>



	</div>
	<input class =favbutton type="submit" value="お気に入りを保存">
		</form>
	<a class="hisText">（注意）履歴表に同名のツアーが複数存在する場合、<br>
		日付が最も新しいものをお気に入りに追加/削除してください</a>
	</div>
	</div>

	<script>
	document.addEventListener("DOMContentLoaded", function() {
	    var checkboxes = document.querySelectorAll("input[type='checkbox'][id^='star_']");
	    checkboxes.forEach(function(checkbox) {
	        checkbox.addEventListener("change", function() {
	        	document.getElementById("historyForm").submit();

	        });
	    });
	});

	</script>



</body>
</html>