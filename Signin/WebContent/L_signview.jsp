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
  <!-- jQuery library (served from Google) -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<!-- bxSlider Javascript file -->
	<script src="bxslider-4-master\bxslider-4-master\dist/jquery.bxslider.min.js"></script>
	<!-- bxSlider CSS file -->
	<link href="bxslider-4-master\bxslider-4-master\dist/jquery.bxslider.css" rel="stylesheet" />
	<link href="css/cssindex.css" rel="stylesheet">
	<script src="js/scriptindex.js"></script>
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
  <h1 style="padding-top:50px;">GETFLEX 회원가입을 축하합니다!</h1>
  <hr width=80% color="#EAEAEA">
	<br><br><div id=textbox><span id="point"><% String id = request.getParameter("id"); out.print(id);%> 님과 함께하는 영화타임!</span><br><br>
	언제나 GETFLEX와 함꼐라면 재미와 행복이 두배!!<br><br>
	가입하신 <span id="point">"아이디"</span>와 <span id="point">"비밀번호"</span>로 로그인이 가능합니다!<br><br><br>
	GETFLEX에서 제공하는 서비스를 이용하실 수 있습니다.<br><br>
	메뉴를 이용하시려면 로그인을 진행해주세요.<br><br><br>

	</div>
	<hr width=80% color="#EAEAEA"><br>
	<input type="button" value="로그인" id="login" onclick="location.href='L_login.jsp'">
	<input type="button" value="메인으로" id="main"onclick="location.href='index.jsp'" >

  </div>
  	<div class=notice>Note : It is our responsibillity to protect your privacy and we 
	gurantee that your data will be completely confidential.</div>
	<%@ include file="footer.jsp" %>
	
 </body>
</html>
