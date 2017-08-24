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

	function showtab(a) {
		for (i = 0; i <= 5; i++) {

			var target = document.getElementById('tab' + i)

			if (i == a) {
				target.style.display = 'block';
			} else {
				target.style.display = 'none';
			}
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
						<a href="mojuk" style="text-decoration: none !important;">모죽</a>
					</h3>
				</div>
				<div class="menu">
					<h3>
						<a href="notice.jsp" style="text-decoration: none !important;">공지사항</a>
					</h3>
				</div>
				<div class="menu">
					<h3>
						<a href="project.jsp" style="text-decoration: none !important;">프로젝트</a>
					</h3>
				</div>
				<div class="menu">
					<h3>
						<a href="board.jsp" style="text-decoration: none !important;">자유게시판</a>
					</h3>
				</div>
				<div class="menu">
					<h3>
						<a href="gall.jsp" style="text-decoration: none !important;">갤러리</a>
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
			<%-- <div id="main_ground">
				<div id="main">
					<!-- 메뉴 -->
					<ul>
						<li class="main_menu"><a href="javascript:;"
							onclick="javascript:showtab(0);"><h4>
									<span style="color: #008000">동아리</span>소개
								</h4></a></li>
						<li class="main_menu"><a href="javascript:;"
							onclick="javascript:showtab(1);"><h4>
									<span style="color: #008000">동아리</span>명부
								</h4></a></li>
						<li class="main_menu"><a href="javascript:;"
							onclick="javascript:showtab(2);"><h4>
									<span style="color: #008000">공지</span>사항
								</h4></a></li>
						<li class="main_menu"><a href="javascript:;"
							onclick="javascript:showtab(3);"><h4>
									<span style="color: #008000">자유</span>게시판
								</h4></a></li>
						<li class="main_menu"><a href="javascript:;"
							onclick="javascript:showtab(4);"><h4>
									<span style="color: #008000">프로</span>젝트
								</h4></a></li>
						<li class="main_menu"><a href="javascript:;"
							onclick="javascript:showtab(5);"><h4>
									<span style="color: #008000">갤러리</span>
								</h4></a></li>
					</ul>

					<div id="tab0" class="tab">
						<div class="bar" style="float: left; height: 3px;"></div>
						<div style="float: right;">◈ 홈 > 동아리소개</div>
						<br>
						<span style="color: #008000;"><h2>동아리소개</h2></span>
						<hr>
						<hr>
					</div>

					<div id="tab1" class="tab">
						<div class="bar" style="float: left; height: 3px;"></div>
						<div style="float: right;">◈ 홈 > 프로필 > 2017</div>
						<br>
						<span style="color: #008000;"><h2>2017</h2></span>
						<hr>
						<hr>
					</div>

					<div id="tab2" class="tab">
						<div class="bar" style="float: left; height: 3px;"></div>
						<div style="float: right;">◈ 홈 > 공지사항</div>
						<br>
						<span style="color: #008000;"><h2>공지사항</h2></span>
						<hr>
						<hr>
					</div>

					<div id="tab3" class="tab">
						<div class="bar" style="float: left; height: 3px;"></div>
						<div style="float: right;">◈ 홈 > 자유게시판</div>
						<br>
						<span style="color: #008000;"><h2>자유게시판</h2></span>
						<hr>
						<hr>
					</div>

					<div id="tab4" class="tab">
						<div class="bar" style="float: left; height: 3px;"></div>
						<div style="float: right;">◈ 홈 > 프로젝트</div>
						<br>
						<span style="color: #008000;"><h2>프로젝트</h2></span>
						<hr>
						<%@include file="/pj_list.jsp"%>
						<hr>
					</div>
					
					<div id="tab5" class="tab">
						<div class="bar" style="float: left; height: 3px;"></div>
						<div id="gallery">
							<div style="float: right;">◈ 홈 > 갤러리</div>
							<br> <span style="color: #008000;"><h2>모죽 사진관</h2></span>
							<hr>
							<hr>
							<div class="pagination">
								<div class="move">
									<img src="image/move2.png" style="width: 100%;">
								</div>
								<div class="move">1</div>
								<div class="move">2</div>
								<div class="move">
									<img src="image/move1.png" style="width: 100%;">
								</div>
							</div>
							<!-- pagination_end -->
						</div>
						<!-- gallery_end -->
					</div>
				</div>
				<!-- main_end -->
			</div> --%>
			<!-- main ground_end -->
			<div id="footer">
				<img src="image/bottom.png">
			</div>
		</div>
		<!-- container_end -->
	</div>
</body>
</html>