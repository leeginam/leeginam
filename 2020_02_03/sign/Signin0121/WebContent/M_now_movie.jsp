<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!doctype html>
<html lang="en">
 <head>
  <title>Document</title>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <link rel="stylesheet" type="text/css" href="css/header.css"/>
 </head>
 <style>
/*================================================기본================================================================*/
#mainwrapper{
position:relative;
margin-left:320px;
margin-top:180px;
height:4600px;
}


#main_upper_box{
position:absolute;
background-color:orange;
width:1200px;
height:100px;
}

#main_upper_box hr{
position:absolute;
width:1200px;
height:2px;
background-color:black;
top:90px;
}

#main_upper_box_write_left{
position:absolute;
font-size:30pt;
font-family :'고딕', 'Malgun Gothic', sans-serif;
font-weight:bold;
top:15px;
left:10px;
text-shadow:15px 20px 10px #4C4C4C ;
}

#movie_box_1{
position:absolute;
width:1200px;
height:2500px;
top:101px;

}

#movie_box_1_selectbox{
position:absolute;
height:25px;
font-size:10pt;
width:150px;
border:solid 2px #374955;
right:20px;
top:10px;
}

/*===============================================================영화차트 시작====================================*/
.movie_box_1_banner1{
position:absolute;
height:2950px;
width:1200px;
top:45px;
}
.movie_box_1_no{
position:relative;
width:200px;
height:40px;
color:red;
font-weight:bold;
text-align:center;
background-color:white;
border:dotted  3px #374955;
left:-3px;
font-size:20pt;
}
.movie_box_1_picture{
position:relative;
height:200px;
width:200px;
top:20px;
box-shadow:20px 50px 10px black;
}
.movie_box_1_bottom_write{
position:relative;
font-size:15pt;
top:80px;
font-weight:bold;
}
.movie_box_1_bottom_write1{
position:relative;
font-size:10pt;
font-family:"굴림";
color:gray;
top:80px;
}

.movie_box_1_banner1 ul{
list-style:none;
margin-left:-107px;
}
.movie_box_1_banner1 li{
display:inline-block;
margin-left:100px;
}
.movie_box_1_banner1 hr{
position:relative;
width:1200px;
height:2px;
background-color:red;
top:100px;
}

/*===============================================================영화차트끝====================================*/

/*===============================================================하단광고 시작====================================*/
#bottom_advertising1{
width:1200px;
height:200px;
background-color:orange;
position:absolute;
top:3200px;
}
#bottom_advertising2{
width:1200px;
height:400px;
background-color:red;
position:absolute;
top:3450px;
}
#bottom_video_box{
position:relative;
width:1200px;
height:550px;
background-color:black;
top:3900px;
}
#bottom_video_box_in_box_left{
position:absolute;
width:400px;
height:450px;
background-color:red;
top:50px;
left:50px;
}
#bottom_video_box_in_box_left_write{
position:absolute;
color:white;
font-size:15pt;
height:50px;
width:400px;
background-color:blue;
}

/*맨 하단 동영상 넣는부분 가운데 박스 css 시작*/

.bottom_video_box_in_box_center{
position:absolute;
width:300px;
height:450px;
background-color:gray;
top:50px;
left:500px;
}

.bottom_video_box_in_box_center img{
position:relative;
height:80px;
width:120px;
top:15px;
left:10px;
}

.bottom_video_box_in_box_center_writebox{
position:absolute;
width:130px;
height:62px;
top:15px;
left:140px;
background-color:yellow;
padding-top:18px;
}

.bottom_video_box_in_box_center_background{
position:relative;
background-color:green;
height:110px;
width:280px;
top:5px;
left:-30px;
}

.bottom_video_box_in_box_center ul{
list-style:none;
left:-200px;
}
.bottom_video_box_in_box_center li{
display:block;
}

#bottom_video_box_in_box_center_writebox_upwrite {
font-size:15pt;
font-weight:bold;
}
#bottom_video_box_in_box_center_writebox_bottomwrite {
font-size:10pt;
color:gray;
}




/*맨 하단 동영상 넣는부분 가운데 박스 css 끝*/


#bottom_video_box_in_box_right{
position:absolute;
width:350px;
height:550px;
background-color:red;
right:0;
border-left:2px solid blue;
}

