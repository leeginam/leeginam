<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%
	String s ="";
	s=(String)session.getAttribute("log");
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

	<link href="css/header.css" rel="stylesheet">

 </head>
 <body>
 	<header>
	<span id = menulogo><a id=logo href="index.jsp">GETFLEX</a></span>
	
	<div id =headermenuright>
	<% if (s.equals("ok")) {%>   <!-- logincheck에서 log로 넘어온 파라미터값에 따라 메뉴변경 -->
	<ul>
		<li class = menuright><a href="L_logout.jsp">로그아웃</a></li>|
		<li class = menuright>${id}님 환영합니다</li>|
		<li class = menuright><a href="I_mypage_info.jsp?id="+${id}>마이페이지</a></li><!--여기수정-->
	</ul>
	<%} else if(s.equals("")) { %>
	<ul>
		<li class = menuright><a href="L_login.jsp">로그인</a></li>|
		<li class = menuright><a href="L_idsignup.jsp">회원가입</a></li>|
		<li class = menuright><a href="L_login.jsp">마이페이지</a></li>
	</ul>
	<%}%>
	</div>
	
	</header>
	<nav>
		<div id=headermenu>
	<ul class = headermenu>
		<li class = menuleft><a href="B_movie.jsp">예매</a>
			<ul class = submenu>
				<div style="display:inline-block">
			   <li><a href="#">영화먼저검색</a></li>
			   <li><a href="#">날짜먼저검색</a></li>
			   <li><a href="#">극장먼저검색</a></li>
			   </div>
			</ul>
			</li>
		<li class = menuleft><a href="M_now_movie.jsp">영화</a>
			<ul class = submenu>
				<div style="display:inline-block">
			   <li><a href="M_now_movie.jsp">현재상영작</a></li>
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
		<li class = menuleft><a href="store.bo">스토어</a></li>
		<li class = menuleft><a href="boardWritePro.bo">이벤트</a></li>
		<li class = menuleft><a href="magazine.vo?command=all">영화매거진</a></li>
	</ul>
	</div>
	

	</nav>
	
	
 </body>
</html>
