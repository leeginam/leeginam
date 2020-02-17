<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>

<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");

	Connection conn=null;
	Statement stmt = null;
	boolean b = false;

	try{
	Class.forName("com.mysql.jdbc.Driver");
	conn =DriverManager.getConnection("jdbc:mysql://localhost:3306/userinfo","root","1988a1023");
	if(conn==null)
		throw new Exception("디비연결 불가<br>");
	stmt = conn.createStatement();
	ResultSet rs = stmt.executeQuery("select * from onetwo where id ='"+id+"' and pw='"+pw+"';");

			if(rs.next()){
			String name =rs.getString("name");
			session.setAttribute("id",id);
			session.setAttribute("pw",pw);
			session.setAttribute("name",name);
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
		RequestDispatcher dispatcher = request.getRequestDispatcher("loginok.jsp");
		dispatcher.forward(request,response);
	}
	else if(b==true){
		response.sendRedirect("loginfail.jsp");
	}
	%>