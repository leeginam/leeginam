<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
	String  y ="";
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
	<link rel="stylesheet" type="text/css" href="css/css2.css"/>
 </head>
	
<script src="js/login.js"></script>
<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<script type="text/javascript">
 $(document).ready(function(){
	$("#button").click(function(){
		callAjax();
	});
});
	function callAjax(){
		$.ajax({
			type:"post",
			url:"./0107.jsp",
			data:{
				id : $('#id').val(),
				ef : $('#comment').val()
			},
			success:whenSuccess,
			error:whenError
		});
	}
	function whenSuccess(resdata){

		$("#ajaxReturn").html(resdata);
	}
	function whenError(){
		alert("Error");
	}
</script>
<style>
#find{
color:black;
margin:0 5px;
}

</style>

 <body>
 <%@ include file="../header.jsp" %>
	<form name=signupform method ="post" action="L_logincheck.jsp" >
  <h1 style="margin-top:250px;">GETFLEX 로그인</h1>
  <center><div id=box1 align="center">
  <table cellpadding=5 cellspacing=0 align="center">
  	<tr>
		<td><font color="red">*</font>아이디 </td><td></td>
		
		
	</tr>

	<tr>
		<td colspan="2"><input type = "text" name ="id" size="40" maxlength="20"></td><td style="width:200px;"><%
		if(y.equals("fail")){%><div style="color:red; font-size:9pt;">아이디 비밀번호를 다시 확인하세요</div><%
		}
		%></td>
		
	</tr>	
	
	<tr>
		<td><font color="red">*</font>비밀번호 </td>
	</tr>
	<tr>
		<td colspan ="3"> <input type = "password" name ="pw" size="40" maxlength="20""> 
		</td>
	</tr>
	</table>
	<hr width=80% color="#EAEAEA">
	</form>
	<a id=find href="#">ID 찾기</a>|<a id=find href="#">비밀번호 찾기</a>
	<input type="button" id ="sign" name=signin value="로그인" onclick=signup() style = "width:250px;height:40px;cursor:pointer;"> 

  </div>
  	<div class=notice style="margin-bottom:180px;">Note : It is our responsibillity to protect your privacy and we 
	gurantee that your data will be completely confidential.</div>
	 
  </center>
  <%@ include file="../footer.jsp" %>
</html>
