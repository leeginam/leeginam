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
	
<script src="js/signout.js"></script>
<style>

#mypage{
width:1300px;
height:100%;
border:solid black 1px;
display:inline-block;
margin:60px 0;
background-color:#f9f6f7;
border-radius:10px;
margin-top:250px;
text-align:left;
margin-right:auto;
padding-bottom:5%;
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
padding-right:100px;
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
width:100%;
color:black;
text-align:center;
}
#booking ul{
position:relative;
left:20px;

}
#booking ul li{

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
input{
	border-radius:5px;
	display:inline-block;
}
ul ul{
padding:0px;
color:white;

}
#label{
width:200px;
display:inline-block;
text-align:left;
}
#tems ol li{
text-align:left;

}
#tems ol{
color:white;
font-size:20pt;


}
#out{
	height:60px;
	width:200px;
	color:white;
	background: #f45905;
	font-size:13pt;
	margin-right:50px;
	border:1px solid #064461;
	cursor:pointer;
	margin-top:70px;
	}
ol li:last-child{
margin-bottom:30px;
}
</style>


 <body bgcolor="#364f6b">
	 <%@ include file="header.jsp" %>
	 <%@ include file="I_mypage_submenu.jsp" %>
	 <div id=cm>
	<div id = mypage>
	<span id=maintitle>마이페이지</span><span id =subtitle>|  마이페이지에 오신것을 환영합니다</span><br>
	
  <div id = infobox>
	<ul>4. 회원탈퇴
		<li><div id=booking>
		<div id=tems>
		<ol>GETFLEX 회원 탈퇴약관
			<li>GETFLEX 회원(이하 "회원")을 탈퇴하기 전에 반드시 읽어 주십시오.</li>
			<li>본 약관은 GETFLEX 주식회사(이하 “당사”)가 GETFLEX 회원(이하 “회원”)의 탈퇴에 관한 모든 조건을 규정한 것입니다. 예약이 존재할 경우, 해당 예약의 이용전에는 탈퇴할 수 없습니다. </li>
			<li>회원탈퇴를 하실 경우에는 아래의 내용에 동의하신 것으로 간주됩니다.</li>
			<li>탈퇴 후에는 당사가 운영하는 모든 웹사이트(이하 “GETFLEX”)에서 제공하는 회원 대상 서비스를 이용하실 수 없습니다.</li>
			<li>보유하신GETFLEX 포인트는 탈퇴하시는 시점부터 전부 무효가 됩니다.</li>
			<li>탈퇴 후에도 카드결제 등으로 발생한 이용요금 지불책임은 이행해야 합니다.</li>
			<li>GETFLEX EXPRESS VISA 카드는 탈퇴하신 후에도 계속 사용하실 수 있으나, 각종 회원 대상 서비스는 이용하실 수 없습니다. 회원 대상 서비스의 재이용을 원하실 경우에는 다시 신규회원에 가입하셔야 하며, 이전 포인트는 이관되지 않습니다.</li>
			<li>회원 탈퇴 수속이 수리된 후에도 회원정보에 대해서는 당사가 관리하게 됩니다.</li>
			<li>탈퇴 후에 회원정보를 삭제하는 경우도 있으므로 양해해 주십시오.</li>
		</ol>
		<hr style="width:95%;color:white;">
		</div>
		<ul>
		<form name="delete_form" method="post" action="action.jsp?class=signdel">
		<li><div id=label>아이디</div><input type="text" name="input_id" size="30" readonly style="background:#bdbdbd;" value=<%= session.getAttribute("id") %>></li>
		<li><div id=label>비밀번호</div> <input type="password" id="pass" name="pass" size="30"></li>
		<input type="hidden" id="hidden" name="hidden" value=<%=request.getAttribute("password") %>>
		</ul>
		</form>
		<input type="button" id=out name="go" onclick=delete_function() value="탈퇴">
		</div></li>
	</li>
	</ul>
  </div>
  </div>
  </div>
	<%@ include file="footer.jsp" %>
 </body>
</html>
