<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>

<%
	String id = request.getParameter("id");

	Connection conn=null;
	Statement stmt = null;
	boolean b = false;

	try{
	Class.forName("com.mysql.jdbc.Driver");
	conn =DriverManager.getConnection("jdbc:mysql://localhost:3306/userinfo?useSSL=false&useUnicode=true&characterEncoding=utf8","root","1988a1023");
	if(conn==null)
		throw new Exception("디비연결 불가<br>");
	stmt = conn.createStatement();
	ResultSet rs = stmt.executeQuery("select id from persons where id ='"+id+"';");

			if(rs.next()){
			}
			else{
				b=true;
			}
			


	}finally{
		try{
			stmt.close();
		}catch(Exception ignored){
		}
		try{
			conn.close();
		}
		catch(Exception ignored){
		}
	
	
	}
	if(b==false){
		RequestDispatcher dispatcher = request.getRequestDispatcher("signinsert.jsp");
		dispatcher.forward(request,response);
	}
	else if(b==true){
		response.sendRedirect("signfail.jsp");
	}
	%>