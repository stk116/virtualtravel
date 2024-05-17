<%@ page language="java" contentType="text/html; charset=windows-31j"
    pageEncoding="windows-31j"%>
<!DOCTYPE HTML PUBLIC "-//W3C//CTC HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-31j">
<title>仮想トラベル</title>

<link rel="stylesheet" href="<%=request.getContextPath() %>/css/style001.css">  <!--  CSSファイルのリンク -->


</head>
<body bgcolor="black">

<div class="photo-container">
    <div class="photo-caption">
      <h2 style="text-align:left"><p style="color: white;">　<%=request.getAttribute("name") %></p> </h2> <!-- 名所 -->
  	  <img src="<%=request.getAttribute("pic") %>" width="1150" height="600">
   														<!-- 写真 -->
    </div>

    <div class="button008">
		<a href="<%=request.getContextPath() %>/dbtest">次へ</a>  <!-- ページ遷移 続ける/やめる-->
	</div>


    <div class="button009">
	<a href="<%=request.getContextPath() %>/screen2">前の場所へ</a>  <!-- ページ遷移 ツアー２-->
	</div>

    <p style="color: white;"> <%=request.getAttribute("place") %> </p> <!-- 住所 -->
    <p style="color: white;">  <%=request.getAttribute("text") %> </p>  <!-- 説明 -->

    <p style="color: white;">参照先： <%=request.getAttribute("link") %> </p> <!-- 参照 -->

</div>
</body>
</html>