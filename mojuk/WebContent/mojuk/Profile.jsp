<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>소개</title>
</head>
<body>
	<jsp:useBean id="Profile" class="mojuk.inhatc.connection" scope="page" />
	<center>
		<%
			String img = null, content = null, location = null;
			ArrayList list = (ArrayList) Profile.getProfile();
			for (int i = 0; i < list.size(); i = i + 3) {
				img = (String) list.get(i);
				content = (String) list.get(i + 1);
				location = (String) list.get(i + 2);
		%>
		<table border="1" height="200px" width="500px"
			style="border-collapse: collapse;">
			<tr>
				<td rowspan="2" height="100px" width="150px">사진<%=img%></td>
				<td height="150px">소개 문구<%=content%></td>
			</tr>
			<tr>
				<td>개인페이지 링크<%=location%></td>
			</tr>
		</table>
		<%
			}
		%>
	</center>
</body>
</html>