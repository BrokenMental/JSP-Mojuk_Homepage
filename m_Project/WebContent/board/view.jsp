<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%
	int idx = Integer.parseInt(request.getParameter("idx"));

	String url = "jdbc:mysql://localhost:3307/mojuk?useUnicode=true&characterEncoding=UTF-8";
	String id = "root";
	String pass = "1234";
	Class.forName("com.mysql.jdbc.Driver");

	try {

		Connection conn = DriverManager.getConnection(url, id, pass);
		Statement stmt = conn.createStatement();

		String sql = "SELECT USERNAME, TITLE, MEMO, TIME, HIT FROM board WHERE NUM=" + idx;
		ResultSet rs = stmt.executeQuery(sql);
		if (rs.next()) {
			String name = rs.getString(1);
			String title = rs.getString(2);
			String memo = rs.getString(3);
			String time = rs.getString(4);
			int hit = rs.getInt(5);
			hit++;
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>�Խ���</title>
<link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico" />
</head>
<body>
	<table>
		<tr>
			<td>
				<table width="100%" cellpadding="0" cellspacing="0" border="0">
					<tr
						style="background: url('photo/table_mid.gif') repeat-x; text-align: center;">
						<td width="5"><img src="photo/table_left.gif" width="5"
							height="30" /></td>
						<td>�� ��</td>
						<td width="5"><img src="photo/table_right.gif" width="5"
							height="30" /></td>
					</tr>
				</table>
				<table width="413">
					<tr>
						<td width="0">&nbsp;</td>
						<td align="center" width="76">�۹�ȣ</td>
						<td width="319"><%=idx%></td>
						<td width="0">&nbsp;</td>
					</tr>
					<tr height="1" bgcolor="#dddddd">
						<td colspan="4" width="407"></td>
					</tr>
					<tr>
						<td width="0">&nbsp;</td>
						<td align="center" width="76">��ȸ��</td>
						<td width="319"><%=hit%></td>
						<td width="0">&nbsp;</td>
					</tr>
					<tr height="1" bgcolor="#dddddd">
						<td colspan="4" width="407"></td>
					</tr>
					<tr>
						<td width="0">&nbsp;</td>
						<td align="center" width="76">�̸�</td>
						<td width="319"><%=name%></td>
						<td width="0">&nbsp;</td>
					</tr>
					<tr height="1" bgcolor="#dddddd">
						<td colspan="4" width="407"></td>
					</tr>
					<tr>
						<td width="0">&nbsp;</td>
						<td align="center" width="76">�ۼ���</td>
						<td width="319"><%=time%></td>
						<td width="0">&nbsp;</td>
					</tr>
					<tr height="1" bgcolor="#dddddd">
						<td colspan="4" width="407"></td>
					</tr>
					<tr>
						<td width="0">&nbsp;</td>
						<td align="center" width="76">����</td>
						<td width="319"><%=title%></td>
						<td width="0">&nbsp;</td>
					</tr>
					<tr height="1" bgcolor="#dddddd">
						<td colspan="4" width="407"></td>
					</tr>
					<tr>
						<td width="0"></td>
						<td width="399" colspan="2" height="200"><%=memo%>
					</tr>
					<%
						sql = "UPDATE board SET HIT=" + hit + " where NUM=" + idx;
								stmt.executeUpdate(sql);
								rs.close();
								stmt.close();
								conn.close();
							}
						} catch (SQLException e) {
						}
					%>
					<tr height="1" bgcolor="#dddddd">
						<td colspan="4" width="407"></td>
					</tr>
					<tr height="1" bgcolor="#82B5DF">
						<td colspan="4" width="407"></td>
					</tr>
					<tr align="center">
						<td width="0">&nbsp;</td>
						<td colspan="2" width="399"><input type=button value="�۾���"
							OnClick="window.location='write.jsp'"> <input type=button
							value="���" OnClick="window.location='reply.jsp?idx=<%=idx%>'">
							<input type=button value="���"
							OnClick="window.location='list.jsp'"> <input type=button
							value="����" OnClick="window.location='modify.jsp?idx=<%=idx%>'">
							<input type=button value="����"
							OnClick="window.location='delete.jsp?idx=<%=idx%>'">
						<td width="0">&nbsp;</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>

</html>




