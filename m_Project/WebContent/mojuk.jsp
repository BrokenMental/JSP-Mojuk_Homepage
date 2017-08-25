<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>모죽 소개</title>
</head>
<body>
	<%@include file="main.jsp" %>
	<div id="main_ground">
		<div id="main">
			<!-- 메뉴 -->
			<ul style="text-align: center;">
				<li class="main_menu"><a href="javascript:;"
					style="text-decoration: none !important; color: #008000;"
					onclick="javascript:showtab(0);"><h4>
							<span style="color: #008000;">모죽 소개</span>
						</h4></a></li>
				<li class="main_menu"><a href="javascript:;"
					style="text-decoration: none !important; color: #008000;"
					onclick="javascript:showtab(1);"><h4>
							<span style="color: #008000;">모죽 명부</span>
						</h4></a></li>
			</ul>

			<div id="tab0" class="tab">
				<div class="bar" style="float: left; height: 3px;"></div>
				<div style="float: right;">◈ 모죽 소개</div>
				<br> <span style="color: #008000;"><h2>모죽 소개</h2></span>
				<hr>
				<hr>
			</div>

			<div id="tab1" class="tab"> 
				<div class="bar" style="float: left; height: 3px;"></div>
				<div style="float: right;">◈ 모죽 2017</div>
				<br> <span style="color: #008000;"><h2>모죽 명부</h2></span>
				<hr>
				<hr>
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
</body>
</html>