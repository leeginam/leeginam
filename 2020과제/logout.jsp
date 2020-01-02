<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@page import="java.io.*"%>


<html>
	<head><title>로그아웃</title></head>
	<body>
		<h4>로그아웃되었습니다</h4>
		<%session.invalidate();%>
		<button type=button onclick="location.href='log.jsp'">로그인창다시가기</button>
	</body>
</html>