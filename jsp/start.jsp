<%@ page language="java" contentType="text/html; charset=windows-31J"
	pageEncoding="windows-31J"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="ja">

<head>

	<meta http-equiv="Content-Type" content="text/html; charset=windows-31J">

	<title>スタートページ</title>

	<link rel="stylesheet" href="<%=request.getContextPath() %>/style.css">

</head>

<body>
	<div id="sutart"></div>

	<header>

        <div class="header">
            <h3>ようこそ　さん</h3>
        </div>
        <input id="r_sidebar" class="r_sidebar_button" type="checkbox">
        <label class="r_sidebar_label" for="r_sidebar"></label>

        <div class="r_sidebar_menu">
            　さんがログイン中<br>
            <a href="<%=request.getContextPath() %>">旅の履歴</a><br>
            <a href="<%=request.getContextPath() %>">ログアウト</a><br>
        </div>
        <div id="r_sidebar_closer" class="r_sidebar_closer"></div>
    </header>
	<br><br>


	<div class="button_solid006">
		<h1><a href="<%=request.getContextPath() %>">今日の旅へ</a></h1>
	</div>


</body>
</html>