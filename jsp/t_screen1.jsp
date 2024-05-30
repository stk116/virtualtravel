<%@ page language="java" contentType="text/html; charset=windows-31j"
    pageEncoding="windows-31j"%>
<!DOCTYPE HTML PUBLIC "-//W3C//CTC HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-31j">
<title>仮想トラベル</title>

<link rel="stylesheet" href="<%=request.getContextPath() %>/css/style001.css">  <!--  CSSのリンク -->

		<script type="text/javascript">

		window.onbeforeunload = function() {
		};
		window.onunload = function() {
		};
		  window.onload = function() {
			    history.pushState(null, null, "/virtualtravel/tour.html");
			    window.addEventListener('popstate', function () {
			      history.pushState(null, null, "/virtualtravel/404.html");
			      window.location.href = "http://localhost:8080/virtualtravel/jsp/title.jsp";
			    });
			  }
		</script>

</head>
<body bgcolor="black">

  <br>

  <div class="photo-container">
    <div class="photo-caption">

      <div style="text-align:center" class="zoom-in">
        <div class="zoom-in-img">

          <img src= " <%=request.getAttribute("pic") %>">  <!-- 写真 -->
          <h2 style="text-align:left"><p style="color: white;">　<%=request.getAttribute("name") %></p></h2>	<!-- 名所 -->
        </div>
      </div>
    </div>
    <div class="button008">
        <a href="<%=request.getContextPath() %>/screen2">次の場所へ</a>  <!-- 次のページのリンク　ツアー2 -->
    </div>
    <p style="color: white;"> <%=request.getAttribute("place") %> </p> <!-- 住所 -->
    <p style="color: white;">  <%=request.getAttribute("text") %> </p>  <!-- 説明 -->

    <p style="color: white;">参照先： <%=request.getAttribute("link") %> </p> <!-- 参照 -->
  </div>


</body>
</html>