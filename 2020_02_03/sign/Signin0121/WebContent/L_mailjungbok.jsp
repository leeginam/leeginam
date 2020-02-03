<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<html>
<body>

<%
	
	String mail1 = request.getParameter("email");
	String mail2 = request.getParameter("mail");
	String email = mail1+"@"+mail2;

	Connection conn=null;
	Statement stmt = null;


	try{
	Class.forName("com.mysql.jdbc.Driver");
	conn =DriverManager.getConnection("jdbc:mysql://localhost:3306/userinfo","root","1988a1023");
	if(conn==null)
		throw new Exception("디비연결 불가<br>");
	stmt = conn.createStatement();
	ResultSet rs = stmt.executeQuery("select email from persons where email ='"+email+"';");
	
	
			if(rs.next()){
				
				out.print("중복된 이메일입니다");
				
			}
			
			else{
				out.print("사용가능한 이메일입니다");
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

	%>
	</body>
	</html>