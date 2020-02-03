<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@page import="java.sql.*"%>
<%
	String id=(String)request.getAttribute("id");

	 Connection conn=null; Statement stmt=null;
	try{
		Class.forName("com.mysql.jdbc.Driver");
		conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/userinfo","root","1988a1023");
		stmt=conn.createStatement();
		String delete="delete from persons where id='"+id+"';";

		int rowNum=stmt.executeUpdate(delete);
	}finally{
		try{
			stmt.close();
		}catch(Exception ignored){
		}
		try{
			conn.close();
		}catch(Exception ignored){
		} }
		RequestDispatcher dispatcher=request.getRequestDispatcher("result.jsp");
		dispatcher.forward(request,response);
		%>


