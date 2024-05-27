<%@ page language="java" contentType="text/html; charset=windows-31j"
    pageEncoding="windows-31j"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="ja">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=windows-31J">
	<title>タイトル画面</title>
		<link rel="stylesheet" href="<%=request.getContextPath() %>/css/title.css">

		<script type="text/javascript">

		window.onbeforeunload = function() {
		};
		window.onunload = function() {
		};
		  window.onload = function() {
			    history.pushState(null, null, "/jsp/title.jsp");
			    window.addEventListener('popstate', function () {
			      history.pushState(null, null, "/jsp/title.jsp");
			      window.location.href = "/jsp/title.jsp";
			    });
			  }
		</script>


</head>
<body class="titleBody">
<div class="titleBG">
<div class="titleContent">
<br>

<div class="youkoso">
<h1 class="test01">仮想トラベルへようこそ</h1>
</div>
<div class="syuppatsu">
<h3>仮想の旅へ出発しましょう</h3>
</div>
<div class="titleText">
本サイトは、時間や金銭的な事情、あるいは体力的な問題から旅行に出かけることができない方でも<br>
気軽に旅行気分を味わうことができるwebサイトです。<br>
ランダムでツアーを選定し、素敵な旅へお連れします。<br>
</div>
<br>
<br>
<br>
<br>
　　　　　<div class="title_login_btn">
	<a href="<%=request.getContextPath() %>/jsp/login.jsp">ログイン画面へ</a>
</div>
　　　　　<div class="title_touroku_btn">
<a href="<%=request.getContextPath() %>/jsp/inputregist.jsp">新規会員登録はこちら</a>
</div>


</div>
</div>
</body>
</html>

