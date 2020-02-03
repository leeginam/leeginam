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
	<link rel="stylesheet" type="text/css" href="css/css2.css"/>
 </head>
<script src="js/adr.js?ver=1"></script>
<script src="js/scriptsignup.js?ver=1""></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>


 <body bgcolor="#364f6b">
 	<%@ include file="header.jsp" %>
	<form name=signupform method ="post" action="L_signinsert.jsp" >
  <h1 style="margin-top:200px;">GETFLEX 회원가입</h1>
  <center><div id=box1 align="center">
  <table cellpadding=5 cellspacing=0 align="center">
  	<tr>
		<td><font color="red">*</font>아이디 </td><td></td>
		
		
	</tr>

	<tr>
		<td colspan="3"><input type = "text" name ="id" size="60" maxlength="20" readonly  style = "background:#BDBDBD;" value=<%=request.getParameter("id")%>></td>
	
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
		<td colspan="3"> <input type = "text" name = "name" size="60" maxlength="10"></td>
	</tr>
	<tr>
		<td colspan="3"><font color="red">*</font>주소</td>
	</tr>
	<tr>
		<td> <input type = "text" name="adr" size="10" maxlength="20" id="sample6_postcode" readonly></td>
		<td> <input type = "button"  name ="adrfind" onclick="sample6_execDaumPostcode()" style="width:100px;height:30;" value="주소검색" ></td>
	</tr>
	<tr>
		<td colspan="3"> <input type = "text" name = "adr1" size="60"  id="sample6_address" maxlength="10" readonly></td>
	</tr>
	<tr>
		<td colspan="3"> <input type = "text" name = "adr2" size="60" id="sample6_detailAddress" maxlength="10"></td>
	</tr>
	
	<tr>
		<td><font color="red">*</font>이메일 </td>
	</tr>
	<tr>
		<td colspan ="1"> <input type = "text" name = "email" size="20" maxlength="20" value=<%=request.getParameter("email")%>  readonly  style = "background:#BDBDBD;"> @</td>
		<td colspan ="2"> <input type = "text" name = "mail" size="20" maxlength="20" value=<%=request.getParameter("mail")%> readonly  style = "background:#BDBDBD;"></td>
	
		</td>
	</tr>
	<tr>
		<td><font color="red">*</font>생년월일 </td>
		<td align = "left"><select name = "birthy">
		<option value="2000">2000</option>
		<option value="1999">1999</option>
		<option value="1998">1998</option>
		<option value="1997">1997</option>
		<option value="1996">1996</option>
		<option value="1995">1995</option>
		</select>
		년
		<select name = "birthm" size="1">
		<option value="1">1</option>
		<option value="2">2</option>
		<option value="3">3</option>
		<option value="4">4</option>
		<option value="5">5</option>
		<option value="6">6</option>
		<option value="7">7</option>
		<option value="8">8</option>
		<option value="9">9</option>
		<option value="10">10</option>
		<option value="11">11</option>
		<option value="12">12</option>
		</select>
		월
		<select name = "birthd" size="1">
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
				<option value="5">5</option>
				<option value="6">6</option>
				<option value="7">7</option>
				<option value="8">8</option>
				<option value="9">9</option>
				<option value="10">10</option>
				<option value="11">11</option>
				<option value="12">12</option>
				<option value="13">13</option>
				<option value="14">14</option>
				<option value="15">15</option>
				<option value="16">16</option>
				<option value="17">17</option>
				<option value="18">18</option>
				<option value="19">19</option>
				<option value="20">20</option>
				<option value="21">21</option>
				<option value="22">22</option>
				<option value="23">23</option>
				<option value="24">24</option>
				<option value="25">25</option>
				<option value="26">26</option>
				<option value="27">27</option>
				<option value="28">28</option>
				<option value="29">29</option>
				<option value="30">30</option>
				<option value="31">31</option>
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
		<input type="text" name="phone2" size="4" maxlength=4> -
		<input type="text" name="phone3" size="4" maxlength=4></td>
	</tr>
	</table>
	<hr width=80% color="#EAEAEA">
	</form>
	<input type="button" id ="sign" name=signin value="회원가입"  onclick="signup()" style = "width:500px;height:40px;"> 

  </div>
  	<div class=notice>공지 : 고객님의 개인정보는 안전하게 보관되며 누구에게도 전달되지 않음을 알려드립니다.</div>
	
  </center>
  <%@ include file="footer.jsp" %>
 </body>
</html>
