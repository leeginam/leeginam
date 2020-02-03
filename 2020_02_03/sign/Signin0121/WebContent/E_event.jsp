<%@page import="Eventaction.Event_list_Action"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="Dto.Dto" %>
<%@ page import="Dao.Dbaccess" %>
<%@ page import="Dto.Event_list_dto" %>
<%
ArrayList<Event_list_dto> list = (ArrayList<Event_list_dto>)request.getAttribute("articleList");
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
		width:1160px;
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
		width:1120px;
		height:100%;
	}
	#contents{
		float:left;
		width:250px;
		height:450px;
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
		width:250px;
		height:auto;
	}
	#img{
	width:250px;
	height:auto;
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
 	<div id =titletext>이벤트<span id=subtitletext>| 경품 한가득 이벤트에 참여해보세요</span>
 	</div>
 	
 	<hr style="width:90%;color:#bdbdbd;">
 	<div id=tablewrap>
 	<%
 		for(int i=0;i<list.size();i++){ 
 	  String imglink = "img/event/event"+(i+1)+".jpg";
 	%>
 		<div id = contents>
 		<img src = <%=imglink %>>
 		<div><%=list.get(i).getTitle() %></div>
 		<div><%=list.get(i).getEventstart()%> ~ <%=list.get(i).getEventfinal()%></div>	
 		</div>
 	<% } %>
 		</div>
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
