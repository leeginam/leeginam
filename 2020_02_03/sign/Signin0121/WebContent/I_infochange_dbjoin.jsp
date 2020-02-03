<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@page import="java.sql.*"%>
<% request.setCharacterEncoding("utf-8");%>
<%
	String id=(String)session.getAttribute("id");
	
	Connection conn=null;
	Statement stmt=null;;
	boolean ab=false;
	try{
		Class.forName("com.mysql.jdbc.Driver");
		conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/userinfo?useSSL=false&useUnicode=true&characterEncoding=utf8","root","1988a1023");
		stmt=conn.createStatement();
		ResultSet rs=stmt.executeQuery("select id,pw,name,email,adr,adrnum,phone,birth from persons where id='"+id+"';");
		if(rs.next()){	
			ab=true;
			String pw=rs.getString("pw");
			String name=rs.getString("name");
			String email=rs.getString("email");
			String adrnum=rs.getString("adrnum");
			String adr=rs.getString("adr");
			String phone=rs.getString("phone");
			String birth=rs.getString("birth");
			String phone1="";
			String phone2="";
				String phone0=phone.substring(0,3);
				out.println(phone0);
				request.setAttribute("phone2",phone0);
			if(phone.length()==10){
				phone1=phone.substring(3,6);
				phone2=phone.substring(6,10);
				out.println(phone1);
				out.println(phone2);
			}else{
			phone1=phone.substring(3,7);
			phone2=phone.substring(7,11);
			out.println(phone1);
			out.println(phone2);
			}
			String[] array1 = adr.split("@");
			request.setAttribute("adr1",array1[0]);
			request.setAttribute("adr2",array1[1]);
			
			request.setAttribute("id",id);
			request.setAttribute("pw",pw);
			request.setAttribute("name",name);
			request.setAttribute("email",email);
			request.setAttribute("adrnum",adrnum);
			request.setAttribute("adr",adr);
			request.setAttribute("phone0", phone0);
			request.setAttribute("phone1", phone1);
			request.setAttribute("phone2", phone2);
			request.setAttribute("birth",birth);
			
		}
	}finally{
		try{
			stmt.close();
		}catch(Exception ignored){
		}
		try{
			conn.close();
		}catch(Exception ignored){
		} }


		RequestDispatcher dispatcher=request.getRequestDispatcher("I_infochange.jsp");
		dispatcher.forward(request,response);
	
	
		//requestdispatcher는 request.된애만 넘겨줌
		//sendredirect는 그냥 a링크같은개념 링크만넘겨줌  정보넘기고싶으면
		//response.sendRedirect("dbconnection_exam03_4.jsp?name="+name); 이런식으로 넘겨야함
		%>
