<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>

<%
	request.setCharacterEncoding("UTF-8");
	String url = "jdbc:mysql://localhost:3306/mojuk?characterEncoding=utf8&amp;useSSL=false&amp;autoReconnection=true";
	String id = "root";
	String pass = "1234";
	Class.forName("com.mysql.jdbc.Driver");

	String password = null;
	int idx = Integer.parseInt(request.getParameter("idx"));
	String passw = request.getParameter("password");

	try {

		Connection conn = DriverManager.getConnection(url, id, pass);
		Statement stmt = conn.createStatement();

		String sql = "SELECT PASSWORD FROM board WHERE NUM=" + idx;
		ResultSet rs = stmt.executeQuery(sql);

		if (rs.next()) {
			password = rs.getString(1);
		}

		if (password.equals(passw)) {

			sql = "DELETE FROM board WHERE NUM=" + idx;
			stmt.executeUpdate(sql);
%>
<script language=javascript>
	self.window.alert("�ش� ���� �����Ͽ����ϴ�.");
	location.href = "list.jsp";
</script>

<%
	rs.close();
			stmt.close();
			conn.close();

		} else {
%>
<script language=javascript>
	self.window.alert("��й�ȣ�� Ʋ�Ƚ��ϴ�.");
	location.href = "javascript:history.back()";
</script>
<%
	}
	} catch (SQLException e) {
		out.println(e.toString());
	}
%>


