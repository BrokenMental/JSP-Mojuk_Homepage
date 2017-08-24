<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	request.setCharacterEncoding("UTF-8");
	Class.forName("com.mysql.jdbc.Driver");
	String url = "jdbc:mysql://localhost:3306/mojuk_db?useUnicode=true&characterEncoding=UTF-8";
	String id = "root";
	String pass = "1234";
	String password = "";
	
	Connection conn = DriverManager.getConnection(url, id, pass);
	Statement stmt = conn.createStatement();

	try {

		int idx = Integer.parseInt(request.getParameter("idx"));
		String title = request.getParameter("title");
		String memo = request.getParameter("memo");
		String passw = request.getParameter("password");

		String sql = "SELECT password FROM project_tb WHERE id=" + idx;
		ResultSet rs = stmt.executeQuery(sql);

		if (rs.next()) {
			password = rs.getString(1);
		}

		if (password.equals(passw)) {
			sql = "UPDATE project_tb SET title='" + title + "' ,memo='" + memo + "' WHERE id=" + idx;
			stmt.executeUpdate(sql);
%>
<script language=javascript>
				  	self.window.alert("글이 수정되었습니다.");
				  	location.href="pj_view.jsp";
</script>
<%
	rs.close();
	stmt.close();
	conn.close();

		} else {
%>
<script language=javascript>
	self.window.alert("비밀번호를 틀렸습니다.");
	location.href = "javascript:history.back()";
</script>
<%
	}

	} catch (SQLException e) {
		out.println(e.toString());
	}
%>