<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="Apicon.Navermovie" %>
<%@ page import="Apicon.Boxoffice" %>
<%@ page import="Dto.BoxOfficeDto" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="Apicon.Crawling" %>
<%@ page import="Dto.megaboxdata" %>
<%@ page import="Apicon.Selenium" %>
<!doctype html>
<html lang="en">
<header>
</header>
 <head>
  <meta charset="UTF-8">
  <meta name="Generator" content="EditPlus®">
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
	width:250px;
	height:410px;
	background:white;
	color:black;
	margin:5px;
	border: 1px solid #bdbdbd;

	}
	#rank{
		position:absolute;
		text-align:left;
		color:white;
		font-size:20pt;
		padding:10px;
		z-index:10;
	}
	#rankingwrap{
	height:100%;
	width:1350px;
	margin: 0 auto 0 auto;
	}
	#movieNm{
	text-align:center;
	padding-top:5px;
	width:180px;
	overflow:hidden;
    text-overflow:ellipsis;
    white-space:nowrap;
    margin-left:auto;
    margin-right:auto;
	
	}
	#openday{
	font-size:8pt;
	opacity:0.7;
	text-align:center;
	}
	#moreinfobox{
	position:absolute;
	width:250px;
	height:358px;
	background:black;
	opacity:0;
	transition: opacity 0.5s;
	
	}
	#moreboxbtn{
	color:white;
	opacity:1;
	cursor:pointer;
	border:1px solid white;
	width:100px;
	height:40px;
    margin-top:10px;
    position:relative;
    top:20%;
	}
	#btnwrap{
	
	z-index:200;
	margin:auto;
	width:100px;
	position:absolute;
    top:0; left:0; bottom:0; right:0;
    height:285px;
    margin:25% auto;
 
	}
	#btntitle{
	margin-top:10px;
	}
	#slidetext{
	position:absolute;
	width:400px;
	height:200px;
	top:27%;
	left:10%;
	z-index:9999;
	font-size:20pt;
	font-weight:bold;
	color:#bdbdbd;
	}
	#slideimg{
	position:relative;
	top:-80px;
	}
	</style>
	<script>
	(function($) {
	    $(function() {
	          $(document).on({
	        		  mouseenter:function(e) {  				      		
	        			$(this).find('#moreinfobox').css('opacity','0.7')
	        		  },
	        		  mouseleave:function(e){
	        			$(this).find('#moreinfobox').css('opacity','0')
	        		  }
	        		 
	          } ,"#rankingbox");
	    });
	})(jQuery);
	(function($) {
	    $(function() {
	          $(document).on({
	        		  mouseenter:function(e) {  				 
	        		
	        	   		  $(this).css('color','red')
	        			  $(this).css('border-color','red')  	  
	        		  },
	        		  mouseleave:function(e){

	        			  $(this).css('color','white')
	        			  $(this).css('border-color','white')
	        		  }
	        
	          } ,"#moreboxbtn");
	    });
	})(jQuery);
	

	function moviemoreinfo(title){
		
		   location.href = "M_moviearticle?title="+title;
	}
	</script>

  
 </head>
 <body>
 <% Crawling megabox = new Crawling();
 	Selenium se = new Selenium();
 	String[] li =se.crawl();
 	%>
	<%@ include file="header.jsp" %>
	<div id=bxsilderwrapper style="margin-top:200px;">
		<ul class="bxslider" style="z-index:50;">
		<%if(li!=null){ %>
		  <li><img id= slideimg src=<%=li[0] %> /></li>
		  <li><img id= slideimg src=<%=li[1] %> /></li>
		  <li><img id= slideimg src=<%=li[2] %> /></li>
		  <li><img id= slideimg src=<%=li[3] %> /></li>
		  <%} %>
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
			String rank = i+1+"";
	

	    	Navermovie poster = new Navermovie();
	    	

	    	String movieposter = poster.movieposter(movieinfo.get(i).getMovieNm());
	    	String moreinfo = "location.href =\'M_moviearticle.jsp?title="+movieinfo.get(i).getMovieNm()+"\'";
		%>
		
		<div id=rankingbox>
		<div id=rank><%=rank %></div>
			<div id=moreinfobox>
				<div id=btnwrap>
					<div id=moreboxbtn>
						<div id=btntitle>예매</div>
					</div>
					<div id=moreboxbtn  OnClick="<%=moreinfo %>" >
						<div id=btntitle>정보</div>
					</div>
				</div>
			</div>
		
		<img src=<%=movieposter %> id =<%=poster%> style="width:250px;height:auto;"/>


		<div id=movieNm><%= movieinfo.get(i).getMovieNm() %></div>
		<div id=openday>개봉일 : <%= movieinfo.get(i).getOpenDt() %></div>
		
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
