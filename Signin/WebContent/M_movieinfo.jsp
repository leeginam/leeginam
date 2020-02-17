<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script><!--js라이브러리-->
<!--===============================슬라이드==============================-->
<script src="slider/jquery.flexslider.js"></script><!--슬라이드 js-->
<script src="js/practi.js"></script><!--슬라이드 js-->
<link rel="stylesheet" type="text/css" href="slider/flexslider.css"/><!--슬라이드 css-->
<!--==================================비디오=========================-->
<script src="js/video_control.js"></script><!--비디오 js-->
<script src="js/jquery.bpopup-0.10.0.min.js"></script><!--비디오 js-->
<link rel="stylesheet" type="text/css" href="css/video_css.css"/><!--비디오 css-->
<!--==================================부트스트랩=========================-->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css"><!--부트스트랩 라이브러리-->

<!doctype html>
<html lang="en">
 <head>
  <meta charset="UTF-8">
  <meta name="Generator" content="EditPlus®">
  <title>Document</title>
 </head>
 <style>
	#mainwrapper{
	position:relative;
	margin-left:320px;
	margin-top:180px;
	height:3300px;
	}
	#top_box{
	position:absolute;
	width:1200px;
	height:110px;
	margin-left:auto;
	margin-right:auto;		
	/*background:red;*/
	}
	#top_box_write{
	position:absolute;
	width:1200px;
	padding-top:30px;
	height:80px;	
	/*background:yellow;*/
	font-size:30pt;
	font-weight:bold;
	}
	#top_box_hr{
	position:absolute;
	top:80px;
	width:1200px;
	height:5px;
	background:black;
	}
	#second_box{
	position:absolute;
	top:150px;
	/*background:orange;*/
	width:1200px;
	height:300px;	
	}
	#second_box_picture{
	position:absolute;
	/*background:purple;*/
	width:250px;
	height:300px;	
	}
	#second_box_writebox{
	position:absolute;
	/*background:purple;*/
	left:300px;
	width:900px;
	height:300px;	
	}
	#second_box_writebox_moviename{
	position:relative;
	/*background:yellow;*/
	width:850px;
	height:40px;
	font-size:20pt;
	font-weight:bold;
	}
	#second_box_writebox_moviename_eng{
	position:relative;
	/*background:red;*/
	width:850px;
	height:20px;
	font-size:10pt;
	}
	#second_box_writebox_percentage{
	position:relative;
	/*background:blue;*/
	width:850px;
	height:25px;
	margin-top:20px;
	font-size:10pt;
	}
	#second_box_writebox_hr{
	position:relative;
	background:black;
	width:850px;
	height:1px;
	}
	#second_box_writebox2{
	position:relative;
	/*background:green;*/
	width:850px;
	height:100px;
	margin-top:20px;
	}
	#second_box_writebox2 ul{
	list-style:none;
	margin-left:-40px;
	}
	#second_box_writebox2 li{
	display:inline;
	}
	#third_box{
	position:absolute;
	/*background:green;*/
	width:950px;
	height:1000px;
	top:480px;
	}
	#third_box{
	position:absolute;
	/*background:green;*/
	width:950px;
	height:400px;
	top:480px;
	}
	#third_box_menu_box{
	position:relative;
	/*background:yellow;*/
	width:950px;
	height:50px;
	}
	#third_box_menu_box_color{
	position:absolute;
	background:red;
	width:700px;
	height:50px;
	margin-left:125px;
	}
	#third_box_menu_box_color ul{
	padding-top:10px;
	list-style:none;
	margin-left:-15px;
	}
	#third_box_menu_box_color li {
	margin-left:20px;
	color:black;
	display:inline;
	}
	#third_box_menu_box_color li a {	
	font-size:15pt;
	color:black;
	}
	#third_box_menu_write{
	position:relative;
	/*background:blue;*/
	top:50px;
	width:950px;
	height:260px;
	}
	#fourth_box {
	position:absolute;
	top:880px;
	width:950px;
	height:350px;
	}
	#fourth_box tr{
	width:950px;
	height:80px;

	text-align:center;
	}
	#fourth_box td{
	width:317px;
	height:50px;
	text-align:center;
	}
	#fourth_box_table2{
	position:absolute;
	top:880px;
	width:950px;
	height:250px;
	top:80px;
	}
	#fourth_box_table2 tr{
	width:950px;
	height:265px;
	text-align:center;
	border-bottom:1px solid;

	}
	#fourth_box_table2 td{
	width:317px;
	height:50px;
	text-align:center;
	}
	.table1{
	border-right:1px solid;
	border-bottom:1px solid;
	}
	.table2{
	border-bottom:1px solid;
	}
	.table3{
	border-right:1px solid;
	border-bottom:1px solid;
	border-top:1px solid;
	}
	.table4{
	border-bottom:1px solid;
	border-top:1px solid;
	}
	#center_picture_box{
	position:absolute;
	width:950px;
	height:100px;
	background-color:red;
	top:1270px;
	}
	.trailer{
	position:absolute;
	width:950px;
	height:50px;
	background-color:gray;
	top:1400px;
	}
	.trailer_write_box{
	position:absolute;
	height:30px;
	width:70px;
	font-size:5pt;
	background-color:yellow;
	top:10px;
	left:15px;
	}
	.trailer_write{
	position:absolute;
	font-size:12pt;
	top:5px;
	}
	.trailer_num_box{
	position:absolute;
	height:30px;
	width:30px;
	font-size:5pt;
	background-color:red;
	left:75px;
	}
	.trailer_num_write{
	position:absolute;
	font-size:12pt;
	top:5px;
	}
	.trailer_plus{
	position:absolute;
	height:30px;
	width:30px;
	font-size:5pt;
	background-color:green;
	left:40px;
	}
	#video_box{
	position:absolute;
	width:950px;
	height:320px;
	background-color:orange;
	top:1500px;
	}
	#video_box ul{
	list-style:none;
	margin-left:-40px;
	margin-top:5px;
	}
	#video_box li{
	display:inline-block;
	margin-left:10px;
	}
	.video_box_inbox{
	position:relative;
	width:300px;
	height:300px;
	background-color:red;
	}
	.video_box_inbox_picture{
	position:relative;
	width:300px;
	height:230px;
	background-color:yellow;
	}
	.video_box_inbox_write{
	position:relative;
	width:300px;
	height:60px;
	background-color:green;
	margin-top:10px;
	}
	.video_box_inbox_write_head{
	position:relative;
	width:300px;
	height:25px;
	background-color:purple;
	font-size:15pt;
	padding-top:3px;
	}
	.video_box_inbox_write_date{
	position:relative;
	width:300px;
	height:20px;
	background-color:blue;
	}
	#aside_box{
	position:absolute;
	width:220px;
	height:500px;
	background-color:blue;
	top:480px;
	left:970px;
	}
	#aside_box2{
	position:absolute;
	width:220px;
	height:500px;
	background-color:blue;
	top:1000px;
	left:970px;
	}
	.trailer2{
	position:absolute;
	width:950px;
	height:50px;
	background-color:gray;
	top:1850px;
	}
	.trailer_write_box2{
	position:absolute;
	height:30px;
	width:70px;
	font-size:5pt;
	background-color:yellow;
	top:10px;
	left:15px;
	}
	.trailer_write2{
	position:absolute;
	font-size:12pt;
	top:5px;
	}
	.trailer_num_box2{
	position:absolute;
	height:30px;
	width:30px;
	font-size:5pt;
	background-color:red;
	left:75px;
	}
	.trailer_num_write2{
	position:absolute;
	font-size:12pt;
	top:5px;
	}
	.trailer_plus2{
	position:absolute;
	height:30px;
	width:30px;
	font-size:5pt;
	background-color:green;
	left:40px;
	}
	#slider_box{
	position:absolute;
	height:550px;
	width:850px;
	font-size:5pt;
	/*background-color:green;*/
	left:50px;
	top:1950px;
	}
	#table_box{
	position:absolute;
	height:550px;
	width:1200px;
	font-size:5pt;
	top:2600px;
	}
	#last_bottom_banner{
	position:relative;
	height:200px;
	width:100%;
	background-color:green;
	}

 </style>
 <%@ include file="header.jsp" %>
 <body>
	<div id =mainwrapper>
		<div id=top_box>
			<div id=top_box_write>
				영화상세
				<hr id=top_box_hr>
			</div>
		</div>
		<div id=second_box>
			<div id=second_box_picture>
			<a href="#"><img src="img/now_movie_picture/baekdusan.jpg" height=300px width=250px></a>
			</div>
			<div id=second_box_writebox>
				<div id=second_box_writebox_moviename>
				백두산
				</div>
				<div id=second_box_writebox_moviename_eng>
				ASHFALL
				</div>
				<div id=second_box_writebox_percentage>
				 예매율 20%|89%(실관람객:76000)
				</div>
				<div id=second_box_writebox_hr>
				</div>
				<div id=second_box_writebox2>
					<ul>
						<li>감독:이해준,김병서</li>
						<li>/프로듀서:</li>
						<li>최지선,최원기</li>
						<li>/배우:</li>
						<li>이병헌,하정우,마동석,전혜진,배수지</li>
					</ul>
					<ul>
						<li>장르:액션,드라마</li>
						<li>/기본:</li>
						<li>12세이상.128분.한국</li>
					</ul>
					<ul>
						<li>개봉:</li>
						<li>2019.12.19</li>
					</ul>
				</div>
			</div>
		</div><!--세컨드박스-->
		<div id=third_box>
			<div id=third_box_menu_box>
				<div id=third_box_menu_box_color>
					<ul>
						<li><a href="#">주요정보&nbsp&nbsp |</a></li>
						<li><a href="#">트레일러&nbsp&nbsp |</a></li>
						<li><a href="#">스틸컷&nbsp&nbsp |</a></li>
						<li><a href="#">평점/리뷰 &nbsp&nbsp|</a></li>
						<li><a href="#">상영시간표</a></li>
					</ul>
				</div><!--third_box_menu_box_color끝-->
			</div><!--third_box_menu_box끝-->
			<div id=third_box_menu_write>
			대한민국 관측 역사상 최대 규모의 백두산 폭발 발생<br>
			갑작스러운 재난에 한반도는 순식간에 아비규환이되고<br>
			남과 북 모두를 집어삼킬 추가 폭발이 예측된다.<br>
			<br>
			사상 초유의 재난을 막기위해'전유경은<br>
			백두산 폭발을 연구해 온 지질학 교수 ‘강봉래’(마동석)의 이론에 따른 작전을 계획하고,<br>
			전역을 앞둔 특전사 EOD 대위 ‘조인창’(하정우)이 남과 북의 운명이 걸린 비밀 작전에 투입된다.<br>
			작전의 키를 쥔 북한 무력부 소속 일급 자원 ‘리준평’(이병헌)과 접선에 성공한 ‘인창’.<br>
			하지만 ‘준평’은 속을 알 수 없는 행동으로 ‘인창’을 곤란하게 만든다.<br>
			한편, ‘인창’이 북한에서 펼쳐지는 작전에 투입된 사실도 모른 채 <br>
			서울에 홀로 남은 ‘최지영’(배수지)은 재난에 맞서 살아남기 위해 고군분투하고<br>
			그 사이,  백두산 마지막 폭발까지의 시간은 점점 가까워 가는데…!
			</div><!--third_box_menu_write끝-->				
		</div><!--third_box끝-->
		<div id="aside_box">
			<img src="img/now_movie_picture/aside.png" width=220px height=500px>
		</div>
		<div id="aside_box2">
			<img src="img/now_movie_picture/aside2.png" width=220px height=500px>
		</div>

		<div id=fourth_box>
			<div id=fourth_box_table>
				<table border="0">
					<tr>
						<td class="table3">매력포인트</td>
						<td class="table3">성별예매분포</td>
						<td class="table4">연령별 예매 분포</td>
					</tr>				
				</table>
			</div>
			<div id=fourth_box_table2>
				<table border="0">
					<tr>
						<td class="table1">매력포인트</td>
						<td class="table1">성별예매분포</td>
						<td class="table2">연령별 예매 분포</td>
					</tr>				
				</table>
			</div>
		</div><!--fourth_box끝-->
		<div id="center_picture_box">
			<a href="#"><img src="img/now_movie_picture/doctor.jpg" height=100px width=950px></a>
		</div>
		<div class="trailer">
			<div class="trailer_write_box">
				<div class="trailer_write">
					트레일러
				</div>
				<div class="trailer_num_box">
					<div class="trailer_num_write">
						5건
					</div>
					<div class="trailer_plus">
						<a href="#"><img src="img/now_movie_picture/plus.png" height=30px width=30px></a>
					</div>
				</div>
			</div>
		</div><!--트레일러 끝-->