/*하단 오른쪽박스 시작*/
#bottom_video_box_in_box_right_box{
position:absolute;
width:280px;
height:400px;
top:75px;
left:35px;
border-top:2px solid black;
border-bottom:2px solid black;
}
#bottom_video_box_in_box_right_box_table{
padding:10px;
font-size:15pt;
border-spacing:12px;
margin-top:-10px;
}
#box_td{
width:200px;
hover:color:red;

}
#bottom_video_box_in_box_right_box_upwrite{
position:absolute;
top:20px;
left:35px;
color:white;
font-size:20pt;
font-weight:bold;
width:280px;
height:40px;
background-color:orange;
}

#bottom_video_box_in_box_right_box_date{
position:absolute;
top:500px;
left:37px;
}


/*하단 오른쪽박스 끝*/
/*===============================================================하단광고끝====================================*/
 
 
 </style>

<script>
	$(document).ready(function(){
		var aa = new Date();
		var year = aa.getFullYear();
		var month = aa.getMonth()+1;
		var date = aa.getDate();
		var dayLabel = aa.getDay();
		if(date<10){
		date='0'+date
		}
		if(month<10){
		month='0'+month
		}
		switch(dayLabel){
		case 0:dayLabel='일요일';
		break;
		case 1:dayLabel='월요일';
		break;
		case 2:dayLabel='화요일';
		break;
		case 3:dayLabel='수요일';
		break;
		case 4:dayLabel='목요일';
		break;
		case 5:dayLabel='금요일';
		break;
		case 6:dayLabel='토요일';
		break;
}
		var total=year+'-'+month+'-'+date+''+'('+dayLabel+')'+'&nbsp'+'기준'
		document.getElementById("bottom_video_box_in_box_right_box_date").innerHTML=total;
	 });
