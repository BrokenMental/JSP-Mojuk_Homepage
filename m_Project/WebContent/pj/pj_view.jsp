<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<%
	Class.forName("com.mysql.jdbc.Driver");
	String url = "jdbc:mysql://localhost:3306/mojuk?characterEncoding=utf8&amp;useSSL=false&amp;autoReconnection=true";
	String id = "root";
	String pass = "1234";
	int idx = Integer.parseInt(request.getParameter("idx"));

	try {
		Connection conn = DriverManager.getConnection(url, id, pass);
		Statement stmt = conn.createStatement();

		String sql = "SELECT username, title, memo, time, hit FROM project WHERE id=" + idx;
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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시물 보기</title>
<link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico" />
<link rel="stylesheet" type="text/css" href="../css/main.css" />
</head>
<body>
	<div style="width: 0px; margin: auto;">
		<div id="container">
			<!-- 상단 -->
			<%@include file="../include/top.jsp"%>
			<div class="bar"></div>
			<!-- 상단 메뉴 -->
			<div id="menu">
				<div class="logo">
					<a href="../main.jsp"><img src="../img/logo.png" width="160"
						height="60"></a>
				</div>
				<div class="menu" style="margin-left: 345px;">
					<h3>
						<a href="../mojuk.jsp"
							style="text-decoration: none !important; color: black;">모죽</a>
					</h3>
				</div>
				<div class="menu">
					<h3>
						<a href="../notice.jsp"
							style="text-decoration: none !important; color: black;">공지사항</a>
					</h3>
				</div>
				<div class="menu">
					<h3>
						<a href="../project.jsp"
							style="text-decoration: none !important; color: black;">프로젝트</a>
					</h3>
				</div>
				<div class="menu">
					<h3>
						<a href="../board.jsp"
							style="text-decoration: none !important; color: black;">자유게시판</a>
					</h3>
				</div>
				<div class="menu">
					<h3>
						<a href="../gall.jsp"
							style="text-decoration: none !important; color: black;">갤러리</a>
					</h3>
				</div>
			</div>
			<!-- 메인 이미지 -->
			<div id="main_img">
				<img src="../img/main_img.png">
			</div>
			<!-- 하단(본문) -->
			<div id="main_ground">
				<div id="main"></div>
			</div>
			<!-- main ground_end -->
		</div>
		<!-- container_end -->
	</div>
	<center>
		<table>
			<tr>
				<td>
					<table width="100%" cellpadding="0" cellspacing="0" border="0">
						<tr
							style="background: url('image/table_mid.gif') repeat-x; text-align: center;">
							<td width="5"><img src="image/table_left.gif" width="5"
								height="30" /></td>
							<td>내 용</td>
							<td width="5"><img src="image/table_right.gif" width="5"
								height="30" /></td>
						</tr>
					</table>
					<table width="413">
						<tr>
							<td width="0">&nbsp;</td>
							<td align="center" width="80">글번호</td>
							<td width="319"><%=idx%></td>
							<td width="0">&nbsp;</td>
						</tr>
						<tr height="1" bgcolor="#dddddd">
							<td colspan="4" width="407"></td>
						</tr>
						<tr>
							<td width="0">&nbsp;</td>
							<td align="center" width="80">조회수</td>
							<td width="319"><%=hit%></td>
							<td width="0">&nbsp;</td>
						</tr>
						<tr height="1" bgcolor="#dddddd">
							<td colspan="4" width="407"></td>
						</tr>
						<tr>
							<td width="0">&nbsp;</td>
							<td align="center" width="80">이름</td>
							<td width="319"><%=name%></td>
							<td width="0">&nbsp;</td>
						</tr>
						<tr height="1" bgcolor="#dddddd">
							<td colspan="4" width="407"></td>
						</tr>
						<tr>
							<td width="0">&nbsp;</td>
							<td align="center" width="80">작성일</td>
							<td width="319"><%=time%></td>
							<td width="0">&nbsp;</td>
						</tr>
						<tr height="1" bgcolor="#dddddd">
							<td colspan="4" width="407"></td>
						</tr>
						<tr>
							<td width="0">&nbsp;</td>
							<td align="center" width="80">제목</td>
							<td width="319"><%=title%></td>
							<td width="0">&nbsp;</td>
						</tr>
						<tr height="1" bgcolor="#dddddd">
							<td colspan="4" width="407"></td>
						</tr>
						<tr>
							<td width="0">&nbsp;</td>
							<td width="399" colspan="2" height="200"><%=memo%>
						</tr>
						<%
							sql = "UPDATE project SET HIT=" + hit + " where ID=" + idx;
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
						<tr>
							<td width="0">&nbsp;</td>
							<th align="left" width="80" colspan="2">[첨부파일]</th>
							<td colspan="8">${article.filename}</td>
						</tr>
						<tr height="1" bgcolor="#dddddd">
							<td colspan="4" width="407"></td>
						</tr>
						<tr height="1" bgcolor="#82B5DF">
							<td colspan="4" width="407"></td>
						</tr>
						<tr align="center">
							<td width="0">&nbsp;</td>
							<td colspan="2" width="399"><input
								type=button value="답글" OnClick="window.location='../pj/pj_reply.jsp'">
								<input type=button value="목록"
								OnClick="window.location='project.jsp'"> <input type=button
								value="수정" OnClick="window.location='../pj/pj_modify.jsp'"> <input
								type=button value="삭제" OnClick="window.location='../pj/pj_delete.jsp'">
							<td width="0">&nbsp;</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</center>
</body>
</html>