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

		String name = request.getParameter("name"); //w.jsp에서 name에 입력한 데이터값
		String title = request.getParameter("title"); //w.jsp에서 title에 입력한 데이터값
		String memo = request.getParameter("memo");

		try {
			Connection conn = DriverManager.getConnection(url, id, pass);

			String sql = "INSERT INTO test_a(name,title,memo) VALUES(?,?,?)";
			PreparedStatement pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, name);
			pstmt.setString(2, title);
			pstmt.setString(3, memo);
			pstmt.execute();
			pstmt.close();

			conn.close();
		} catch (SQLException e) {
			out.println(e.toString());
		}
	%>
	<script language=javascript>
		self.window.alert("입력한 글을 저장하였습니다.");
		location.href = "list.jsp";
	</script>
</body>
</html>