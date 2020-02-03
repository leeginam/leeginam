<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="Dto.Dto" %>
<%@ page import="Dao.Dbaccess" %>
<%
	String num = request.getParameter("num");
	String actionlink = "update.vo?command=update&num="+num;
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
		margin:250px auto 60px auto;
		padding:0 30px 60px 30px;
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
 	<jsp:useBean id="data" class="Dao.Dbaccess"></jsp:useBean>
 	<%@ include file="header.jsp" %>
	<div id =mainwraper>
 	<div id = mypage>
 	<div id =titletext>영화 매거진<span id=subtitletext>| 다양한 영화정보를 공유하세요</span></div>
 	<hr style="width:90%;color:#bdbdbd;">
 	<div id=tablewrap>
 	<form method="post" action=<%= actionlink %>>
 		<ul id=write>
 		<li>작성자</li>
 		<li>영화선택</li>
 		<li>글 제목</li>	
 		</ul>
 		
 		<ul id=write>
 		<li><input type="text" name="writename" size="10" value=${id}  style="background:#bdbdbd;"></li>
 		<li><select name="moviename" value=${moviename} >
 		<option value="해리포터">해리포터</option>
 		<option value="1917">1917</option>
 		<option value="미드웨이">미드웨이</option>
 		<option value="슈렉">슈렉</option>
 		<option value="짱구는못말려">짱구는못말려</option>
 		<option value="아무튼영화">아무튼영화</option>
 		</select></li>
 		
 		<li><input type="text" name="title" size="80" style="text-overflow:ellipsis;" value=${title} ></li>
 		<hr style="color:#bdbdbd;width:130%;position:relative;right:20%;">
 		<li><textarea id= contents name="contents">${contents}</textarea></li> 		
 		<li><input id=btn type="submit" onclick="location.href='#'" value="수정하기"/></li>
 		</ul>
 		
 		</div>
 		
 		</form>
 	</div>
 	</div>
	
	<%@ include file="footer.jsp" %>
 </body>
</html>