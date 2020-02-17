<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="Dto.Dto" %>
<%@ page import="Apicon.Navermovie" %>
<%@ page import="Apicon.Boxoffice" %>
<%@ page import="Dto.BoxOfficeDto" %>
<%
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
    	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
 </head>
 
 <style>
 	#mypage{
 		clear:both;
	
		height:100%;

		display:inline-block;
		background-color:#f9f6f7;
	
		margin:150px auto 0px auto;
		padding:30px 280px 30px;
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
		font-size:25pt;
		text-align:center;
		font-weight:bold;
		margin-top:30px;
		margin-bottom:30px;
	}
	#subtitletext{
		font-size:15pt;
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



</script>
 <body>
 	<jsp:useBean id="data" class="Dao.Dbaccess"></jsp:useBean>
 	<%@ include file="header.jsp" %>
	<div id =mainwraper>
 	<div id = mypage>
 	<div id =titletext>현재 상영작</div>
	<%  
			Boxoffice movieboxoffice = new Boxoffice();
			ArrayList<BoxOfficeDto> movieinfo= movieboxoffice.boxofficelist();
			for(int i = 0;i<10;i++){
			String rank = i+1+"";
			String title = "title"+i;
	    	String openday = "openday"+i;
	    	String totalperson = "totalperson"+i;

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
					<div id=moreboxbtn OnClick="<%=moreinfo %>">
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

	<%@ include file="footer.jsp" %>
 </body>
</html>