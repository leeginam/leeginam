<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!doctype html>
<html lang="en">
 <head>
  <meta charset="UTF-8">
  <meta name="Generator" content="EditPlus®">
  <meta name="Author" content="">
  <meta name="Keywords" content="">
  <meta name="Description" content="">
  <title>Document</title>

 </head>
	
<script src="js/idmail.js"></script>
<style>
#submenu{
position:absolute;
top:350px;
left:50px;
}
#infosubbox ul li{
list-style-type:none;
font-size:15pt;
	height:60px;
	width:150px;
	color:white;
	background: #333333;
	border:1px solid black;
	text-align:center;
	padding-top:30px;
		box-shadow: 
		0 5px 15px 1px rgba(0, 0, 0, 0.6), 
		0 0 200px 1px rgba(255, 255, 255, 0.5);
}
a{
color:white;
text-decoration: none;

}
</style>


 <body>
	<div id = submenu>
	<div id = infosubbox>
	<ul>
	<li><a href="I_mypage_info.jsp">1.나의정보</a></li>
	<li><a href="I_myticket.jsp">2.내예매내역</a></li>
	<li><a href="I_infochange_dbjoin.jsp">3.내정보수정</a></li>
	<%String url="action.jsp?class=passwordsearch";%>
	<li><a href=<%= url%>>4.회원탈퇴</a></li>
	</ul>
	</div>
	</div>
  </div>

 </body>
</html>
