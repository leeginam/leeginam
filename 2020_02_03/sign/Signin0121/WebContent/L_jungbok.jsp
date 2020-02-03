<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<html>
<body>

<%
	String id = request.getParameter("id");

	int idsize=id.length();

	Connection conn=null;
	Statement stmt = null;


	try{
	Class.forName("com.mysql.jdbc.Driver");
	conn =DriverManager.getConnection("jdbc:mysql://localhost:3306/userinfo","root","1988a1023");
	if(conn==null)
		throw new Exception("디비연결 불가<br>");
	stmt = conn.createStatement();
	ResultSet rs = stmt.executeQuery("select id from persons where id ='"+id+"';");
	
	
			if(idsize<4 || idsize>=16){
			out.print("ID는 4~16글자까지 사용가능합니다");
			}
			else if(rs.next()){
				
				out.print("중복된 아이디입니다");
				
			}
			
			else{
				out.print("사용가능한 아이디입니다");
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
	
