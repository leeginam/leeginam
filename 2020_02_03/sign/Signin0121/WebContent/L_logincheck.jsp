<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>

<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String log= "";

	Connection conn=null;
	Statement stmt = null;
	boolean b = false;

	try{
	Class.forName("com.mysql.jdbc.Driver");
	conn =DriverManager.getConnection("jdbc:mysql://localhost:3306/userinfo","root","1988a1023");
	if(conn==null)
		throw new Exception("디비연결 불가<br>");
	stmt = conn.createStatement();
	ResultSet rs = stmt.executeQuery("select id,pw from persons where id ='"+id+"' and pw='"+pw+"';");

			if(rs.next()){
				session.setAttribute("log","ok");
				session.setAttribute("id",id);
				log="ok";
				
			}
			else{
				
				b=true;
				log="fail";
		
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
		response.sendRedirect("index.jsp?log="+log);
	}
	else if(b==true){
		
		response.sendRedirect("L_login.jsp?fail="+log);
	}
	%>

