<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>글 수정</title>
<link rel="shortcut icon" type="image/x-icon" href="../img/favicon.ico" />
</head>

<script>
	function move(url) {
		location.href = url;
	}

	function boardUpdateCheck() {
		var form = document.BoardUpdateForm;
		return true;
	}
	/* document.BoardUpdateForm은 밑에서 <form name="BoardUpdateForm">를 체크하는 기능 */
</script>

<style>
@import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);

body {
	font-family: 'Nanum Gothic', sans-serif;
}
</style>

<body>
	<%@include file="../include/main_include.jsp"%>
	<form name="BoardUpdateForm" method="post"
		action="Board_Write_action.jsp" onsubmit="return boardUpdateCheck();">
		<table summary="글수정 전체 테이블">
			<colgroup>
				<col width="20%">
				<col width="80%">
			</colgroup>
			<table summary="테이블 구성">
				<caption>
					<b>글 수정하기</b>
				</caption>
				<tr>
					<td>작성자</td>
					<td><input type=text name=name size=10 maxlength=8></td>
				</tr>
				<tr>
					<td>E-Mail</td>
					<td><input type=text name=email size=30></td>
				</tr>
				<tr>
					<td>홈페이지</td>
					<td><input type=text name=homepage size=30></td>
				</tr>
				<tr>
					<td>제 목</td>
					<td><input type=text name=title></td>
				</tr>
				<tr>
					<td>내 용</td>
					<td><textarea name=content rows="10" cols="100"></textarea></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type=password name=password size=15 maxlength=15></td>
				</tr>
				<tr>
					<td colspan=2><hr size=1></td>
				</tr>
				<tr>
					<td colspan="2"><div align="center">
							<input type="submit" value="수정 완료">&nbsp;&nbsp; <input
								type=reset value="다시 수정"> <input type="button"
								value="뒤로" onclick="move('Board_List.jsp');">
						</div></td>
				</tr>
			</table>
		</table>
	</form>
	<%@include file="../include/bottom.jsp"%>
</body>
</html>