<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="Dto.Dto" %>
<%@ page import="Dao.Dbaccess" %>
<% 
	if(session.getAttribute("id")==null){
		out.println("<script>alert('로그인이 필요한 메뉴입니다 로그인창으로 이동합니다.')");
		out.println("document.location.href=\"L_login.jsp;\"</script>");
		out.println("</script>");
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
 <style>

 	#mypage{
 		clear:both;
		width:1300px;
		height:100%;
		border:solid black 1px;
		display:inline-block;
		margin:250px  auto 60px auto;
		padding: 0 30px 60px 30px;
		background-color:#f9f6f7;
		border-radius:10px;
		margin-top:250px;
		text-align:center;
		display:inline-block;
	}
	#tablewrap{
		display:inline-block;
	}
	#mainwraper{
		text-align:center;
	}
	#titletext{
		font-size:20pt;
		text-align:left;
		margin-left:50pt;
		
		margin-top:30pt;
	}
	#subtitletext{
		font-size:15pt;
	}
	#write{
	float:left;
	 list-style:none;
	 text-align:left;
	}
	textarea{
	width:600px;
	height:700px;
	resize:none;
	
	}
	#write li{
		padding:10px 0 10px 0;
		width:100%;
		
	}
	#btn{
		position:relative;
		left:45%;
		width:80px;
		height:35px;
		background:#f45905;
		color:white;
		border:none;
		cursor:pointer;
		font-size:10pt;
	}
</style>
 <body>
 	<%@ include file="header.jsp" %>
	<div id =mainwraper>
 	<div id = mypage>
 	<div id =titletext>영화 매거진<span id=subtitletext>| 다양한 영화정보를 공유하세요</span></div>
 	<hr style="width:90%;color:#bdbdbd;">
 	<div id=tablewrap>
 	<form method="post" action="insert.vo?command=insert" enctype="multipart/form-data">
 		<ul id=write>
 		<li>작성자</li>
 		<li>영화선택</li>
 		<li>글 제목</li>
 		<li>이미지파일</li>
 		</ul>
 		
 		<ul id=write>
 		<li><input type="text" name="writename" size="10" value=${id}  style="background:#bdbdbd;"></li>
 		<li><select name="moviename">
 		<option value="해리포터">해리포터</option>
 		<option value="1917">1917</option>
 		<option value="미드웨이">미드웨이</option>
 		<option value="슈렉">슈렉</option>
 		<option value="짱구는못말려">짱구는못말려</option>
 		<option value="아무튼영화">아무튼영화</option>
 		</select></li>
 		
 		<li><input type="text" name="title" size="80"></li>
 		<li><input type="file" name="fileName1" id = "fileName1" accept=".gif, .jpg, .png"></li>
 		<hr style="color:#bdbdbd;width:130%;position:relative;right:20%;">
 		<li><textarea id= contents name="contents"></textarea></li> 		
 		<li><input id=btn type="submit" value="등록하기"/></li>
 		</ul>
 		</div>
 		</form>
 	</div>
 	</div>
	
	<%@ include file="footer.jsp" %>
 </body>
</html>