<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@page import="java.sql.*"%>
<% request.setCharacterEncoding("utf-8");%>
<%
String id=(String)session.getAttribute("id");
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

int rowNum;
	
	Connection conn=null;
	Statement stmt=null;;
	boolean ab=false;
	try{
		Class.forName("com.mysql.jdbc.Driver");
		conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/userinfo?useSSL=false&useUnicode=true&characterEncoding=utf8","root","1988a1023");
		stmt=conn.createStatement();		
		String command=String.format("update persons set pw:='%s',name:='%s',adrnum:='%s',adr:='%s',email:='%s',birth:='%s',phone:='%s' where id='%s';",pw,name,adrnum,adr,email,birth,phone,id);
		rowNum=stmt.executeUpdate(command);		
		
	}finally{
		try{
			stmt.close();
		}catch(Exception ignored){
		}
		try{
			conn.close();
		}catch(Exception ignored){
		} }

		if(rowNum>0){
			request.setAttribute("pw",pw);
			request.setAttribute("name",name);
			request.setAttribute("adr",adr);
			request.setAttribute("email",email);
			request.setAttribute("birth",birth);
			request.setAttribute("phone",phone);
		RequestDispatcher dispatcher=request.getRequestDispatcher("I_mypage.jsp");
		dispatcher.forward(request,response);
			}
		//requestdispatcher는 request.된애만 넘겨줌
		//sendredirect는 그냥 a링크같은개념 링크만넘겨줌  정보넘기고싶으면
		//response.sendRedirect("dbconnection_exam03_4.jsp?name="+name); 이런식으로 넘겨야함
		%>
