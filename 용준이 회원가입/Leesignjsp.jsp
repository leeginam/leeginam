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
	
<script src="js/scriptsignup.js"></script>


 <body bgcolor="#364f6b">
	<form name=signupform method ="post" action="signinsert.jsp" >
  <h1>Join our Newdreams!</h1>
  <center><div id=box1 align="center">
  <table cellpadding=5 cellspacing=0 align="center">
  	<tr>
		<td><font color="red">*</font>ID </td><td></td>
		
		
	</tr>

	<tr>
		<td colspan="3"><input type = "text" name ="id" size="60" maxlength="20" readonly  style = "background:#BDBDBD;" value=${id}></td>
	
	</tr>	
	<tr>
		<td colspan="3"><font color="red">*</font>Password </td>
	</tr>
	<tr>
		<td colspan="3"> <input type = "password" name = "pwinput1" size="60" maxlength="20"></td>
	</tr>
	<tr>
		<td colspan="3"><font color="red">*</font>Password check</td>
	</tr>
	<tr>
		<td colspan="3"> <input type = "password" name = "pwinput2" size="60" maxlength="30"></td>
	</tr>
		<tr>
		<td colspan="3"><font color="red">*</font>Password finding Question</td>
	</tr>
	<tr>
		<td colspan="3"><select name = "hint">
		<option value="0">질문선택</option>
		<option value="당신의 초등학교 이름은?">당신의 초등학교 이름은?</option>
		<option value="존경하는 인물은?">존경하는 인물은?</option>
		<option value="나의 보물 1호">나의 보물 1호</option>
		<option value="나의 좌우명">나의 좌우명</option>
		<option value="나의 첫차는?">나의 첫차는?</option>
		<option value="나의 배우자 이름은?">나의 배우자 이름은?</option>
		</select></td>
	</tr>
	<tr>
		<td colspan="3"><font color="red">*</font>Password finding Answer </td>
	</tr>
		<td colspan="3"> <input type = "text" name = "hintanswer" size="60" maxlength="10"></td>
	</tr>
	<tr>
		<td colspan="3"><font color="red">*</font>Name </td>
	</tr>
	<tr>
		<td colspan="3"> <input type = "text" name = "name" size="60" maxlength="10"></td>
	</tr>
	<tr>
		<td colspan="3"><font color="red">*</font>Address</td>
	</tr>
	<tr>
		<td> <input type = "text" name="adr" size="10" maxlength="20"></td>
		<td> <input type = "button" name ="adrfind" value="Adrfind" onclick="주소검색"style="width:100px;height:30;"></td>
	</tr>
	<tr>
		<td colspan="3"> <input type = "text" name = "adr1" size="60" maxlength="10"></td>
	</tr>
	<tr>
		<td colspan="3"> <input type = "text" name = "adr2" size="60" maxlength="10"></td>
	</tr>
	<tr>
		<td colspan="3"><font color="red">*</font>Gender </td>
	</tr>
	<tr>
		<td colspan="3"> Man : <input type = "radio" name="gender" value="남" checked> Woman : <input type = "radio" name="gender" value="여"></td>
	</tr>
	<tr>
		<td><font color="red">*</font>E-mail </td>
	</tr>
	<tr>
		<td colspan ="1"> <input type = "text" name = "email" size="20" maxlength="20" value=${email}  readonly  style = "background:#BDBDBD;"> @</td>
		<td colspan ="2"> <input type = "text" name = "mail" size="20" maxlength="20" value=${mail}  readonly  style = "background:#BDBDBD;"></td>
	
		</td>
	</tr>
	<tr>
		<td><font color="red">*</font>Birth </td>
		<td align = "left"><select name = "birthy">
		<option value="2000">2000</option>
		<option value="1999">1999</option>
		<option value="1998">1998</option>
		<option value="1997">1997</option>
		<option value="1996">1996</option>
		<option value="1995">1995</option>
		</select>
		yy
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
		mm
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
		dd
		
	</tr>
	<tr>
	<td><font color="red">*</font>P.H </td>
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
	<input type="button" id ="sign" name=signin value="Join Now!"  onclick=signup() style = "width:500px;height:40px;"> 

  </div>
  	<div class=notice>Note : It is our responsibillity to protect your privacy and we 
	gurantee that your data will be completely confidential.</div>
  </center>
 </body>
</html>
