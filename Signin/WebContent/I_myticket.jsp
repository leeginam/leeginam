<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
	String y ="";
	y=request.getParameter("fail");
	if(y==null){
	y="";
	}

%>
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

#mypage{
width:1300px;
height:1000px;
border:solid black 1px;
display:inline-block;
margin:60px 0;
background-color:#f9f6f7;
border-radius:10px;
margin-top:250px;
text-align:left;
margin-right:auto;
}

#maintitle{
position:relative;
top:30px;
left:50px;
font-size:30pt;
font-weight:bold;
}
#subtitle{
position:relative;
top:30px;
left:50px;
font-size:15pt;
font-weight:bold;
}
#infobox{
	position:relative;
	top:50px;
	width:90%;
	height:auto;
	background:#333333;
	margin:0 auto;
	box-shadow: 
		0 5px 15px 1px rgba(0, 0, 0, 0.6), 
		0 0 200px 1px rgba(255, 255, 255, 0.5);
	margin-top:10px;
	color:white;
	padding-top:20px;
	padding-bottom:50px;
	margin-bottom:50px;

}
#infobox ul{
list-style-type:none;
font-size:20pt;

}
#infobox ul li{
font-size:15pt;
padding-left:40px;
padding-top:20px;
}
#changebt{
	height:30px;
	width:80px;
	color:white;
	background: #064461;
	margin-right:50px;
	border:1px solid #064461;
	cursor:pointer;
}
#booking{
background:white;
width:350px;
color:black;
}
#booking ul{
position:relative;
left:20px;
}
#booking ul li{
	padding-left:30px;
}
#poster{
width:140px;
height:190px;
float:left;
}

#cm{
	text-align:center;
	width:100%;
}
</style>


 <body bgcolor="#364f6b">
	 <%@ include file="header.jsp" %>
	 <%@ include file="I_mypage_submenu.jsp" %>
	 <div id=cm>
	<div id = mypage>
	<span id=maintitle>마이페이지</span><span id =subtitle>|  마이페이지에 오신것을 환영합니다</span><br>
	
  <div id = infobox>
	<ul>2 . 나의예매내역
		<li><div id=booking>
		<img id="poster" src="img/poster1.jpg"/>
		<ul>
		<li>겨울왕국2</li>
		
		<li>날짜:1223</li>
		<li>장소:머시기머시기</li>
		<li>시간:머시기머시기</li>
		</ul>
		
		</div></li>
	</li>
	</ul>
  </div>
  </div>
  </div>
	<%@ include file="footer.jsp" %>
 </body>
</html>
