<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<% request.setCharacterEncoding("utf-8");%>

<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pwinput1");
	String hint = request.getParameter("hint");
	String hintans = request.getParameter("hintanswer");
	String name = request.getParameter("name");
	String adr = request.getParameter("adr");
	String adr1 = request.getParameter("adr1");
	String adr2 = request.getParameter("adr2");
	String gender = request.getParameter("gender");
	String email = request.getParameter("email");
	String mail = request.getParameter("mail");
	String birthy = request.getParameter("birthy");
	String birthm = request.getParameter("birthm");
	String birthd = request.getParameter("birthd");
	String phone1 = request.getParameter("phone1");
	String phone2 = request.getParameter("phone2");
	String phone3 = request.getParameter("phone3");
	Connection conn=null;
	Statement stmt = null;



	try{
	Class.forName("com.mysql.jdbc.Driver");
	conn =DriverManager.getConnection("jdbc:mysql://localhost:3306/userinfo?useSSL=false&useUnicode=true&characterEncoding=utf8","root","317272");
	if(conn==null)
		throw new Exception("디비연결 불가<br>");
	stmt = conn.createStatement();

	String command = String.format("insert into persons values('"+id+"','"+pw+"','"+hint+"','"+hintans+"','"+name+"','"+adr+"','"+adr1+"','"+adr2+"','"+gender+"','"+email+"','"+mail+"','"+birthy+"','"+birthm+"','"+birthd+"','"+phone1+"','"+phone2+"','"+phone3+"');" );

	
	
			int rownum=stmt.executeUpdate(command);
			if(rownum<1)
			throw new Exception("데이터를 db에 입력할수 없습니다");


		
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
	response.sendRedirect("signview.jsp?id="+id); 

	%>