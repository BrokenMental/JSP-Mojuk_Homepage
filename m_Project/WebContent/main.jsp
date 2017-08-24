<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>홈페이지 메인</title>
<script type="text/javascript">
	function goto_relativepage() { //관련사이트 바로가기
		var select = document.getElementById("relative_page");
		var select_val = select.options[select.selectedIndex].value;

		if (select_val == '인하공업전문대학교') {
			window.open('http://cms.itc.ac.kr/site/inhatc/main.do');
		} else if (select_val == '컴퓨터정보과') {
			window.open('http://cms.itc.ac.kr/site/cs/main.do');
		} else {
			alert("사이트를 선택하세요.");
			window.location.reload();
		}
	}
</script>
<link rel="stylesheet" type="text/css" href="css/main.css" />
</head>
<body>
	<div style="width: 0px; margin: auto;">
		<div id="container">
			<!-- 상단 -->
			<div id="header">
				<div id="go_page">
					<select name="relative_hpg" id="relative_page">
						<option value="">관련홈페이지선택</option>
						<option value="인하공업전문대학교">인하공업전문대학교</option>
						<option value="컴퓨터정보과">컴퓨터정보과</option>
					</select> <input type="button" value="이동" onclick="goto_relativepage()"
						title="새창">
				</div>
				<div id="login" style="">
					<input type="text" name="id" value="아이디" size="8"> <input
						type="password" name="pass" value="비밀번호" size="8"> <input
						type="submit" value="로그인">
				</div>
			</div>
			<div class="bar"></div>
			<!-- 상단 메뉴 -->
			<div id="menu">
				<div class="logo">
					<a href="main.jsp"><img src="img/logo.png" width="160"
						height="60"></a>
				</div>
				<div class="menu" style="margin-left: 345px;">
					<h3>
						<a href="mojuk" style="text-decoration: none !important; color: black;">모죽</a>
					</h3>
				</div>
				<div class="menu">
					<h3>
						<a href="notice.jsp" style="text-decoration: none !important; color: black;">공지사항</a>
					</h3>
				</div>
				<div class="menu">
					<h3>
						<a href="project.jsp" style="text-decoration: none !important; color: black;">프로젝트</a>
					</h3>
				</div>
				<div class="menu">
					<h3>
						<a href="board.jsp" style="text-decoration: none !important; color: black;">자유게시판</a>
					</h3>
				</div>
				<div class="menu">
					<h3>
						<a href="gall.jsp" style="text-decoration: none !important; color: black;">갤러리</a>
					</h3>
				</div>
			</div>
			<!-- 메인 이미지 -->
			<div id="main_img">
				<img src="img/main_img.png">
			</div>
			<!-- 하단(본문) -->
			<div id="main_ground">
				<div id="main"></div>
			</div>
			<!-- main ground_end -->
			<div id="footer">
				<img src="img/bottom.png">
			</div>
		</div>
		<!-- container_end -->
	</div>
</body>
</html>