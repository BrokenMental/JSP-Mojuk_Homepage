<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.ArrayList"
	import="mojuk.inhatc.user"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
	<jsp:useBean id="Login" class="mojuk.inhatc.connection" scope="page" />
	<%
		request.setCharacterEncoding("UTF-8");
		String idc = request.getParameter("id");
		String pwc = request.getParameter("pw");
		String id = "";
		String pw = "";

		String[] list = Login.getLogin();
		for (String log : list) {
			if (list[0].equals(idc)) {
				id = list[0];
				pw = list[1];
			}
		}
		if (idc.equals(id) && pwc.equals(pw)) {
			session.setAttribute("id", idc);
			out.println("<script>");
			out.println("alert('로그인에 성공하셨습니다');");
			out.println("location.href='../main.jsp'");
			out.println("</script>");
		} else {
			out.println("<script>");
			out.println("alert('아이디 혹은 비밀번호를 확인하세요');");
			out.println("window.location.href='history.back()';");
			out.println("</script>");
		}
	%>
</body>
</html>