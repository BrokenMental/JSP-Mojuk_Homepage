<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>

<script type="text/javascript">
	function goto_relativepage() { //관련사이트 바로가기

		var select = document.getElementById("relative_page");
		var select_val = select.options[select.selectedIndex].value;

		if (select_val == '인하공업전문대학') {
			window.open('http://cms.itc.ac.kr/site/inhatc/main.do');
		} else if (select_val == '컴퓨터정보과') {
			window.open('http://cms.itc.ac.kr/site/cs/main.do');
		} else {
			alert("사이트를 선택하세요.");
			window.location.reload();
		}
	}
</script>



<link rel="stylesheet" type="text/css" href="gallery.css" />
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
			<div id="menu">
				<div class="logo">
					<img src="./로고.png" width="160" height="60">
				</div>
				<div class="menu" style="margin-left: 345px;">
					<h3>공지사항</h3>
				</div>
				<div class="menu">
					<h3>프로젝트</h3>
				</div>
				<div class="menu">
					<h3>자유게시판</h3>
				</div>
				<div class="menu">
					<h3>갤러리</h3>
				</div>
			</div>
			<div id="main_img">
				<img src="./메인이미지.png">
			</div>



			<!-- 하단(갤러리 본문) -->
			<div id="main_ground">
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

						<!-- 메인 -->
					</ul>
					<div id="tab0" class="tab">tab0</div>
					<div id="tab1" class="tab">
						<div class="bar" style="float: left; height: 3px;"></div>
						<div id="profile">


							<div style="float: right;">◈ 홈 > 프로필 > 2017</div>
							<br>
							<div style="float: right;">
								<table>
									<td>
										<!-- <a href="javascript:window.print()"><button id="print-button">화면인쇄</button></a>  -->

										<input type="button" value="화면인쇄"
										onclick="pagePrint(document.getElementById('profile'))">


									</td>
								</table>
							</div>


							<span style="color: #008000;"><h2>2017</h2></span> <span
								style="color: #008000">▶</span> 2017년 모죽동아리 부원 명부





							<!-- 교수님 -->
							<div class="member_line" style="margin-bottom: 5px;">
								<div class="member">
									교수님
									<table border="1" width="100%" height="90%">
										<tr style="height: 90%;">
											<td><a href="#"
												onClick="window.open('http://perhapslove.net/Tmp/Career.html','page_조규철교수님_blank')"
												title="개인 홈페이지로 이동합니다."><img src="./조규철_교수님.gif"
													width="85"></a></td>
										</tr>
										<tr>
											<td>♡</td>
										</tr>
										<tr>
											<td>조규철</td>
										</tr>
									</table>
								</div>
							</div>

							<!-- 회장 부회장 총무 -->
							<div class="member_line">
								<div class="member">
									회장
									<table border="1" width="100%" height="90%">
										<tr style="height: 90%;">
											<td><img src="./3-j_하진욱(회장).png" width="85"></td>
										</tr>
										<tr>
											<td>3-J</td>
										</tr>
										<tr>
											<td>하진욱</td>
										</tr>
									</table>
								</div>
								<div class="member">
									부회장
									<table border="1" width="100%" height="90%">
										<tr style="height: 90%;">
											<td><img src="./3-j_류성민(부회장).jpg" width="85"></td>
										</tr>
										<tr>
											<td>3-J</td>
										</tr>
										<tr>
											<td>류성민</td>
										</tr>
									</table>
								</div>
								<div class="member">
									총무
									<table border="1" width="100%" height="90%">
										<tr style="height: 90%;">
											<td>사진</td>
										</tr>
										<tr>
											<td>학번</td>
										</tr>
										<tr>
											<td>미정</td>
										</tr>
									</table>
								</div>
							</div>




							<span style="color: #008000">▶</span> 2학년


							<div class="member_line" style="margin-bottom: 5px;">
								<div class="member">
									대표
									<table border="1" width="100%" height="90%">
										<tr style="height: 90%;">
											<td><img src="./2-a_송우현.jpg" width="85"></td>
										</tr>
										<tr>
											<td>2-A</td>
										</tr>
										<tr>
											<td>송우현</td>
										</tr>
									</table>
								</div>
								<div class="member">
									<br>
									<table border="1" width="100%" height="90%">
										<tr style="height: 90%;">
											<td><img src="./2-j_정민혁.jpg" width="85"></td>
										</tr>
										<tr>
											<td>2-J</td>
										</tr>
										<tr>
											<td>정민혁</td>
										</tr>
									</table>
								</div>
								<div class="member">
									<br>
									<table border="1" width="100%" height="90%">
										<tr style="height: 90%;">
											<td>사진</td>
										</tr>
										<tr>
											<td>학번</td>
										</tr>
										<tr>
											<td>이름</td>
										</tr>
									</table>
								</div>
								<div class="member">
									<br>
									<table border="1" width="100%" height="90%">
										<tr style="height: 90%;">
											<td>사진</td>
										</tr>
										<tr>
											<td>학번</td>
										</tr>
										<tr>
											<td>이름</td>
										</tr>
									</table>
								</div>
								<div class="member">
									<br>
									<table border="1" width="100%" height="90%">
										<tr style="height: 90%;">
											<td>사진</td>
										</tr>
										<tr>
											<td>학번</td>
										</tr>
										<tr>
											<td>이름</td>
										</tr>
									</table>
								</div>
							</div>



							<span style="color: #008000">▶</span> 1학년

							<div class="member_line" style="margin-bottom: 5px;">
								<div class="member">
									대표
									<table border="1" width="100%" height="90%">
										<tr style="height: 90%;">
											<td><img src="./1-a_전세연(1학년대표).jpg" width="85"></td>
										</tr>
										<tr>
											<td>1-A</td>
										</tr>
										<tr>
											<td>전세연</td>
										</tr>
									</table>
								</div>

								<div class="member">
									<br>
									<table border="1" width="100%" height="90%">
										<tr style="height: 90%;">
											<td><img src="./1-a_김수지.jpg" width="85"></td>
										</tr>
										<tr>
											<td>1-A</td>
										</tr>
										<tr>
											<td>김수지</td>
										</tr>
									</table>
								</div>

								<div class="member">
									<br>
									<table border="1" width="100%" height="90%">
										<tr style="height: 90%;">
											<td><img src="./1-a_박규민.jpg" width="85"></td>
										</tr>
										<tr>
											<td>1-A</td>
										</tr>
										<tr>
											<td>박규민</td>
										</tr>
									</table>
								</div>

								<div class="member">
									<br>
									<table border="1" width="100%" height="90%">
										<tr style="height: 90%;">
											<td><img src="./1-a_윤미르.jpg" width="85"></td>
										</tr>
										<tr>
											<td>1-A</td>
										</tr>
										<tr>
											<td>윤미르</td>
										</tr>
									</table>
								</div>
							</div>

							<div class="member_line" style="margin-bottom: 5px;">
								<div class="member">
									<br>
									<table border="1" width="100%" height="90%">
										<tr style="height: 90%;">
											<td><img src="./1-b_김예지.jpg" width="85"></td>
										</tr>
										<tr>
											<td>1-B</td>
										</tr>
										<tr>
											<td>김예지</td>
										</tr>
									</table>
								</div>

								<div class="member">
									<br>
									<table border="1" width="100%" height="90%">
										<tr style="height: 90%;">
											<td><img src="./1-b_김경원.jpg" width="85"></td>
										</tr>
										<tr>
											<td>1-B</td>
										</tr>
										<tr>
											<td>김경원</td>
										</tr>
									</table>
								</div>
								<div class="member">
									<br>
									<table border="1" width="100%" height="90%">
										<tr style="height: 90%;">
											<td><img src="./1-b_조석희.jpg" width="85"></td>
										</tr>
										<tr>
											<td>1-B</td>
										</tr>
										<tr>
											<td>조석희</td>
										</tr>
									</table>
								</div>
								<div class="member">
									<br>
									<table border="1" width="100%" height="90%">
										<tr style="height: 90%;">
											<td><img src="./1-b_박치현.jpg" width="85"></td>
										</tr>
										<tr>
											<td>1-B</td>
										</tr>
										<tr>
											<td>박치현</td>
										</tr>
									</table>
								</div>
								<div class="member">
									<br>
									<table border="1" width="100%" height="90%">
										<tr style="height: 90%;">
											<td>사진</td>
										</tr>
										<tr>
											<td>1-B</td>
										</tr>
										<tr>
											<td>이항주</td>
										</tr>
									</table>
								</div>
							</div>

							<div class="member_line" style="margin-bottom: 5px;">
								<div class="member">
									<br>
									<table border="1" width="100%" height="90%">
										<tr style="height: 90%;">
											<td><img src="./1-j_김정욱.jpg" width="85"></td>
										</tr>
										<tr>
											<td>1-J</td>
										</tr>
										<tr>
											<td>김정욱</td>
										</tr>
									</table>
								</div>
								<div class="member">
									<br>
									<table border="1" width="100%" height="90%">
										<tr style="height: 90%;">
											<td><img src="./1-j_곽창훈.jpg" width="85"></td>
										</tr>
										<tr>
											<td>1-J</td>
										</tr>
										<tr>
											<td>곽창훈</td>
										</tr>
									</table>
								</div>
								<div class="member">
									<br>
									<table border="1" width="100%" height="90%">
										<tr style="height: 90%;">
											<td><img src="./1-j_권수지.jpg" width="85"></td>
										</tr>
										<tr>
											<td>1-J</td>
										</tr>
										<tr>
											<td>권수지</td>
										</tr>
									</table>
								</div>
								<div class="member">
									<br>
									<table border="1" width="100%" height="90%">
										<tr style="height: 90%;">
											<td><img src="./1-j_박재현.jpg" width="85"></td>
										</tr>
										<tr>
											<td>1-J</td>
										</tr>
										<tr>
											<td>박재현</td>
										</tr>
									</table>
								</div>

								<div class="member">
									<br>
									<table border="1" width="100%" height="90%">
										<tr style="height: 90%;">
											<td><img src="./1-j_송지혜.jpg" width="85"></td>
										</tr>
										<tr>
											<td>1-J</td>
										</tr>
										<tr>
											<td>송지혜</td>
										</tr>
									</table>
								</div>
							</div>

							<div class="member_line" style="margin-bottom: 5px;">
								<div class="member">
									<br>
									<table border="1" width="100%" height="90%">
										<tr style="height: 90%;">
											<td><img src="./1-j_심재혁.jpg" width="85"></td>
										</tr>
										<tr>
											<td>1-J</td>
										</tr>
										<tr>
											<td>심재혁</td>
										</tr>
									</table>
								</div>
								<div class="member">
									<br>
									<table border="1" width="100%" height="90%">
										<tr style="height: 90%;">
											<td><img src="./1-j_이나경.jpg" width="85"></td>
										</tr>
										<tr>
											<td>1-J</td>
										</tr>
										<tr>
											<td>이나경</td>
										</tr>
									</table>
								</div>
								<div class="member">
									<br>
									<table border="1" width="100%" height="90%">
										<tr style="height: 90%;">
											<td><img src="./1-j_이해찬.jpg" width="85"></td>
										</tr>
										<tr>
											<td>1-J</td>
										</tr>
										<tr>
											<td>이해찬</td>
										</tr>
									</table>
								</div>
							</div>

							<!-- 군대 -->
							<span style="color: #008000">▶</span> 군대 / 휴학 ☆

							<div class="member_line">
								<div class="member">
									<table border="1" width="100%" height="90%">
										<tr style="height: 90%;">
											<td>사진</td>
										</tr>
										<tr>
											<td>군대</td>
										</tr>
										<tr>
											<td>박규민</td>
										</tr>
									</table>
								</div>
								<div class="member">
									<table border="1" width="100%" height="90%">
										<tr style="height: 90%;">
											<td>사진</td>
										</tr>
										<tr>
											<td>군대</td>
										</tr>
										<tr>
											<td>최혁준</td>
										</tr>
									</table>
								</div>
								<div class="member">
									<table border="1" width="100%" height="90%">
										<tr style="height: 90%;">
											<td>사진</td>
										</tr>
										<tr>
											<td>군대</td>
										</tr>
										<tr>
											<td>이도엽</td>
										</tr>
									</table>
								</div>
							</div>

						</div>
						<!-- profile_end -->
					</div>
					<div id="tab2" class="tab">tab2</div>
					<div id="tab3" class="tab">tab3</div>
					<div id="tab4" class="tab">tab4</div>
					<div id="tab5" class="tab">
						<div class="bar" style="float: left; height: 3px;"></div>
						<div id="gallery">

							<div style="float: right;">◈ 홈 > 갤러리</div>
							<br>
							<div style="float: right;">
								<table>
									<td>
										<!-- <a href="javascript:window.print()"><button id="print-button">화면인쇄</button></a>  -->

										<input type="button" value="화면인쇄"
										onclick="pagePrint(document.getElementById('gallery'))">


									</td>
								</table>
							</div>


							<span style="color: #008000;"><h2>모죽 사진관</h2></span>
							<hr>



							<from>
							<div class="gallery_line">
								<div class="photo" style="margin-left: 50px;">
									<table>
										<tr width=100% height=130>
											<td>사진</td>
										</tr>
										<tr>
											<td>제목</td>
										</tr>
									</table>
								</div>
								<div class="photo">
									<table>
										<tr width=100% height=130>
											<td>사진</td>
										</tr>
										<tr>
											<td>제목</td>
										</tr>
									</table>
								</div>
								<div class="photo">
									<table>
										<tr width=100% height=130>
											<td>사진</td>
										</tr>
										<tr>
											<td>제목</td>
										</tr>
									</table>
								</div>
								<div class="photo">
									<table>
										<tr width=100% height=130>
											<td>사진</td>
										</tr>
										<tr>
											<td>제목</td>
										</tr>
									</table>
								</div>
							</div>
							<!-- gallery_line_end -->

							<div class="gallery_line">
								<div class="photo" style="margin-left: 50px;">
									<table>
										<tr width=100% height=130>
											<td>사진</td>
										</tr>
										<tr>
											<td>제목</td>
										</tr>
									</table>
								</div>
								<div class="photo">
									<table>
										<tr width=100% height=130>
											<td>사진</td>
										</tr>
										<tr>
											<td>제목</td>
										</tr>
									</table>
								</div>
								<div class="photo">
									<table>
										<tr width=100% height=130>
											<td>사진</td>
										</tr>
										<tr>
											<td>제목</td>
										</tr>
									</table>
								</div>
								<div class="photo">
									<table>
										<tr width=100% height=130>
											<td>사진</td>
										</tr>
										<tr>
											<td>제목</td>
										</tr>
									</table>
								</div>
							</div>
							<!-- gallery_line_end --> </from>
							<hr>

							<div class="pagination">
								<div class="move">
									<img src="./이동버튼2.png" style="width: 100%;">
								</div>
								<div class="move">1</div>
								<div class="move">2</div>
								<div class="move">
									<img src="./이동버튼1.png" style="width: 100%;">
								</div>
							</div>
							<!-- pagination_end -->
						</div>
						<!-- gallery_end -->
					</div>
				</div>
				<!-- main_end -->
			</div>
			<!-- main ground_end -->
			<div id="footer">
				<img src="./하단.png">
			</div>

		</div>
		<!-- container_end -->
	</div>
</body>

</html>

<script>
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
