<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>���� �Խ���</title>
<link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico" />
<link rel="stylesheet" type="text/css" href="css/main.css" />
</head>
<body>
	<div style="width: 0px; margin: auto;">
		<div id="container">
			<!-- ��� -->
			<%@include file="include/top.jsp"%>
			<div class="bar"></div>
			<!-- ��� �޴� -->
			<div id="menu">
				<div class="logo">
					<a href="main.jsp"><img src="img/logo.png" width="160"
						height="60"></a>
				</div>
				<div class="menu" style="margin-left: 345px;">
					<h3>
						<a href="mojuk.jsp"
							style="text-decoration: none !important; color: black;">����</a>
					</h3>
				</div>
				<div class="menu">
					<h3>
						<a href="notice.jsp"
							style="text-decoration: none !important; color: black;">��������</a>
					</h3>
				</div>
				<div class="menu">
					<h3>
						<a href="project.jsp"
							style="text-decoration: none !important; color: black;">������Ʈ</a>
					</h3>
				</div>
				<div class="menu">
					<h3>
						<a href="board.jsp"
							style="text-decoration: none !important; color: black;">�����Խ���</a>
					</h3>
				</div>
				<div class="menu">
					<h3>
						<a href="gall.jsp"
							style="text-decoration: none !important; color: black;">������</a>
					</h3>
				</div>
			</div>
			<!-- ���� �̹��� -->
			<div id="main_img">
				<img src="img/main_img.png">
			</div>
			<!-- �ϴ�(����) -->
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