<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@page import="java.sql.*"%>

<%@ page language="java" contentType="text/html; charset=utf-8"%>

<!doctype html>
<html lang="en">
 <head>
  <meta charset="UTF-8">
  <meta name="Generator" content="EditPlus®">
  <meta name="Author" content="">
  <meta name="Keywords" content="">
  <meta name="Description" content="">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>영화비교</title>
<style>
	#box1{
	border-radius:10px;
	 background-color:white;
	 margin-top:200px;
	 height:600px;
	 width:1200px;
	}
	#login{
	height:60px;
	width:200px;
	color:white;
	background: #064461;
	background: linear-gradient(#003040, #002535);
	margin-right:50px;
	border:1px solid #064461;
	cursor:pointer;
	}
	#main{
	height:60px;
	width:200px;
	color:#064461;
	background:white;
	border:1px solid #064461;
	cursor:pointer;
	}
	#point{
	color:#064461;
	font-weight:bold;
	font-size:13pt;
	}


</style>
  
 </head>
 <body>
	<%@ include file="header.jsp" %>
	 <body bgcolor="#364f6b">

 
  <center><div id=box1 align="center">
  <h1 style="padding-top:50px;">GETFLEX 정상탈퇴되었습니다!</h1>
  <hr width=80% color="#EAEAEA">
	<%=request.getAttribute("id")%>님 지금까지 GETFLEX와 함께해주셔서 감사합니다!!<br><br>
	다음에는 더 나은 서비스를 제공하겠습니다.<br><br>
	다시 이용하시려면 회원가입을 해주세요.<br><br><br>
		<input type="button" value="회원가입" id="login" onclick="location.href='L_idsignup.jsp'">
	<input type="button" value="메인으로" id="main"onclick="location.href='index.jsp'" >
  </div>
	</div>
	<hr width=80% color="#EAEAEA"><br>



	<%@ include file="footer.jsp" %>
	
 </body>
</html>

