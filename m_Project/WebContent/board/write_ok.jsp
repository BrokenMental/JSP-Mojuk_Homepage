<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>  
<%

	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String title = request.getParameter("title");
	String memo = request.getParameter("memo");
	String hit = request.getParameter("hit");
	
	System.out.println(name);
	System.out.println(password);
	System.out.println(title);
	System.out.println(memo);
	System.out.println(hit);
	
	
	int max = 0;
	
	try {
		String url = "jdbc:mysql://localhost:3307/mojuk?useUnicode=true&characterEncoding=UTF-8";
		String id = "root";
		String pass = "1234";
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection(url, id, pass);
		Statement stmt = conn.createStatement();
		
		String sql = "SELECT MAX(NUM) FROM board";
		ResultSet rs = stmt.executeQuery(sql);
		
		if(rs.next()){
			max = rs.getInt(1);
		}
		
		sql = "INSERT INTO board (USERNAME,PASSWORD,TITLE,MEMO,HIT) VALUES(?,?,?,?,?)";		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1,name);
		pstmt.setString(2,password);
		pstmt.setString(3,title);
		pstmt.setString(4,memo);
		pstmt.setString(5,hit);
		
		pstmt.execute();
		pstmt.close();
		
		conn.close();
} catch(SQLException e) {
	out.println(e.toString() );
	}
%>
  <script>
   self.window.alert("입력한 글을 저장하였습니다.");
   location.href="list.jsp";
   </script>

