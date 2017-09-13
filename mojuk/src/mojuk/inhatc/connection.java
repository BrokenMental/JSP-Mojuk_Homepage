package mojuk.inhatc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class connection {

	String id = null;
	String pw = null;

	String driver = "com.mysql.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3306/mojuk?characterEncoding=utf8&amp;useSSL=false&amp;autoReconnection=true";
	String dbid = "root";
	String dbpw = "1234";
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	public connection() {
		try {
			Class.forName(driver);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// db 연결
	void connect() {
		try {
			con = DriverManager.getConnection(url, dbid, dbpw);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	// db 연결 종료
	void disconnect() {
		if(pstmt != null) {
			try {
				pstmt.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		if(con != null) {
			try {
				con.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
	}

	// Login 정보 확인
	public String[] getLogin() {
		int i = 0;
		connect();
		String[] array = new String[2];
		String sql = "select * from user";
		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				array[i] = rs.getString("id");
				array[i+1] = rs.getString("pw");
				i=i+2;
			}
			rs.close();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			disconnect();
		}
		return array;
	}

}
