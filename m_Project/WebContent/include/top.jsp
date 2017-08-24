<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
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
</body>
</html>