<%@ page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>게시판</title>
</head>
<body>
	<%
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/mojuk?characterEncoding=utf8&amp;useSSL=false&amp;autoReconnection=true";
		String id = "root";
		String pass = "1234";

		Connection conn = DriverManager.getConnection(url, id, pass);
		Statement stmt = conn.createStatement();

		String SQL = "select * from notice";
		ResultSet rs = stmt.executeQuery(SQL);

		while (rs.next()) {
			out.println(rs.getString(1) + "<br>");
			out.println(rs.getString(2) + "<br>");
			out.println(rs.getString(3) + "<br>");
		}
		stmt.close();
		conn.close();
	%>
</body>
</html>