<%@ page language="java" contentType="text/html; charset=utf-8"

    pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>  
<%	
	request.setCharacterEncoding("utf-8");

	String url = "jdbc:mysql://localhost:3307/mojuk?useUnicode=true&characterEncoding=UTF-8";
	String id = "root";
	String pass = "1234";
	Class.forName("com.mysql.jdbc.Driver");
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String title = request.getParameter("title");
	String memo = request.getParameter("memo");
	
	try {	
		Connection conn = DriverManager.getConnection(url,id,pass);
		
		String sql = "INSERT INTO notice(USERNAME,PASSWORD,TITLE,MEMO) VALUES(?,?,?,?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, name);
		pstmt.setString(2, password);
		pstmt.setString(3, title);
		pstmt.setString(4, memo);
		
		pstmt.execute();
		pstmt.close();
		
		conn.close();
} catch(SQLException e) {
	out.println( e.toString() );
	}
	
	int max = 0; 
	try {	
		Connection conn = DriverManager.getConnection(url,id,pass);
		Statement stmt = conn.createStatement();
		
		String sql = "SELECT MAX(ID) FROM notice";
		ResultSet rs = stmt.executeQuery(sql); 
		
		if(rs.next())
		{ max=rs.getInt(1);
		}
		
		sql = "INSERT INTO notice(USERNAME,PASSWORD,TITLE,MEMO,REF) VALUES(?,?,?,?,?)"; 
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, name); 
		pstmt.setString(2, password);
		pstmt.setString(3, title);
		pstmt.setString(4, memo);
		pstmt.setInt(5, max+1); 
		
		pstmt.execute();
		pstmt.close(); 
		stmt.close(); 
		conn.close();
		} catch(SQLException e) {
		out.println( e.toString() );
	}
	
	
%>
  <script language=javascript>
   self.window.alert("입력한 글을 저장하였습니다.");
   location.href="Board_List.jsp"; 

</script>


