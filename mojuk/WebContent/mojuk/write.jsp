<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>프로필작성</title>
</head>
<body>
	<form id="form1" runat="server" action="write_ok.jsp">
		<table border="1" height="200px" width="500px"
			style="border-collapse: collapse;">
			<tr>
				<td rowspan="2" height="100px" width="150px"><img id="blah"
					src="#" height="170px" style="margin: 0 auto;" /></td>
				<td height="150px"><textarea name="content" placeholder="소개 문구"
						style="resize: none; height: 150px; width: 350px; border: 0px;"></textarea></td>
			</tr>
			<tr>
				<td><input type="text" name="location"
					style="height: 20px; width: 350px; border: 0px;"
					placeholder="개인페이지 링크"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="file" id="imgInp" name="img"
					style="width: 500px;" /></td>
			</tr>
			<tr>
				<td colspan="2" style="width: 500px; border: 0px;"><input
					type="submit" value="저장" style="float: right;"
					OnClick="javascript:writeCheck();"></td>
			</tr>
		</table>
	</form>
	<!-- 저장 버튼 클릭시 확인 스크립트 동작 안함, 사진 저장 시 저장 업로드 경로를 어떻게 할까 고민 -->
	<script type="text/javascript"
		src="http://code.jquery.com/jquery-2.1.0.min.js"></script>
	<script type="text/javascript">
		$(function() {
			$("#imgInp").on('change', function() {
				readURL(this);
			});
		});

		function readURL(input) {
			if (input.files && input.files[0]) {
				var reader = new FileReader();

				reader.onload = function(e) {
					$('#blah').attr('src', e.target.result);
				}

				reader.readAsDataURL(input.files[0]);
			}
		}

		function writeCheck() {
			var form = document.writeform;

			if (!form.img.value) {
				alert("사진을 넣어주세요");
				form.img.focus();
				return;
			}

			if (!form.content.value) {
				alert("소개문구를 넣어주세요");
				form.content.focus();
				return;
			}

			if (!form.location.value) {
				alert("링크를 넣어주세요");
				form.location.focus();
				return;
			}

			form.submit();
		}
	</script>
	<!-- 이미지 미리보기 출처 : http://touchsoul.tistory.com/84 -->
</body>
</html>