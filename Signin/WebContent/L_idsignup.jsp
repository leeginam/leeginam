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
	
<script src="js/idmail.js"></script>
<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<script type="text/javascript">
var idcheck="";
var mailcheck="";
var sign = document.getElementById('sign');

	 $(document).ready(function(){
		$("#id").keyup(function(){
			idCheck()
		});
	});
	function idCheck(){
		$.ajax({
			type:"post",
			url:"L_jungbok.jsp",

			data:{
				id : $('#id').val(),
			},
					
			success:idSuccess,
		
		});
	}
	function idSuccess(resdata){
		$("#return").html(resdata);
		if(resdata.length==59 || resdata.length==50){
			$("#return").css("color","green");
			idcheck="ok"
		}
		else{
			$("#return").css("color","red");
			idcheck="no"
		}

		 allok()
	}
	//이메일체크
	 $(document).ready(function(){
			$("#email").keyup(function(){
				emailcheck()
			});
		});
		function emailcheck(){
			$.ajax({
				type:"post",
				url:"L_mailjungbok.jsp",

				data:{
					mail : $('#mail').val(),
					email : $('#email').val()
				},
						
				success:mailSuccess,
			
			});
		}
		function mailSuccess(resdata){
			$("#returnmail").html(resdata);
			if(resdata.length==54 || resdata.length==47){
		
				$("#returnmail").css("color","green");
				mailcheck="ok";
			}
			else{
				$("#returnmail").css("color","red");
				mailcheck="no";
			}
	
			 allok()
		}
		//유효성검사
		function nokor(obj){
			if(event.keyCode == 8 || event.keyCode == 9 || event.keyCode == 37 || event.keyCode == 39 || event.keyCode == 46) return;
			obj.value = obj.value.replace(/[\ㄱ-ㅎㅏ-ㅣ가-힣]/g,'');
			
		}


		//모두합격시 버튼해재
		function allok(){
			if(idcheck=="ok" && mailcheck=="ok"){
				  btn = document.getElementById('sign');
				  btn.disabled = false;
				 $("#sign").css("background","#ff502f");
			}
			else{
				  btn = document.getElementById('sign');
				  btn.disabled = 'disabled';
				 $("#sign").css("background","#bdbdbd");
			}
			
		}

	
</script>


 <body bgcolor="#364f6b"> 
	 <%@ include file="header.jsp" %>
	<form name=signupform method ="post" action="L_Leesignjsp.jsp" >
  <h1 style="margin-top:250px;">GERFLEX 회원가입</h1>
  <center><div id=box1 align="center">
  <table cellpadding=5 cellspacing=0 align="center">
  	<tr>
		<td><font color="red">*</font>아이디 </td><td></td>
		
		
	</tr>

	<tr>
		<td colspan="2"><input type = "text" name ="id" id="id" size="40" maxlength="20" onkeyup=nokor(this)></td>
		<td><div id="return" style="color:red; font-size:9pt; width:200px;"></div></td>
		
	</tr>	
	
	<tr>
		<td><font color="red">*</font>이메일 </td>
	</tr>
	<tr>
		<td colspan ="2"> <input type = "text" id="email" name ="email" size="20" maxlength="20" onkeyup=nokor(this)> @
	<select name = "mail" id ="mail">
		<option value="naver.com">naver.com</option>
		<option value="yahoo.com">yahoo.com</option>
		<option value="gmail.com">gmail.com</option>
		<option value="hanmail.com">hanmail.com</option>
		<option value="daum.net">daum.net</option>
		<option value="nate.com">nate.com</option>
		</select>
		</td><td><div id="returnmail"  style="color:red; font-size:9pt; width:200px;"></div></td>
	</tr>
	</table>
	<hr width=80% color="#EAEAEA">
	</form>
	<input type="submit" id ="sign" name=signin value="다음단계"  style = "width:500px;height:40px;background-color:#BDBDBD;" disabled="disabled" > 

  </div>
  	<div class=notice style="margin-bottom:280px;">Note : It is our responsibillity to protect your privacy and we 
	gurantee that your data will be completely confidential.</div>
	
  </center>
  <%@ include file="footer.jsp" %>
 </body>
</html>
