<%@ page language="java" contentType="text/html; charset=windows-31j"
    pageEncoding="windows-31j"%>
<!DOCTYPE HTML PUBLIC "-//W3C//CTC HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-31j">
<title>仮想トラベル</title>

<link rel="stylesheet" href="<%=request.getContextPath() %>/style001.css">  <!--  CSSファイルのリンク -->

</head>
<body>


  <div class="photo-container">
    <div class="photo-caption">
      <h2 style="text-align:left"><a href="<%=request.getContextPath() %>"></a></h2> <!-- 名所 -->
      <img src="<a href="<%=request.getContextPath() %>"> width="1150" height="600">  <!-- 写真 -->
    </div>
    <div class="button008">
	<a href="<%=request.getContextPath() %>">次の場所へ</a>  <!-- ページ遷移 ツアー３ -->

</div>
	 </div>
    <div class="button009">
	<a href="<%=request.getContextPath() %>">前の場所へ</a>  <!-- ページ遷移 ツアー1-->
</div>

    <p class="address"><a href="<%=request.getContextPath() %>"></a></p> <!-- 住所 -->
    <p><a href="<%=request.getContextPath() %>"></a></p>  <!-- 説明 -->

    <br><br>
    参照先：<a href="<%=request.getContextPath() %>"></a> <!-- 参照 -->



</body>
</html>