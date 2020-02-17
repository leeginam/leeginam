<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<% request.setCharacterEncoding("utf-8");%>

<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pwinput1");
	String name = request.getParameter("name");
	String adrnum = request.getParameter("adr");
	String adr1 = request.getParameter("adr1");
	String adr2 = request.getParameter("adr2");
	String adr = adr1+"@"+adr2;
	String mail1 = request.getParameter("email");
	String mail2 = request.getParameter("mail");
	String email = mail1+"@"+mail2;
	String birthy = request.getParameter("birthy");
	String birthm = request.getParameter("birthm");
	String birthd = request.getParameter("birthd");
	String birth = birthy+birthm+birthd;
	String phone1 = request.getParameter("phone1");
	String phone2 = request.getParameter("phone2");
	String phone3 = request.getParameter("phone3");
	String phone = phone1+phone2+phone3;
	Connection conn=null;
	Statement stmt = null;



	try{
	Class.forName("com.mysql.jdbc.Driver");
	conn =DriverManager.getConnection("jdbc:mysql://localhost:3306/userinfo?useSSL=false&useUnicode=true&characterEncoding=utf8","root","1988a1023");
	if(conn==null)
		throw new Exception("디비연결 불가<br>");
	stmt = conn.createStatement();

	String command = String.format("insert into persons values('"+id+"','"+pw+"','"+name+"','"+adrnum+"','"+adr+"','"+email+"','"+birth+"','"+phone+"');" );

	
	
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
	response.sendRedirect("L_signview.jsp?id="+id); 

	%>