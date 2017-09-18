<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/test1";
		String id = "root";
		String pass = "1234";
		int total = 0;

		try {
			Connection conn = DriverManager.getConnection(url, id, pass);
			Statement stmt = conn.createStatement();

			String sqlCount = "SELECT COUNT(*) FROM test_a";
			ResultSet rs = stmt.executeQuery(sqlCount);

			if (rs.next()) {
				total = rs.getInt(1);
			}
			rs.close();
			out.print("총 게시물 : " + total + "개");

			String sqlList = "SELECT name, title, no, hit from test_a order by no DESC";
			rs = stmt.executeQuery(sqlList);
	%>

	<table width="85%" cellpadding="0" cellspacing="0" border="0" align="center">
		<tr height="5">
			<td width="5"></td>
		</tr>
		<tr
			style="text-align: center;">
			<td width="5" height="30"></td>
			<td width="73">번호</td>
			<td width="300">제목</td>
			<td width="73">작성자</td>
			<td width="58">조회수</td>
			<td width="7"></td>
		</tr>
		<%
			if (total == 0) {
		%>
		<tr align="center" bgcolor="#FFFFFF" height="30">
			<td colspan="6">등록된 글이 없습니다.</td>
		</tr>
		<%
			} else {

					while (rs.next()) {
						int idx = rs.getInt(3);
						String name = rs.getString(1);
						String title = rs.getString(2);
						int hit = rs.getInt(4);
		%>
		<tr height="25" align="center">
			<td>&nbsp;</td>
			<td><%=idx%></td>
			<td align="left"><a href="r_test.jsp?idx=<%=idx%>"><%=title%></a></td>
			<td align="center"><%=name%></td>
			<td align="center"><%=hit%></td>
			<td>&nbsp;</td>
		</tr>
		<tr height="1" bgcolor="#D2D2D2">
			<td colspan="6"></td>
		</tr>

		<%
			}
				}
				rs.close();
				stmt.close();
				conn.close();
			} catch (SQLException e) {
				out.println(e.toString());
			} finally {

			}
		%>

		<tr height="1" bgcolor="#82B5DF">
			<td colspan="6" width="752"></td>
		</tr>
	</table>

	<table width="100%" cellpadding="0" cellspacing="0" border="0">
		<tr>
			<td colspan="4" height="5"></td>
		</tr>
		<tr align="center">
			<td><input type=button value="글쓰기"
				OnClick="window.location='write.jsp'"></td>
		</tr>
	</table>
</body>
</html>