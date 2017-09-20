<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;

	String url = "jdbc:mysql://localhost:3306/mojuk?characterEncoding=utf8&amp;useSSL=false&amp;autoReconnection=true";
	String id = "root";
	String pass = "1234";
	Class.forName("com.mysql.jdbc.Driver");
	String sql = "select * from Gallery";
	int total = 0;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
#photo {
	float: left;
	padding-right: 30px;
	margin-top: 30px;
}

#photo_back {
	width: 1200px;
	align: center;
	border: 0px;
}
</style>
<title>갤러리</title>
<link rel="shortcut icon" type="image/x-icon" href="../img/favicon.ico" />
</head>
<body>
	<%@include file="../include/main_include.jsp"%>
	<div id="go_year">
		<select name="s_year" id="p_year">
			<option value="">전체</option>
			<option value="2017년">2017</option>
			<option value="2018년">2018</option>
		</select> <input type="button" value="검색" onclick="Gall_search()">
	</div>
	<form action="gallery_write.jsp" style="margin: 5px;">
		<input type="submit" value="사진올리기">
	</form>
	<center>
		<div id="photo_back">
			<%
				try {
					conn = DriverManager.getConnection(url, id, pass);
					/* System.out.println("DB연동"); */
					stmt = conn.createStatement();
					rs = stmt.executeQuery(sql);

					while (rs.next()) {
						int ID = rs.getInt(1);
						String Title = rs.getString(2);
						String FilePath = rs.getString(3);
						String UserName = rs.getString(4);
						String time = rs.getString(5);
			%>
			<div id="photo">
				<img
					src="<%=request.getContextPath()%>/gall/gallery_upload/<%=FilePath%>"
					width="210px" height="140px">
				<%-- <a href="gallery_view.jsp?idx=<%=ID%>">
				</a> --%>
				<div>제목 : <%=Title%></div>
				<div>게시자 : <%=UserName%></div>
				<%-- <div>시간 : <%=time%></div> --%>
			</div>

			<%
				}
				} catch (Exception e) {
					e.printStackTrace();
				} finally {
					try {
						rs.close();
						stmt.close();
						conn.close();
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
			%>
		</div>
	</center>
	<%@include file="../include/bottom.jsp"%>
	<script>
		function Gall_search() {

		}
	</script>
</body>
</html>