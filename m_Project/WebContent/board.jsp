<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>자유 게시판</title>
<link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico" />
<link rel="stylesheet" type="text/css" href="css/main.css" />
</head>
<body>
	<div style="width: 0px; margin: auto;">
		<div id="container">
			<!-- 상단 -->
			<%@include file="include/top.jsp"%>
			<div class="bar"></div>
			<!-- 상단 메뉴 -->
			<div id="menu">
				<div class="logo">
					<a href="main.jsp"><img src="img/logo.png" width="160"
						height="60"></a>
				</div>
				<div class="menu" style="margin-left: 345px;">
					<h3>
						<a href="mojuk.jsp"
							style="text-decoration: none !important; color: black;">모죽</a>
					</h3>
				</div>
				<div class="menu">
					<h3>
						<a href="notice.jsp"
							style="text-decoration: none !important; color: black;">공지사항</a>
					</h3>
				</div>
				<div class="menu">
					<h3>
						<a href="project.jsp"
							style="text-decoration: none !important; color: black;">프로젝트</a>
					</h3>
				</div>
				<div class="menu">
					<h3>
						<a href="board.jsp"
							style="text-decoration: none !important; color: black;">자유게시판</a>
					</h3>
				</div>
				<div class="menu">
					<h3>
						<a href="gall.jsp"
							style="text-decoration: none !important; color: black;">갤러리</a>
					</h3>
				</div>
			</div>
			<!-- 메인 이미지 -->
			<div id="main_img">
				<img src="img/main_img.png">
			</div>
			<!-- 하단(본문) -->
			<div id="main_ground">
				<div id="main">
					<center>
					</center>
				</div>
			</div>
			<!-- main ground_end -->
		</div>
		<!-- container_end -->
	</div>
	<%@include file="board/list.jsp"%>
	<%@include file="include/bottom.jsp"%>
</body>
</html>