<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@page import="java.io.*"%>

<% String result=(String)request.getAttribute("result");%>


<html>
	<head><title>데이터베이스로 연결하기</title></head>
	<body>
		<h4>로그인 결과</h4>
		<%
		if(result.equals("success")){
				out.println("로그인성공.");
			String ab=(String)session.getAttribute("ID");
			String ac=(String)session.getAttribute("PASSWORD");
			out.println("현재 아이디="+ab+"<br>");
			out.println("현재비밀번호="+ac);
				%>
			<button type=button onclick="location.href='logout.jsp'">로그아웃</button><br>
			<%}
			else{
				out.println("로그인실패.");
				}
		%>
		
	</body>
</html>