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
				<option value="">����Ȩ����������</option>
				<option value="���ϰ����������б�">���ϰ����������б�</option>
				<option value="��ǻ��������">��ǻ��������</option>
			</select> <input type="button" value="�̵�" onclick="goto_relativepage()"
				title="��â">
		</div>
		<div id="login" style="">
			<input type="text" name="id" value="���̵�" size="8"> <input
				type="password" name="pass" value="��й�ȣ" size="8"> <input
				type="submit" value="�α���">
		</div>
	</div>
	<script type="text/javascript">
		function goto_relativepage() { //���û���Ʈ �ٷΰ���
			var select = document.getElementById("relative_page");
			var select_val = select.options[select.selectedIndex].value;

			if (select_val == '���ϰ����������б�') {
				window.open('http://cms.itc.ac.kr/site/inhatc/main.do');
			} else if (select_val == '��ǻ��������') {
				window.open('http://cms.itc.ac.kr/site/cs/main.do');
			} else {
				alert("����Ʈ�� �����ϼ���.");
				window.location.reload();
			}
		}
	</script>
</body>
</html>