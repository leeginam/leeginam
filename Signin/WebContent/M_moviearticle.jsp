<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.util.List"%>
<%@ page import="Dto.navermovie_article_dto" %>
<%@ page import="Apicon.Navermovie" %>
<%
	String y ="";
	y=request.getParameter("fail");
	if(y==null){
	y="";
	}
	
	String title=request.getParameter("title") ;
	Navermovie nmn= new Navermovie();
	
	List<navermovie_article_dto> li = nmn.moviearticle(title);
	if(li==null){
		System.out.print("눌값@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
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
margin:60px 0;
background-color:#f9f6f7;
border-radius:10px;
margin-top:250px;
text-align:left;
margin-left:auto;
margin-right:auto;
padding-bottom:5%;
}

#infobox{
	position:relative;
	top:50px;
	width:90%;
	height:800px;
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
#movieinfowrap{
float:left;

}
#movieposter{
width:300px;
height:auto;
float:left;
margin:30px;
}
#movietitle{
float:left;
font-size:30pt;
}
#moviesubtitle{
clear:both;
float:left;
padding-top:14pt;
font-size:20pt;
opacity:0.7;
}
#movieinfowrap div{
clear:both;
float:left;
}


#movieinfowrap div:nth-child(1){
padding-top:40px;
}
#movieinfowrap div:nth-child(n+2){
margin-top:20px;
}
#booking{
border:1px solid #FF243E;
background:#FF243E;
padding:10px 30px 10px 30px;
border-radius:5px;
}
</style>


 <body bgcolor="#364f6b">
	 <%@ include file="header.jsp" %>

	 <div id=cm>
	<div id = mypage>
	
  <div id = infobox>
    <img id= movieposter src=<%=li.get(0).getImglink() %>>
	<div id=movieinfowrap> 
		 <div id=movietitle><%=li.get(0).getTitle() %></div>
		 <div id=moviesubtitle> <%=li.get(0).getSubtitle() %></div>
		 
		 <div id=opendt> <%=li.get(0).getOpenday() %></div>
		 <div id=moviedirector> 감독 : <%=li.get(0).getDirector() %></div>
		 <div id= movieactor>배우: <%=li.get(0).getActor() %></div>
		 <div id= movieuserrating>평점: <%=li.get(0).getUserrating() %></div>
		 <div id = booking>예매</div>
		
</div>
  </div>
  </div>
  </div>
	<%@ include file="footer.jsp" %>
 </body>
</html>