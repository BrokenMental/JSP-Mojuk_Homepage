<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<center>
	<form name="login" method="post" action=login_ok.jsp>
		<div id="login" style="">
			<input type="text" name="id" placeholder="아이디" size="8"> <input
				type="password" name="pw" placeholder="비밀번호" size="8"> <input
				type="submit" value="로그인" Onclick="javascript:writeCheck();">
		</div>
	</form>
</center>
<script>
	function
			writeCheck() {
		var form=document.login;
			if (!form.id.value) {
			alert("아이디를
			입력해주세요");
			form.text.focus();
			return;
		}
		if (!form.pw.value) {
			alert("비밀번호를입력해주세요");
			form.text.focus();
			return;
		}
		form.submit();
	}
</script>