<!--===========================================================================-->
		<div id="video_box">
			<ul>
				<li>
					<div class="video_box_inbox">
						<div class="video_box_inbox_picture">
							<img src="img/now_movie_picture/video_picture.png" height=220px width=290px>
						</div>
						<div class="video_box_inbox_write">
							<div class="video_box_inbox_write_head">
									<div class="my-button cursor">30초 리뷰 스팟</div>
								<div id="element_to_pop_up">
									<a class="b-close">x</a>
									<iframe width="640" height="360" src="http://www.youtube.com/embed/pPb2lIap6Es?rel=0"				frameborder="0" allowfullscreen>
									</iframe>
								</div>
							</div>
							<div class="video_box_inbox_write_date">
								2019.12.27
							</div>
						</div>
					</div><!--video_box_inbox끝-->
				</li>
				<li>
					<div class="video_box_inbox">
						<div class="video_box_inbox_picture">
							<img src="img/now_movie_picture/video_picture.png" height=220px width=290px>
						</div>
						<div class="video_box_inbox_write">
							<div class="video_box_inbox_write_head">
								30초 리뷰 스팟
							</div>
							<div class="video_box_inbox_write_date">
								2019.12.27
							</div>
						</div>
					</div><!--video_box_inbox끝-->
				</li>
				<li>
					<div class="video_box_inbox">
						<div class="video_box_inbox_picture">
							<img src="img/now_movie_picture/video_picture.png" height=220px width=290px>
						</div>
						<div class="video_box_inbox_write">
							<div class="video_box_inbox_write_head">
								30초 리뷰 스팟
							</div>
							<div class="video_box_inbox_write_date">
								2019.12.27
							</div>
						</div>
					</div><!--video_box_inbox끝-->
				</li>
			</ul>
		</div><!--video_box끝-->
		<div class="trailer2">
			<div class="trailer_write_box2">
				<div class="trailer_write2">
					스틸컷
				</div>
				<div class="trailer_num_box2">
					<div class="trailer_num_write2">
						5건
					</div>
					<div class="trailer_plus2">
						<a href="#"><img src="img/now_movie_picture/plus.png" height=30px width=30px></a>
					</div>
				</div>
			</div>
		</div><!--스틸컷 끝-->
		<div id="slider_box">
			<div class="flexslider">
			  <ul class="slides">
				<li>
				  <img src="img/now_movie_picture/slider1.jpg" />
				</li>
				<li>
				  <img src="img/now_movie_picture/slider2.jpg" />
				</li>
				<li>
				  <img src="img/now_movie_picture/slider3.jpg" />
				</li>
				<li>
				  <img src="img/now_movie_picture/slider4.jpg" />
				</li>
			  </ul>
			</div>
		</div>
		<div id="table_box">
			 <div class="container">
				<table class="table table-striped">
					<thead>
						<tr style="background-color:cyan">
							<th>번호</th>
							<th>제목</th>
							<th>작성자</th>
							<th>날짜</th>
							<th>조회수</th>
						<tr>
					<thead>
					<tbody>
						<tr>
							<td>1</td>
							<td>이제</td>
							<td>길라임</td>
							<td>2016.12.01</td>
							<td>&nbsp;&nbsp;&nbsp;3</td>
						</tr>
						<tr>
							<td>2</td>
							<td>부트스트랩</td>
							<td>김혜연</td>
							<td>2011.12.01</td>
							<td>&nbsp;&nbsp;&nbsp;3</td>
						</tr>
						<tr>
							<td>3</td>
							<td>하기싫다</td>
							<td>이기남</td>
							<td>2018.08.08</td>
							<td>&nbsp;&nbsp;&nbsp;3</td>
						</tr>
						<tr>
							<td>4</td>
							<td>하기싫다</td>
							<td>이기남</td>
							<td>2018.08.08</td>
							<td>&nbsp;&nbsp;&nbsp;3</td>
						</tr>
						<tr>
							<td>5</td>
							<td>하기싫다</td>
							<td>박하영</td>
							<td>2018.08.08</td>
							<td>&nbsp;&nbsp;&nbsp;3</td>
						</tr>
						<tr>
							<td>6</td>
							<td>하기싫다</td>
							<td>이용준</td>
							<td>2018.08.08</td>
							<td>&nbsp;&nbsp;&nbsp;3</td>
						</tr>
						<tr>
							<td>7</td>
							<td>하기싫다</td>
							<td>정형일</td>
							<td>2018.08.08</td>
							<td>&nbsp;&nbsp;&nbsp;3</td>
						</tr>
						<tr>
							<td>8</td>
							<td>하기싫다</td>
							<td>정형일</td>
							<td>2018.08.08</td>
							<td>&nbsp;&nbsp;&nbsp;3</td>
						</tr>
						<tr>
							<td>9</td>
							<td>하기싫다</td>
							<td>정형일</td>
							<td>2018.08.08</td>
							<td>&nbsp;&nbsp;&nbsp;3</td>
						</tr>
						<tr>
							<td>10</td>
							<td>하기싫다</td>
							<td>정형일</td>
							<td>2018.08.08</td>
							<td>&nbsp;&nbsp;&nbsp;3</td>
						</tr>
					</tbody>
				</table>
				<hr/>
				<a class="btn btn-default pull-right">글쓰기</a>
				<div class="text-center">
					<ul class="pagination">
						<li><a href="#">이전페이지</a></li>
						<li><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
						<li><a href="#">다음페이지</a></li>
					</ul>
				</div>
			</div>
		</div><!--테이블 박스끝-->
	</div><!--메인래퍼끝-->
	<div id="last_bottom_banner">
	<a href="event.jsp"><img src="img/now_movie_picture/now_bottom_banner1.jpg" height=200px width=100%></a>
	</div>
	  <%@ include file="footer.jsp" %>
 </body>
</html>
