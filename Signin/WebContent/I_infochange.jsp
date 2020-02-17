<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
	String y ="";
	y=request.getParameter("fail");
	if(y==null){
	y="";
	}
%>
<!-- 이건jsp문장 -->




<!doctype html>
<html lang="en">
 <head>
  <meta charset="UTF-8">
  <meta name="Generator" content="EditPlus®">
  <meta name="Author" content="">
  <meta name="Keywords" content="">
  <meta name="Description" content="">
  <title>Document</title>
 <link rel="stylesheet" type="text/css" href="css/css2.css"/>
<script src="js/adr.js"></script>
 </head>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>	
<script src="js/I_infochange.js"></script>
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<style>

#infobox{
	width:1300px;
height:1000px;
border:solid black 1px;


background-color:#f9f6f7;
border-radius:10px;
margin-top:250px;
margin-left:auto;
margin-right:auto;
margin-bottom:60px;

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
.notice{
	color:black;
}
#box1{
	margin:30px;
	background-color:#f5f5f5;
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
select{
width:70px;
height:27px;
}
</style>
<script>
var birthday;
function setdate(birth) {

	birthday=String(birth)

	var toDay = new Date();

	var year  = toDay.getFullYear();

	var month = (toDay.getMonth()+1);

	var day   = toDay.getDate();
	var eachday ;
	var str = "";

	// 년도 설정

	for (var i=year; i>=1900; i--) {

		if (birthday.substr(0,4) == i) {

			str += "<option  value='" + i + "' selected='selected'>" + i + "</option>";

		} else {

			str += "<option value='" + i + "' >" + i + "</option>";

		}
	}
	$('#year').html(str);
	for (var i=1; i<13; i++) {

		var val = "";

		if (i < 10) {

			val = "0" + new String(i);

		} else {

			val = new String(i);

		} 
		

	

			if (birthday.substr(4,2) == i) {

				$("<option id=monthlist value='" + val + "' selected>" + val + "</option>").appendTo("#month");

			} else {

				$("<option id=monthlist value='" + val + "'>" + val + "</option>").appendTo("#month");

			}

		
		
	}
	var selectmonth=document.getElementById("month").value;

	if(selectmonth==01 || selectmonth==03 || selectmonth==05 || selectmonth==07 || selectmonth==08 || selectmonth==10 || selectmonth==12 ){
		eachday = 31;
	}else if (selectmonth==02){
		eachday=28;
	}else{
		eachday=30;
	}

		for(var i = eachday;i>0;i--){
		var val = "";
		if (i < 10) {

			val = "0" + new String(i);

		} else {

			val = new String(i);

		} 
		
		if (birthday.substr(6,2) == i) {

			$("<option value='" + val + "' selected>" + val + "</option>").appendTo("#day");

		} else {

			$("<option value='" + val + "'>" + val + "</option>").appendTo("#day");

			}
		}

		
	
}
		function reday(){
			var selectmonth=document.getElementById("month").value;

			if(selectmonth==01 || selectmonth==03 || selectmonth==05 || selectmonth==08 || selectmonth==10 || selectmonth==12 ){
				eachday = 31;
			}else if (selectmonth==02){
				eachday=28;
			}else{
				eachday=30;
			}
		
			str="";
				for(var i = eachday;i>0;i--){
				var val = "";
				if (i < 10) {

					val = "0" + new String(i);

				} else {

					val = new String(i);

				} 
				
				
					str += "<option value='" + i + "' >" + i + "</option>";

					
				}
			$('#day').html(str);
		}





</script>

 <body bgcolor="#364f6b">
	 <%@ include file="header.jsp" %>
	 <%@ include file="I_mypage_submenu.jsp" %>
	 
	<form name=signupform method ="post" action="I_update_update.jsp" >

	<div id=infobox>
		<div style="text-align:left;">
		<span id=maintitle>회원정보수정</span><span id =subtitle>|  안전한 개인정보를 보관하세요</span><br></div>
		<div id=box1 align="center">
  			<table cellpadding=5 cellspacing=0 align="center">
				  	<tr>
						<td><font color="red" id="id">*</font>아이디 </td><td></td>
					
					</tr>
				
					<tr>
						<td colspan="3"><input type = "text" name ="id" size="60" maxlength="20" readonly  style = "background:#BDBDBD;" value=${id} ></td>
					
					</tr>	
					<tr>
						<td colspan="3"><font color="red">*</font>비밀번호 </td>
					</tr>
					<tr>
						<td colspan="3"> <input type = "password" name = "pwinput1" size="60" maxlength="20"></td>
					</tr>
					<tr>
						<td colspan="3"><font color="red">*</font>비밀번호 확인</td>
					</tr>
					<tr>
						<td colspan="3"> <input type = "password" name = "pwinput2" size="60" maxlength="30"></td>
					</tr>
					
					<tr>
						<td colspan="3"><font color="red">*</font>이름 </td>
					</tr>
					<tr>
						<td colspan="3"> <input type = "text" name = "name" size="60" maxlength="10" value=<%=request.getAttribute("name")%>></td>
					</tr>
					<tr>
						<td colspan="3"><font color="red">*</font>주소</td>
					</tr>
					<tr>
						<td> <input type = "text" name="adr" size="10" maxlength="20" id="sample6_postcode" value=<%=request.getAttribute("adrnum")%> readonly="readonly"></td>
						<td> <input type = "button"  name ="adrfind" onclick="sample6_execDaumPostcode()" style="width:100px;height:30;" value="주소검색" ></td>
					</tr>
					<tr>
						<td colspan="3"> <input type = "text" name = "adr1" size="60"  id="sample6_address" maxlength="10" value="<%=request.getAttribute("adr1")%>" readonly></td>
					</tr>
					<tr>
						<td colspan="3"> <input type = "text" name = "adr2" size="60" id="sample6_detailAddress" value=<%=request.getAttribute("adr2")%> maxlength="10" ></td>
					</tr>
					<tr>
						<td><font color="red">*</font>이메일 </td>
					</tr>
					<tr>
						<td colspan ="1"> <input type = "text" name = "email" size="20" maxlength="20" value=<%=request.getAttribute("email1")%>    > @</td>
						<td colspan ="2"> <input type = "text" name = "mail" size="20" maxlength="20" value=<%=request.getAttribute("email2")%>    ></td>
					
					
					</tr>
					<tr>
					<td><font color="red">*</font>생년월일 </td>
					
					<td align = "left"  >
					<select name = "birthy" id=year size="1">
					</select>
					년
					<select name = "birthm" id=month size="1" onchange=reday()>
					</select>
					월
					<select name = "birthd" id=day size="1">
			          </select>
					일
					
				</tr>
				<tr>
				<td><font color="red">*</font>전화번호 </td>
					<td align = "left" colspan = "2"><select name = "phone1" size="1">
					<option value="010">010</option>
					<option value="011">011</option>
					<option value="019">019</option>
					<option value="017">017</option>
					</select>
					-
					<input type="text" name="phone2" size="4" maxlength=4 value=<%=request.getAttribute("phone1")%>> -
					<input type="text" name="phone3" size="4" maxlength=4 value=<%=request.getAttribute("phone2")%>></td>
				</tr>
				</table>
				
	<hr width=80% color="#EAEAEA">
	 <script> setdate(<%=request.getAttribute("birth")%>)</script>
	
	<input type="button" id ="sign" name=signin value="정보수정"  onclick="changeup()" style = "width:500px;height:40px;"> 

 	 </div>
  

	
	</div>
	
  </form>
	<%@ include file="footer.jsp" %>

 </body>
</html>