<%@ page language="java" contentType="text/html; charset=windows-31j"
    pageEncoding="windows-31j"%>
<!DOCTYPE HTML PUBLIC "-//W3C//CTC HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-31j">
<title>仮想トラベル</title>

<link rel="stylesheet" href="<%=request.getContextPath() %>/css/style001.css">  <!--  CSSファイルのリンク -->

</head>
<body>


  <div class="photo-container">
    <div class="photo-caption">
      <h2 style="text-align:left"><%=request.getAttribute("name") %></h2> <!-- 名所 -->

   <img src= " <%=request.getAttribute("pic") %>"  width="1150" height="600">  <!-- 写真 -->

    </div>
    <div class="button008">
	<a href="<%=request.getContextPath() %>/screen3">次の場所へ</a>  <!-- ページ遷移 ツアー３ -->

</div>
	 </div>
    <div class="button009">
	<a href="<%=request.getContextPath() %>/screen1">前の場所へ</a>  <!-- ページ遷移 ツアー1-->
</div>

    <p class="address"> <%=request.getAttribute("place") %> </p> <!-- 住所 -->
    <p>  <%=request.getAttribute("text") %>  </p>  <!-- 説明 -->

    <br><br>
    参照先：  <%=request.getAttribute("link") %> <!-- 参照 -->



</body>
</html>