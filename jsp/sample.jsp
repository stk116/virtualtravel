<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=windows-31J">
	<link rel="stylesheet" href="<%=request.getContextPath() %>/css/Signupteststyle.css">
	<title>ツアーコンプリート画面</title>
	<style>
        /* CSSスタイルを使って背景画像を設定する */
        body {
            /* 背景画像のURLを指定 */
            background-image: url('/virtualtravel/pics/kirakiraright.jpg');

            /* 背景画像のサイズを設定 */
            background-size: cover; /* 画面全体に拡大表示 */


            /* 背景画像の位置を設定 */
            background-position: center; /* 画像を中央に配置 */
        }
    </style>
</head>

<body>
<div class="confetti"><span></span><span></span><span></span><span></span>
		<span></span><span></span><span></span><span></span><span></span>
		<span></span><span></span><span></span><span></span><span></span>
		<span></span><span></span><span></span><span></span><span></span>
		<span></span><span></span><span></span><span></span><span></span>
		<span></span><span></span><span></span><span></span><span></span>
		<span></span><span></span><span></span><span></span><span></span>
		<span></span><span></span><span></span><span></span><span></span>
		<span></span><span></span><span></span><span></span><span></span>
		<span></span><span></span><span></span><span></span><span></span>
	</div>
<div class="text1"><p>Congratulations!!</p></div>

<div class="fade-in-text">すべてのツアーを制覇しました！！</div>

<div class="button-38"><a href="<%=request.getContextPath() %>/final"><button>旅の履歴へ</button></a></div>


</body>
</html>