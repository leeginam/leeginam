<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@page import="java.sql.*"%>
<html>
<head><title>ㄴㅁㅇㄴㅁㅇ</title></head>
<body>
<%
	String id=request.getParameter("inputname");
	String pass=request.getParameter("inputpass");
	Connection conn=null;
	Statement stmt=null;;
	String result="fail";

	try{
		Class.forName("com.mysql.jdbc.Driver");
		conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/userinfo","root","1988a1023");
		if(conn==null)
			throw new Exception("데이터베이스에 연결할 수 없습니다.<br>");
		stmt=conn.createStatement();
		ResultSet rs=stmt.executeQuery("select*from info where id='"+id+"' and pass='"+pass+"';");
		if(rs.next()){
			String id1=rs.getString("id");
			String password=rs.getString("pass");
			session.setAttribute("ID",id1);
			session.setAttribute("PASSWORD",password);
			result ="success";	
		}
		request.setAttribute("result",result);


	}finally{
		try{
			stmt.close();
		}catch(Exception ignored){
		}
		try{
			conn.close();
		}catch(Exception ignored){
		} }
		RequestDispatcher dispatcher=request.getRequestDispatcher("log_result.jsp");
		dispatcher.forward(request,response);
		//requestdispatcher는 request.된애만 넘겨줌
		//sendredirect는 그냥 a링크같은개념 링크만넘겨줌  정보넘기고싶으면
		//response.sendRedirect("dbconnection_exam03_4.jsp?name="+name); 이런식으로 넘겨야함
		//폼에있는정보가져올땐 getparameter setattribute한거 가져올땐 getAttribute
		%>
</body>
</html>
	
