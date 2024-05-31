<%@ page language="java" contentType="text/html; charset=windows-31j"
    pageEncoding="windows-31j"%>
<%@ page import="java.util.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="ja">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=windows-31J">
	<title>���̗���</title>
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
		�����O�C����</header>

		<ul>
		  <li>
				<li><a href="<%=request.getContextPath() %>/tour">�c�A�[�J�n�I</a></li>
				<li><a href="<%=request.getContextPath() %>/sessioninvalidate">���O�A�E�g</a></li>
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
	<p class="HIShistory"><b>���̗���</b>
	<% if(c == 1){ %>
		<i class="fa-solid fa-medal medal" ></i></p>
	<%
	}
	%>


	<div class="HIScontent">
	<form id="historyForm action="<%=request.getContextPath() %>/favorite" method="post" class="HISform">
		<table class="HIStable" border="2" cellspacing="1" >

			<tr class="thead">
			<th class="r1">���t</th>
			<th class="r2">�c�A�[��</th>
			<th class="r3">���C�ɓ���</th>
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
					<label class="star-label" for="star_<%=i %>">��</label>
				</td>


				<%
				}
				%>


		</table>



	</div>
	<input class =favbutton type="submit" value="���C�ɓ����ۑ�">
		</form>
	<a class="hisText">�i���Ӂj����\�ɓ����̃c�A�[���������݂���ꍇ�A<br>
		���t���ł��V�������̂����C�ɓ���ɒǉ�/�폜���Ă�������</a>
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