</script>
	<%@ include file="header.jsp" %>
 <body>
	<div id ="mainwrapper">
		<div id="main_upper_box"><hr/>
			<div id="main_upper_box_write_left">현재상영작</div><!--메인 어퍼박스끝-->
			</div>
			<div id="movie_box_1">
					<select id="movie_box_1_selectbox" size="1" onchange="window.open(value,'_self');">
						<option value="http://www.cgv.co.kr/movies/?lt=1&ot=1">예매순</option>
						<option value="http://www.cgv.co.kr/movies/?lt=1&ot=2">평점순</option>
						<option value="http://www.cgv.co.kr/movies/?lt=1&ot=3">관람순</option>
					</select>
			<div class="movie_box_1_banner1">
				<ul>
					<li>
						<div class="movie_box_1_no">
							No.1
						</div>
						<div class="movie_box_1_picture">
							<a href="M_movieinfo.jsp"><img src="img/now_movie_picture/baekdusan.jpg" height="250px" width="200px"></a>
						</div>
						<div class="movie_box_1_bottom_write">
							백두산
						</div>
						<div class="movie_box_1_bottom_write1">
							<h5>예매율 36.6% 95%<br>2019.11.21개봉</h5>
						</div>
					</li>
					<li>
						<div class="movie_box_1_no">
							No.2
						</div>
						<div class="movie_box_1_picture">
							<img src="img/now_movie_picture/banner_1.jpg" height="250px" width="200px";>
						</div>
						<div class="movie_box_1_bottom_write">
							겨울왕국2
						</div>
						<div class="movie_box_1_bottom_write1">
							<h5>예매율 36.6% 95%<br>2019.11.21개봉</h5>
						</div>
					</li>
					<li>
						<div class="movie_box_1_no">
							No.3
						</div>
						<div class="movie_box_1_picture">
							<img src="img/now_movie_picture/mama.jpg" height="250px" width="200px";>
						</div>
						<div class="movie_box_1_bottom_write">
							겨울왕국2
						</div>
						<div class="movie_box_1_bottom_write1">
							<h5>예매율 36.6% 95%<br>2019.11.21개봉</h5>
						</div>
					</li>
					<li>
						<div class="movie_box_1_no">
							No.4
						</div>
						<div class="movie_box_1_picture">
							<img src="img/now_movie_picture/guk.jpg" height="250px" width="200px";>
						</div>
						<div class="movie_box_1_bottom_write">
							겨울왕국2
						</div>
						<div class="movie_box_1_bottom_write1">
							<h5>예매율 36.6% 95%<br>2019.11.21개봉</h5>
						</div>
					</li>
				</ul>
				<hr>
				<ul style="margin-top:150px;">
					<li>
						<div class="movie_box_1_no">
							No.5
						</div>
						<div class="movie_box_1_picture">
							<img src="img/now_movie_picture/movie_movie.jpg" height="250px" width="200px";>
						</div>
						<div class="movie_box_1_bottom_write">
							겨울왕국2
						</div>
						<div class="movie_box_1_bottom_write1">
							<h5>예매율 36.6% 95%<br>2019.11.21개봉</h5>
						</div>
					</li>
					<li>
						<div class="movie_box_1_no">
							No.6
						</div>
						<div class="movie_box_1_picture">
							<img src="img/now_movie_picture/me.jpg" height="250px" width="200px";>
						</div>
						<div class="movie_box_1_bottom_write">
							겨울왕국2
						</div>
						<div class="movie_box_1_bottom_write1">
							<h5>예매율 36.6% 95%<br>2019.11.21개봉</h5>
						</div>
					</li>
					<li>
						<div class="movie_box_1_no">
							No.7
						</div>
						<div class="movie_box_1_picture">
							<img src="img/now_movie_picture/banner_1.jpg" height="250px" width="200px";>
						</div>
						<div class="movie_box_1_bottom_write">
							겨울왕국2
						</div>
						<div class="movie_box_1_bottom_write1">
							<h5>예매율 36.6% 95%<br>2019.11.21개봉</h5>
						</div>
					</li>
					<li>
						<div class="movie_box_1_no">
							No.8
						</div>
						<div class="movie_box_1_picture">
							<img src="img/now_movie_picture/banner_1.jpg" height="250px" width="200px";>
						</div>
						<div class="movie_box_1_bottom_write">
							겨울왕국2
						</div>
						<div class="movie_box_1_bottom_write1">
							<h5>예매율 36.6% 95%<br>2019.11.21개봉</h5>
						</div>
					</li>
				</ul>
				<hr>
				<ul style="margin-top:150px;">
					<li>
						<div class="movie_box_1_no">
							No.9
						</div>
						<div class="movie_box_1_picture">
							<img src="img/now_movie_picture/banner_1.jpg" height="250px" width="200px";>
						</div>
						<div class="movie_box_1_bottom_write">
							겨울왕국2
						</div>
						<div class="movie_box_1_bottom_write1">
							<h5>예매율 36.6% 95%<br>2019.11.21개봉</h5>
						</div>
					</li>
					<li>
						<div class="movie_box_1_no">
							No.10
						</div>
						<div class="movie_box_1_picture">
							<img src="img/now_movie_picture/banner_1.jpg" height="250px" width="200px";>
						</div>
						<div class="movie_box_1_bottom_write">
							겨울왕국2
						</div>
						<div class="movie_box_1_bottom_write1">
							<h5>예매율 36.6% 95%<br>2019.11.21개봉</h5>
						</div>
					</li>
					<li>
						<div class="movie_box_1_no">
							No.11
						</div>
						<div class="movie_box_1_picture">
							<img src="img/now_movie_picture/banner_1.jpg" height="250px" width="200px";>
						</div>
						<div class="movie_box_1_bottom_write">
							겨울왕국2
						</div>
						<div class="movie_box_1_bottom_write1">
							<h5>예매율 36.6% 95%<br>2019.11.21개봉</h5>
						</div>
					</li>
					<li>
						<div class="movie_box_1_no">
							No.12
						</div>
						<div class="movie_box_1_picture">
							<img src="img/now_movie_picture/banner_1.jpg" height="250px" width="200px";>
						</div>
						<div class="movie_box_1_bottom_write">
							겨울왕국2
						</div>
						<div class="movie_box_1_bottom_write1">
							<h5>예매율 36.6% 95%<br>2019.11.21개봉</h5>
						</div>
					</li>
				</ul>
				<hr>
				<ul style="margin-top:150px;">
					<li>
						<div class="movie_box_1_no">
							No.13
						</div>
						<div class="movie_box_1_picture">
							<img src="img/now_movie_picture/banner_1.jpg" height="250px" width="200px";>
						</div>
						<div class="movie_box_1_bottom_write">
							겨울왕국2
						</div>
						<div class="movie_box_1_bottom_write1">
							<h5>예매율 36.6% 95%<br>2019.11.21개봉</h5>
						</div>
					</li>
					<li>
						<div class="movie_box_1_no">
							No.14
						</div>
						<div class="movie_box_1_picture">
							<img src="img/now_movie_picture/banner_1.jpg" height="250px" width="200px";>
						</div>
						<div class="movie_box_1_bottom_write">
							겨울왕국2
						</div>
						<div class="movie_box_1_bottom_write1">
							<h5>예매율 36.6% 95%<br>2019.11.21개봉</h5>
						</div>
					</li>
					<li>
						<div class="movie_box_1_no">
							No.15
						</div>
						<div class="movie_box_1_picture">
							<img src="img/now_movie_picture/banner_1.jpg" height="250px" width="200px";>
						</div>
						<div class="movie_box_1_bottom_write">
							겨울왕국2
						</div>
						<div class="movie_box_1_bottom_write1">
							<h5>예매율 36.6% 95%<br>2019.11.21개봉</h5>
						</div>
					</li>
					<li>
						<div class="movie_box_1_no">
							No.16
						</div>
						<div class="movie_box_1_picture">
							<img src="img/now_movie_picture/banner_1.jpg" height="250px" width="200px";>
						</div>
						<div class="movie_box_1_bottom_write">
							겨울왕국2
						</div>
						<div class="movie_box_1_bottom_write1">
							<h5>예매율 36.6% 95%<br>2019.11.21개봉</h5>
						</div>
					</li>
				</ul>
				<hr>
				<ul style="margin-top:150px;">
					<li>
						<div class="movie_box_1_no">
							No.17
						</div>
						<div class="movie_box_1_picture">
							<img src="img/now_movie_picture/banner_1.jpg" height="250px" width="200px";>
						</div>
						<div class="movie_box_1_bottom_write">
							겨울왕국2
						</div>
						<div class="movie_box_1_bottom_write1">
							<h5>예매율 36.6% 95%<br>2019.11.21개봉</h5>
						</div>
					</li>
					<li>
						<div class="movie_box_1_no">
							No.18
						</div>
						<div class="movie_box_1_picture">
							<img src="img/now_movie_picture/banner_1.jpg" height="250px" width="200px";>
						</div>
						<div class="movie_box_1_bottom_write">
							겨울왕국2
						</div>
						<div class="movie_box_1_bottom_write1">
							<h5>예매율 36.6% 95%<br>2019.11.21개봉</h5>
						</div>
					</li>
					<li>
						<div class="movie_box_1_no">
							No.19
						</div>
						<div class="movie_box_1_picture">
							<img src="img/now_movie_picture/banner_1.jpg" height="250px" width="200px";>
						</div>
						<div class="movie_box_1_bottom_write">
							겨울왕국2
						</div>
						<div class="movie_box_1_bottom_write1">
							<h5>예매율 36.6% 95%<br>2019.11.21개봉</h5>
						</div>
					</li>
					<li>
						<div class="movie_box_1_no">
							No.20
						</div>
						<div class="movie_box_1_picture">
							<img src="img/now_movie_picture/banner_1.jpg" height="250px" width="200px";>
						</div>
						<div class="movie_box_1_bottom_write">
							겨울왕국2
						</div>
						<div class="movie_box_1_bottom_write1">
							<h5>예매율 36.6% 95%<br>2019.11.21개봉</h5>
						</div>
					</li>
				</ul>
				<hr>
				<ul style="margin-top:150px;">
					<li>
						<div class="movie_box_1_no">
							No.21
						</div>
						<div class="movie_box_1_picture">
							<img src="img/now_movie_picture/banner_1.jpg" height="250px" width="200px";>
						</div>
						<div class="movie_box_1_bottom_write">
							겨울왕국2
						</div>
						<div class="movie_box_1_bottom_write1">
							<h5>예매율 36.6% 95%<br>2019.11.21개봉</h5>
						</div>
					</li>
					<li>
						<div class="movie_box_1_no">
							No.22
						</div>
						<div class="movie_box_1_picture">
							<img src="img/now_movie_picture/banner_1.jpg" height="250px" width="200px";>
						</div>
						<div class="movie_box_1_bottom_write">
							겨울왕국2
						</div>
						<div class="movie_box_1_bottom_write1">
							<h5>예매율 36.6% 95%<br>2019.11.21개봉</h5>
						</div>
					</li>
					<li>
						<div class="movie_box_1_no">
							No.23
						</div>
						<div class="movie_box_1_picture">
							<img src="img/now_movie_picture/banner_1.jpg" height="250px" width="200px";>
						</div>
						<div class="movie_box_1_bottom_write">
							겨울왕국2
						</div>
						<div class="movie_box_1_bottom_write1">
							<h5>예매율 36.6% 95%<br>2019.11.21개봉</h5>
						</div>
					</li>
					<li>
						<div class="movie_box_1_no">
							No.24
						</div>
						<div class="movie_box_1_picture">
							<img src="img/now_movie_picture/banner_1.jpg" height="250px" width="200px";>
						</div>
						<div class="movie_box_1_bottom_write">
							겨울왕국2
						</div>
						<div class="movie_box_1_bottom_write1">
							<h5>예매율 36.6% 95%<br>2019.11.21개봉</h5>
						</div>
					</li>
				</ul>
				<hr>
			</div><!--무비박스배너1끝-->
		</div><!--무비박스끝-->
		<div id="bottom_advertising1">
			<img src="img/now_movie_picture/now_bottom_banner1.jpg" height="200px;" width="1200px">
		</div>
		<div id="bottom_advertising2">
			<img src="img/now_movie_picture/now_bottom_banner2.jpg" height="400px;" width="1200px">	
		</div>
		<div id="bottom_video_box"><!--하단검은박스시작-->
			<div id="bottom_video_box_in_box_left"><!--검은박스안 왼쪽박스시작-->
				<div id="bottom_video_box_in_box_left_write">인기영상</div>
			</div>
			<div class="bottom_video_box_in_box_center"><!--가운데박스-->
				<ul>
					<li>
						<div class="bottom_video_box_in_box_center_background">
							<img src="img/now_movie_picture/banner_1.jpg">
							<div class="bottom_video_box_in_box_center_writebox">
								<div id="bottom_video_box_in_box_center_writebox_upwrite">
									겨울왕국
								</div>
								<div id="bottom_video_box_in_box_center_writebox_bottomwrite">
									호러,스릴러<br>2019,12,12개봉
								</div>
							</div>
						</div>
					</li>
					<li>
						<div class="bottom_video_box_in_box_center_background">
							<img src="img/now_movie_picture/banner_1.jpg">
							<div class="bottom_video_box_in_box_center_writebox">
								<div id="bottom_video_box_in_box_center_writebox_upwrite">
									겨울왕국
								</div>
								<div id="bottom_video_box_in_box_center_writebox_bottomwrite">
									호러,스릴러<br>2019,12,12개봉
								</div>
							</div>
						</div>
					</li>
					<li>
						<div class="bottom_video_box_in_box_center_background">
							<img src="img/now_movie_picture/banner_1.jpg">
							<div class="bottom_video_box_in_box_center_writebox">
								<div id="bottom_video_box_in_box_center_writebox_upwrite">
									겨울왕국
								</div>
								<div id="bottom_video_box_in_box_center_writebox_bottomwrite">
									호러,스릴러<br>2019,12,12개봉
								</div>
							</div>
						</div>
					</li>
					<li>
						<div class="bottom_video_box_in_box_center_background">
							<img src="img/now_movie_picture/banner_1.jpg">
							<div class="bottom_video_box_in_box_center_writebox">
								<div id="bottom_video_box_in_box_center_writebox_upwrite">
									겨울왕국
								</div>
								<div id="bottom_video_box_in_box_center_writebox_bottomwrite">
									호러,스릴러<br>2019,12,12개봉
								</div>
							</div>
						</div>
					</li>
				</ul>	
			</div><!--가운데박스 끝-->		
			<div id="bottom_video_box_in_box_right"><!--검은박스안 오른쪽박스 시작-->
				<div id="bottom_video_box_in_box_right_box_upwrite">
					실시간 인기 검색어
				</div>
				<div id="bottom_video_box_in_box_right_box">
					<table id="bottom_video_box_in_box_right_box_table">
						<tr><td>1.</td><td id="box_td">백두산</td><td>n</td></tr>
						<tr><td>2.</td><td>백두산</td><td>n</td></tr>
						<tr><td>3.</td><td>백두산</td><td>n</td></tr>
						<tr><td>4.</td><td>백두산</td><td>n</td></tr>
						<tr><td>5.</td><td>백두산</td><td>n</td></tr>
						<tr><td>6.</td><td>백두산</td><td>n</td></tr>
						<tr><td>7.</td><td>백두산</td><td>n</td></tr>
						<tr><td>8.</td><td>백두산</td><td>n</td></tr>
						<tr><td>9.</td><td>백두산</td><td>n</td></tr>
						<tr><td>10.</td><td>백두산</td><td>n</td></tr>
					</table>
				</div>
				<div id="bottom_video_box_in_box_right_box_date">
				</div>
			</div><!--검은박스안 오른쪽박스 끝-->
		</div><!--검은박스끝-->		
	</div><!--메인래퍼끝-->
 </body>
 <%@ include file="footer.jsp" %>
</html>
