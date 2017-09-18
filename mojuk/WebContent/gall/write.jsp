<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="get" action="wrtie_ok.jsp" enctype="multipart/form-data">
<table align="center">
<tr><td>이름</td><td><input type="text" style="width:500px" name="name"></td></tr>
<tr><td>제목</td><td><input type="text" style="width:500px" name="title"></td></tr>
<tr><td>내용</td><td><textarea rows="50" style="width:500px; height:500px;" name="memo"></textarea></td></tr>
<tr><td>사진</td><td><input type="file" name="filename1" size=100></td></tr>
</table>
<center><input type="submit" value="저장"></center>
</form>
</body>
</html>

