<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%
	String s ="";
	s=request.getParameter("log");
	if(s==null){
	s="";
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
  
 </head>
 <body>
 	<header>
	<span id = menulogo><a id=logo href="port.html">GETFLEX</a></span>
	
	<div id =headermenuright>
	<% if (s.equals("ok")) {%>
	<ul>
		<li class = menuright><a href="logout.jsp">logout</a></li>|
		<li class = menuright>${id}님 환영합니다</li>|
		<li class = menuright><a href="">Mypage</a></li>
	</ul>
	<%} else if(s.equals("")) { %>
	<ul>
		<li class = menuright><a href="login.jsp">Login</a></li>|
		<li class = menuright><a href="idsignup.jsp">Signup</a></li>|
		<li class = menuright><a href="login.jsp">Mypage</a></li>
	</ul>
	<%}%>
	</div>
	
	</header>
	<nav>
		<div id=headermenu>
	<ul class = headermenu>
		<li class = menuleft><a href="movie.jsp">예매</a>
			<ul class = submenu>
				<div style="display:inline-block">
			   <li><a href="#">영화먼저검색</a></li>
			   <li><a href="#">날짜먼저검색</a></li>
			   <li><a href="#">극장먼저검색</a></li>
			   </div>
			</ul>
			</li>
		<li class = menuleft><a href="">영화</a>
			<ul class = submenu>
				<div style="display:inline-block">
			   <li><a href="#">현재상영작</a></li>
			   <li><a href="#">상영예정작</a></li>
			   <li><a href="#">무비파인더</a></li>
			   	</div>
			</ul>
			</li>
		<li class = menuleft><a href="">영화관</a>
		<ul class = submenu>
				<div style="display:inline-block">
			   <li><a href="#">서울/경기</a></li>
			   <li><a href="#">충청</a></li>
			   <li><a href="#">인천</a></li>
			   <li><a href="#">강원</a></li>
			   <li><a href="#">경북</a></li>
			   <li><a href="#">경남</a></li>
			   <li><a href="#">전남</a></li>
			   <li><a href="#">전북</a></li>
			   <li><a href="#">제주</a></li>
			   	</div>
			</ul>
			</li>
		<li class = menuleft><a href="">스토어</a></li>
		<li class = menuleft><a href="">이벤트</a></li>
		<li class = menuleft><a href="">영화매거진</a></li>
	</ul>
	</div>

	</nav>
	<div id=bxsilderwrapper>
		<ul class="bxslider" style="z-index:50;">
		  <li><img src="img/slide1.jpg" /></li>
		  <li><img src="img/slide2.jpg" /></li>
		  <li><img src="img/slide3.jpg" /></li>
		  <li><img src="img/slide4.jpg" /></li>
		</ul>
		</div>

		<div id=boxoffice>
		<h1 class=maintitle>BOX OFFICE</h1>
		</div>
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
	
	<footer>
	<div id =footerhead>
		<img src="img/logo.jpg" style="height:150px;width:auto;float:left;"/>
		<div id =footerleft>
		
		<ul>
			<li>서울 강남구 강남대로96길 16 그린컴퓨터 아카데미 206호</li>
			<li>호스팅 서비스사업자 : 겟플릭스(주)</li>
			<li>조원: 이기남 이용준 개인정보보호책임자 : 홍길동 getflex23needhelp@getflex.com</li>
			<li>사업자등록번호 : 123-45-6789 통신판매업신고 : 제 2019-00001호 </li>
			<li>Copyright ⓒ ??? Corp. All Rights Reserved</li>
			</ul>
		</div>
		<div id=footerright>
			<ul>
				<li>고객센터</li>
				<li>1588-5959</li>
				<li>이메일문의</li>
				<li>yj3172@naver.com</li>  
				<li>lgn2000@naver.com</li>
			</ul>
		</div>
	</footer>
 </body>
</html>
