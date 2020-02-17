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
 </head>
 <style>
 	
/*================================================기본================================================================*/
	

	 #sidebar{position:fixed; top:400px;left:100px;filter: drop-shadow(10px 10px 10px #000);}
	 #vertical ul{list-style:none;margin:0px; padding:0px; position:relative;}
	 #vertical ul a{text-decoration:none;display:block;width:150px;height:35px;line-height:35px;text-align:center;color:white;}
	 #vertical li{width:150px;background-color:#374955; }
	 #vertical ul li:hover{background-color:#84bfe1}
	 #vertical ul li li:hover{background-color:red}
	 #vertical ul ul{ display:none; position:absolute;left:150px;top:35px;}
	 #vertical ul li:hover > ul {display:block;}

	 #index{
	 z-index:999;
	 }
/*==========================기본===========================*/
	#sub_mainwrapper{
	position:absolute;
	width:1140px;
	margin:30px;
	height:3000px;
	background-color:orange;
	}
	#netizen{
	position:absolute;
	width:600px;
	font-size:12pt;
	height:20px;
	padding-top:50px;
	background-color:red;
	}
	#expert_search_box{
		position:absolute;
		width:800px;
		height:400px;
		background-color:white;
		top:75px;
		border-style:double;
		border-width:1px;
		box-shadow: 5px 5px 5px #000;
		}
	#expert_search_box_inbox{
	position:absolute;
	width:760px;
	height:360px;
	margin:20px;
	background-color:green;
	}
	#picture_position{
	position:absolute;
	filter: drop-shadow(5px 5px 5px #000);
	}
	#baekdusan_write{
	position:absolute;
	font-size:23pt;
	font-weight:bold;
	left:200px;
	}
	#infomation{
	position:absolute;
	left:200px;
	top:50px;
	font-size:15pt;
	}
	#inhr{
	position:absolute;
	background-color:black;
	width:530px;
	height:1px;
	top:150px;
	left:200px;

	}
	#bottom_box{
	position:absolute;
	width:760px;
	height:100px;
	background-color:yellow;
	bottom:0px;
	}
	#score{
	position:absolute;
	top:20px;
	font-size:15pt;
	}
	#movie_select{
	position:absolute;
	width:400px;
	height:30px;
	top:50px;
	border-radius:10px;
	}
 </style>
 <body>
 	<%@ include file="header.jsp" %>
	<div id ="mainwrapper">
		<div id="sub_mainwrapper">
		<div id="netizen">
			네티즌-관람객 평점
		</div>
		<div id="expert_search_box">
			<div id="expert_search_box_inbox">
					<div id="picture_position">
						<a href="https://search.naver.com/search.naver?sm=top_hty&fbm=1&ie=utf8&query=%EA%B2%A8%EC%9A%B8%EC%99%95%EA%B5%AD2">
						<img src="image/baekdusan.jpg" height="230px" width="180px" id="pic1" alt="백두산포스터"></a>
					</div>
					<div id="baekdusan_write">
						백두산
					</div><!--윈터2끝-->
					<table id="infomation">
						<tr>
							<td>기본정보&nbsp;&nbsp;&nbsp;</td>
							<td>코미디,범죄,드라마|</td>
							<td>94분|</td>
							<td>개봉 2020,01,02</td>
						</tr>
						<tr>
							<td>감독</td>
							<td>신해강</td>
						</tr>
						<tr>
							<td>출연</td>
							<td>김영호,김정팔</td>
						</tr>
					</table>
					<hr id="inhr"></hr>
					<span class="star-prototype">4.5</span> (4.5)
				<div id="bottom_box">
					<div id="score">
						현재상영작 평점보기
					</div><!--스코어끝-->
					<select id=movie_select size=1  onchange="window.open(value,'_self');" >
					<option>현재상영작</option>
					<option value="portsub2.html">백두산</option>
					<option value="www.daum.net">겨울왕국</option>
					<option name="select">쥬만지</option>
					<option name="select">감쪽같은 그녀</option>
					<option name="select">나를찾아줘</option>
					</select>
				</div>
			</div><!--서치박스 인박스끝-->
		</div><!--서치박스끝-->
		<div id="sidebar">
			 <div id="vertical">
					 <ul> 
						  <li><a href="#">전문가칼럼</a></li>
						  <li><a href="#">핫토픽</a>
						  <li><a href="#">현장사진</a>
						  <li><a href="#">네티즌평점</a></li>
						  <li><a href="#">시사회후기</a></li>
					</ul>
				</div>
			</div><!--사이드바끝-->
		</div><!--메인래퍼2끝-->
	</div><!--메인래퍼끝-->
	<%@ include file="footer.jsp" %>
 </body>
</html>
