<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="Apicon.Navermovie" %>
<%@ page import="Apicon.Boxoffice" %>
<%@ page import="Dto.BoxOfficeDto" %>
<%@ page import="java.util.ArrayList" %>
<!doctype html>
<html lang="en">
<header>
</header>
 <head>
  <meta charset="UTF-8">
  <meta name="Author" content="">
  <meta name="Keywords" content="">
  <meta name="Description" content="">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>영화비교</title>
  <!-- jQuery library (served from Google) -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<!-- bxSlider Javascript file -->
	<script src="bxslider-4-master\bxslider-4-master\dist/jquery.bxslider.min.js"></script>
	<!-- bxSlider CSS file -->
	<link href="bxslider-4-master\bxslider-4-master\dist/jquery.bxslider.css" rel="stylesheet" />
	<link href="css/cssindex.css" rel="stylesheet">
	<script src="js/scriptindex.js"></script>
	<style>
	.bx-wrapper .bx-pager {
	position:absolute;
	top:805px;
	}
	#rankingbox{
	float:left;
	width:200px;
	height:300px;
	background:#333333;
	color:white;
	margin:20px;
	}
	#rank{
	width:100%;
	height:40px;

	background: #064461;
	background: linear-gradient(#003040, #002535);
	}
	#rankingwrap{
	height:100%;
	width:1200px;
	margin: 0 auto 0 auto;
	}
	#movieNm{
	text-align:left;
	padding-left:10px;
	
	}
	</style>


  
 </head>
 <body>
	<%@ include file="header.jsp" %>
	<div id=bxsilderwrapper style="margin-top:200px;">
		<ul class="bxslider" style="z-index:50;">
		  <li><img src="img/slide1.jpg" /></li>
		  <li><img src="img/slide2.jpg" /></li>
		  <li><img src="img/slide3.jpg" /></li>
		  <li><img src="img/slide4.jpg" /></li>
		</ul>
		</div>
		
	<form action="" method="get" id=movieform>
		<div id=boxoffice>
		<h1 class=maintitle>BOX OFFICE</h1>
		<div id =rankingwrap>
		<%  
			Boxoffice movieboxoffice = new Boxoffice();
			ArrayList<BoxOfficeDto> movieinfo= movieboxoffice.boxofficelist();
			for(int i = 0;i<10;i++){
			String rank = i+1+"위";
			String title = "title"+i;
	    	String openday = "openday"+i;
	    	String totalperson = "totalperson"+i;
	    	
	    	Navermovie poster = new Navermovie();
	    	String movieposter = poster.movieposter(movieinfo.get(i).getMovieNm());
	    	
		%>
		
		<div id =rankingbox>
		<div id = rank><div style="padding-top:10px;"><%=rank %></div></div>
		<img src=<%=movieposter %> id =<%=poster%> style="width:auto;height:auto;margin-top:20px;"/>

		<div id=movieNm><%= movieinfo.get(i).getMovieNm() %></div>
		<div >개봉일 : <%= movieinfo.get(i).getOpenDt() %></div>
		<div >누적 관람객 : <%= movieinfo.get(i).getAudiAcc() %></div>
		
		</div>
		<%
		}
		%>
	
		</div>
		</div>
		</form>
	
	
	<div id=eventbox>
		<h1 class=maintitle>EVENT</h1>
		<div id =eventcontentbox>
		<a href="#"><img class=eventimg src="img/con1.jpg"></a>
		<a href="#"><img class=eventimg src="img/con2.jpg"></a>
		<a href="#"><img class=eventimg src="img/con3.jpg"></a>
		<br>
		<a href="#"><img class=eventimg src="img/con4.jpg"></a>
		<a href="#"><img class=eventimg src="img/con5.jpg"></a>
		<a href="#"><img class=eventimg src="img/con6.jpg"></a>
		
		</div>
		<a href="#"><img class=eventimglar src="img/conlar.jpg"></a>
	</div>
	<%@ include file="footer.jsp" %>
	
 </body>
</html>
