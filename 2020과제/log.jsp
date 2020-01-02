<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@page import="java.sql.*"%>

<html>
	<head><title>데이터베이스로 연결하기</title></head>
	<body>
		<h4>로그인화면</h4>
		<form action="log_info.jsp" method=post>
		아이디:<input type=text name=inputname size=5 ><br>
		비번:<input type=text name=inputpass size=5><br>
		<input type=submit value="로그인">
		</form>
	</body>
</html>