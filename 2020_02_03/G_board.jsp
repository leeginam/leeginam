<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="Dto.Dto" %>
<%@ page import="Dao.Dbaccess" %>

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
 	#title{
 		background:#bdbdbd;
 		border-bottom:1px solid black;
 		
 	}
 	table{
 		border-collapse:collapse;
 		text-align:center;
 	}
 	tr{
 		border-bottom:1px solid black;
 	}
 	td:first-child{
 		text-align:center;
 	}
 	tr:nth-child(2){
 		width:600px;
 	}
 	tr:nth-child(3){
 		width:600px;
 	}
 	tr:nth-child(4){
 		width:600px;
 	}
 	tr:nth-child(n+2){
 		height:200px;
 	}
 	
 	#mypage{
 		clear:both;
		width:1300px;
		height:100%;
		border:solid black 1px;
		display:inline-block;
		background-color:#f9f6f7;
		border-radius:10px;
		margin:250px auto 60px auto;
		padding:0 30px 60px 30px;
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
	#linktext{
		color:black;
	}
	#contentswrap{
		width:1260px;
		height:100%;
	}
	#contents{
		float:left;
		width:380px;
		height:360px;
		margin:20px;
		top:50%;
		box-shadow: 
		0 5px 15px 1px rgba(0, 0, 0, 0.6), 
		0 0 200px 1px rgba(255, 255, 255, 0.5);
	}
	#ctext{
		position:relative;
		width:90%;
		height:200px;
		margin-left:auto;
		margin-right:auto;
		margin-top:20px;
	}
	#cmovie{
	float:left;
	font-size:15pt;
	font-weight:bold;
	}
	#ctitle{
	float:left;
	font-size:15pt;
	font-weight:bold;
	height:27px;
	width:150px;
	overflow:hidden;
	text-overflow:ellipsis;
	white-space:nowrap;

	}
	#wddiv{
		width:100%;
		clear:both;
		float:left;
		margin-top:20px;
	}
	#cwrite{

	float:left;
	
	}
	#cday{
	float:right;
	}
	img{
		width:380px;
		height:600px;
	}
	#img{
	width:380px;
	height:250px;
	position:relative;
	overflow:hidden;
	}
	#wbtn{
		float:right;
		margin-right:100px;
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
 	<div id =titletext>영화 매거진<span id=subtitletext>| 다양한 영화정보를 공유하세요</span>
 	<input id=wbtn type="button" onclick="location.href='G_write.jsp'" value="글쓰기"/></div>
 	
 	<hr style="width:90%;color:#bdbdbd;">
 	<div id=tablewrap>
 		
 		<%
 		ArrayList<Dto> li=(ArrayList<Dto>)request.getAttribute("data");
 		out.println(li.size());
 		String img="";
		for(int i=0;i<li.size();i++){
			String url= "board.vo?command=boardin&num="+Integer.toString(li.get(i).getNum());
			if(li.get(i).getMoviename().equals("1917")){
				img = "1917.jpg";
			}
			else if(li.get(i).getMoviename().equals("미드웨이")){
				img = "midway.jpg";
			}
			else if(li.get(i).getMoviename().equals("슈렉")){
				img = "shurek.jpg";
			}
			else if(li.get(i).getMoviename().equals("해리포터")){
				img = "harrypoter.jpg";
			}
			else if(li.get(i).getMoviename().equals("짱구는못말려")){
				img = "jjanggu.jpg";
			}
			else
				img = "none.png";
			String imglink="img/"+img;
			
			%><a id=linktext href=<%out.print(url); %>><div id =contentswrap><div id = contents>
			<div id =img><img src=<%= imglink %> ></div><div id =ctext>
			<div id ="cmovie">[ <%out.println(li.get(i).getMoviename());%>]</div>
			<div id ="ctitle"><%out.println(li.get(i).getTitle());%></div>	
			<div id =wddiv><div id ="cwrite"><%out.println(li.get(i).getWritename());%></div>
			<div id ="cday"><%out.println(li.get(i).getDay()+"<br>");%></div></div>
			</div>
			</div>
			</div></a>
			<%
			
		}
	
	%></div>
 	<div>
 		<form method="post" action="action.jsp?class=search">
 		 	<select size="1">
 			<option values="영화제목으로검색" selected>영화제목으로검색</option>
 			<option values="작성자명으로검색" >작성자명으로검색</option>
 			<option values="작성일로검색" >작성일로검색</option>
 			<input type="text" style="margin-top:200px;" id="ser" name="ser" placeholder="영화제목검색창" size="40"><input type=submit value="검색">
 			</select>
 		</form>
 		</div>
 		</div>
 		
 	</div>
 	</div>

	<%@ include file="footer.jsp" %>
 </body>
</html>