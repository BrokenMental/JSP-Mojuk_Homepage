<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>소개</title>
<link rel="shortcut icon" type="image/x-icon" href="../img/favicon.ico" />
</head>
<body>
	<%@include file="../include/main_include.jsp"%>
	<!-- 이미지 -->
	<div id="list_img">
		<img src="../img/null_img.png" style="width: 1520px;">
	</div>
	<jsp:useBean id="Profile" class="mojuk.inhatc.connection" scope="page" />
	<center>
		<%
			request.setCharacterEncoding("UTF-8");
			String img = null, content = null, location = null;
			ArrayList list = (ArrayList) Profile.getProfile();
			for (int i = 0; i < list.size(); i = i + 3) {
				img = "upload/" + (String) list.get(i);
				System.out.println(img);
				content = (String) list.get(i + 1);
				location = (String) list.get(i + 2);
		%>
		<table border="1" height="200px" width="500px"
			style="border-collapse: collapse;">
			<tr>
				<td rowspan="2" height="100px" width="150px"><img
					src="<%=img%>" height="200px"></td>
				<td height="150px"><%=content%></td>
			</tr>
			<tr>
				<td><%=location%></td>
			</tr>
		</table>
		<%
			}
		%>
		<form action="write.jsp" style="margin:5px;">
			<input type="submit" value="프로필 작성">
		</form>
		<%@include file="../include/bottom.jsp"%>
	</center>
</body>
</html>