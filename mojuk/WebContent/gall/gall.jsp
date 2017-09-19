<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>갤러리</title>
<link rel="shortcut icon" type="image/x-icon" href="../img/favicon.ico" />
</head>
<body>
	<center>
		<%@include file="../include/main_include.jsp"%>
		<!-- 이미지 -->
		<div id="list_img">
			<img src="../img/null_img.png" style="width: 1520px;">
		</div>
		<div id="main_ground">
			<div id="main">
				<!-- 메뉴 -->
				<ul style="text-align: center;">
					<li class="main_menu"><a href="javascript:;"
						style="text-decoration: none !important;"
						onclick="javascript:showtab(0);"><h4>
								<span style="color: #008000">2017</span>
							</h4></a></li>
					<li class="main_menu"><a href="javascript:;"
						style="text-decoration: none !important;"
						onclick="javascript:showtab(1);"><h4>
								<span style="color: #008000">2018</span>
							</h4></a></li>
				</ul>

				<div id="tab0" class="tab" style="margin-top:70px;">
					<div class="bar" style="float: left; height: 3px;"></div>
					<div style="float: right;">◈2017</div>
					<br> <span style="color: #008000;"><h2>2017</h2></span>
					<hr>
				</div>

				<div id="tab1" class="tab" style="margin-top:70px;">
					<div class="bar" style="float: left; height: 3px;"></div>
					<div style="float: right;">◈ 2018</div>
					<br> <span style="color: #008000;"><h2>2018</h2></span>
					<hr>
					<%@include file="list.jsp" %>
				</div>
			</div>
			<!-- main_end -->
		</div>
		<%@include file="../include/bottom.jsp"%>
		<script>
			function showtab(a) {
				for (i = 0; i <= 1; i++) {

					var target = document.getElementById('tab' + i)

					if (i == a) {
						target.style.display = 'block';
					} else {
						target.style.display = 'none';
					}
				}
			}
		</script>
	</center>
</body>
</html>