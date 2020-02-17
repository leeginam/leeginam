<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!doctype html>
<html lang="en">
 <head>
  <meta charset="UTF-8">
  <meta name="Generator" content="EditPlus®">
  <meta name="Author" content="">
  <meta name="Keywords" content="">
  <meta name="Description" content="">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>Document</title>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<link href="css/style.css" rel="stylesheet">
	<link href="css/cssmovie.css" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">

	<script src="js/script.js"></script>
	<script language="JavaScript" src="js/scriptmovie.js" charset="UTF-8"></script>

 </head>
 <script>
	$(function() {
		$(document).on('click','#kCalendar table tbody tr td',function(){
			$(this).css("background","red");
			$('#kCalendar table tbody tr td').not($(this)).css("background","#333333");
			
		})
	})
	</script>
 
 <body>
 	<%@ include file="header.jsp" %>
	<div id =mainwrapper>
		<div id =bookingbox>
			<div id =bookingfirst>
				<div class=booktitle>극장선택</div>
				<div id="accordian">
						<ul>
							<li>
								<h3><span class="icon-dashboard"></span>서울/경기</h3>
								<ul>
									<li><a href="#">강남 롯데시네마</a></li>
									<li><a href="#">강남 메가박스</a></li>
									<li><a href="#">동서울 메가박스</a></li>
									<li><a href="#">일산 CGV</a></li>
									<li><a href="#">일산 CGV</a></li>
									<li><a href="#">일산 CGV</a></li>
									<li><a href="#">일산 CGV</a></li>
									<li><a href="#">일산 CGV</a></li>
								</ul>
							</li>
							<li class="active">
								<h3><span class="icon-tasks"></span>충청</h3>
								<ul>
									<li><a href="#">충청도 롯시</a></li>
									<li><a href="#">충주 메가박스</a></li>
									<li><a href="#">충북 CGV</a></li>
									<li><a href="#">Recurring</a></li>
									<li><a href="#">Settings</a></li>
								</ul>
							</li>
							<li>
								<h3><span class="icon-calendar"></span>강원</h3>
								<ul>
									<li><a href="#">춘천메박</a></li>
									<li><a href="#">원주롯시</a></li>
									<li><a href="#">강릉 씨지브이</a></li>
								</ul>
							</li>
							<li>
								<h3><span class="icon-heart"></span>인천</h3>
								<ul>
									<li><a href="#">인천시지브이</a></li>
									<li><a href="#">인천차이나타운메박</a></li>
									<li><a href="#">인천롯시</a></li>
									<li><a href="#">인천롯시</a></li>
								</ul>
							</li>
						</ul>
					</div>
			</div>
			<div id =bookingsecond>
				<div class=booktitle>영화선택</div>
					<div id="accordian2">
						<ul>
							<li>
								<h3><span class="icon-dashboard"></span>주간TOP10</h3>
								<ul>
									<li><a href="#">겨울왕국2</a></li>
									<li><a href="#">포드v페라리</a></li>
									<li><a href="#">천문:하늘에묻는다</a></li>
									<li><a href="#">영화</a></li>
									<li><a href="#">영화</a></li>
									<li><a href="#">영화</a></li>
									<li><a href="#">영화</a></li>
									<li><a href="#">영화</a></li>
								</ul>
							</li>
							<li class="active2">
								<h3><span class="icon-tasks"></span>최신영화</h3>
								<ul>
									<li><a href="#">영화</a></li>
									<li><a href="#">영화</a></li>
									<li><a href="#">영화</a></li>
									<li><a href="#">영화</a></li>
									<li><a href="#">영화</a></li>
								</ul>
							</li>
							<li>
								<h3><span class="icon-calendar"></span>마감임박</h3>
								<ul>
									<li><a href="#">영화</a></li>
									<li><a href="#">영화</a></li>
									<li><a href="#">영화</a></li>
								</ul>
							</li>
							<li>
								<h3><span class="icon-heart"></span>키즈</h3>
								<ul>
									<li><a href="#">영화</a></li>
									<li><a href="#">영화</a></li>
									<li><a href="#">영화</a></li>
									<li><a href="#">영화</a></li>
								</ul>
							</li>
						</ul>
					</div>
				</div>
				<div id = bookingday>
					<div class=booktitle>날짜선택</div>
					<div id=moinfo>
						<div id="kCalendar"></div>
					</div>
				</div>
				<div id = bookingday>
					<div class=booktitle>시간선택</div>
					<div class=moinfotime>
					<ul>
						<li><a href="#">1관 13:00</a></li>
						<li><a href="#">3관 13:30</a></li>
						<li><a href="#">1관 16:05</a></li>
						<li><a href="#">2관 19:00</a></li>
						<li><a href="#">5관 22:10</a></li>				
					</ul>
					</div>
				</div>
				<div id = bookingperson>
					<div class=booktitle>인원선택</div>
					<div class=moinfo>

						<ul class=moinfo1>
							<li>성인</li>
							<li>8000원</li>
							<li>0</li>
							<li>1</li>
							<li>2</li>
							<li>3</li>
							<li>4</li>
							<li>5</li>
							<li>6</li>
							<li>7</li>
						</ul>
						<ul class=moinfo2>
							<li>학생</li>
							<li>6000원</li>
							<li>0</li>
							<li>1</li>
							<li>2</li>
							<li>3</li>
							<li>4</li>
							<li>5</li>
							<li>6</li>
							<li>7</li>
						</ul>
					
						<hr color=white width=90% size=1px style="margin-top:55px;">
						<div style="color:#999999;font-size:11pt;margin-left:20px;margin-top:15px;">학생권은 학생증 필히 지참하셔야 입장가능합니다.</div>
					</div>
					
				</div>
				<div id = bookinginfo>
					<div class=booktitle>선택한영화정보
					</div>
					<div class=moinfocheck>
					<img src="img/poster1.jpg" style="width:auto;height:180px;float:left;margin-top:20px;margin-left:20px;"/>
						<ul>
							<li>영화</li>
							<li>극장</li>
							<li>날짜</li>
							<li>시간</li>
							<li>인원</li>
						</ul>
						<ul id=result>
							<li id = 'resultmovie'>미선택</li>
							<li id = 'resultsite'>미선택</li>
							<li id = 'resultday'>미구현</li>
							<li id = 'resulttime'>미선택</li>
							<li id = 'resultadult'>미선택</li><li id = 'resultteen'></li>
						</ul>
					</div>
				</div>
				<div id = bookingfee>
					<div class=booktitle>요금 정보 확인</div>
					<div class=moinfofee>
						<ul>
							<li>영화 금액</li>
							<li>수수료(1인당 500원)</li>
						</ul>
						<ul style="float:right; margin-right:30px;">
							<li id=moviefee style="text-align:right;">0 원</li>
							<li id=servicefee style="text-align:right;">0 원</li>
						</ul>
						<hr width=90% style="clear:both;">
						<ul>
							<li>합계</li>
						</ul>
						<ul style="float:right; margin-right:30px;">
							<li id=totalfee style="text-align:right; color:red; font-weight:bold;">0 원</li>
						</ul>
					</div>
				</div>
				<div OnClick="location.href ='B_movie.jsp'" style="margin-left:20px;cursor:pointer;width:150px;border-radius:10px;
				height:30px;color:white;background:orange;float:left;padding-top:10px;margin-top:30px; margin-bottom:30px;">다시 선택<hr  width=125% style="margin-top:20px;margin-left:-20px;color:#D5D5D5;"></div>
				<div OnClick="location.href ='B_bookingseat.jsp'" style="margin-left:20px;cursor:pointer;width:150px;border-radius:10px;
				height:50px;color:white;background:#CC3D3D;float:left;padding-top:20px;">좌석선택하기</div>
			</div>
		</div>
	</div>
	<%@ include file="footer.jsp" %>
  
 </body>
</html>
