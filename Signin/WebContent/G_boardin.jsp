<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<%@ page import="Dto.Dto" %>
<%@ page import="Dao.Dbaccess" %>
<%@ page import ="mybatmodel.commentdto" %>
<%@ page import ="mybatmodel.action1" %>
<%@ page import = "java.util.Optional" %>
<% request.setCharacterEncoding("UTF-8"); %>


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
		width:1300px;
		height:100%;
		border:solid black 1px;
		display:inline-block;
		margin:250px auto 60px auto;
		padding:0 30px 60px 30px;
		background-color:#f9f6f7;
		border-radius:10px;
		margin-top:250px;
		text-align:center;
		display:inline-block;
	}
	#tablewrap{
		width:1200px;
		margin:0 auto;
	}
	#mainwraper{
		text-align:center;
	}
	#titletext{
		font-size:20pt;
		text-align:left;
		margin-left:50pt;
		
		margin-top:30pt;
	}
	#subtitletext{
		font-size:15pt;
	}
	#boardtitle{
		width:1100px;
		margin-top:20pt;
		margin-bottom:20pt;
		font-weight:bold;
		font-size:20pt;
	}
	#boardday{
	
		margin-left:30px;
	}
	#boardmain{
	margin:0 auto;
	width:90%;
	min-height:600px;
	text-align:left;
	}
	#subcolor{
		opacity:0.5;
	}
	#boardcontents{
		list-style:none;
		text-align:right;
	}
	#boardli{
	display:inline;
	margin:10px 10px;
	}
	#btn{
		
		margin-right:20px;
		width:80px;
		height:35px;
		background:#f45905;
		color:white;
		border:none;
		cursor:pointer;
		font-size:10pt;
	}
	#comment{
		resize:none;
		padding:30px;
		height:60px;
		width:1000px;
		
	}
	#cmtbtn{
		float:right;
		width:120px;
		height:120px;
		background:#f45905;
		color:white;
		border:none;
		cursor:pointer;
		font-size:17pt;
	}
	#commenttitle{
		float:left;
		margin: 20px 0 20px 30px;
		font-size:18pt;		
	}
	pre{
	white-space: pre-wrap;
	}
	#reply{
	background:white;
	width:1180px;
	height:100px;
	border:solid #bdbdbd 1px;
	margin-left:50px;
	margin-right:50px;
	margin-top:20px;
	}
	#replywriter{
	clear:both;
	float:left;
	color:#bdbdbd;
	padding-top:10px;
	}
	#replycomment{
	float:left;
	font-size:17pt;
	}
	#replycontent{
	width:90%;
	height:80%;
	margin:0 auto;
	padding-top:23px;
	
	}
	.commentbtn{
	color:#bdbdbd;
	float:right;
	margin-left:20px;
	cursor:pointer;
	}
	#changecomment{
	width:1180px;
	margin-left:50px;
	margin-right:50px;
	height:50px;
	border:1px solid #bdbdbd;
	float:left;
	background-color:white;
	display:none;
	}
	#upcomment{
	float:left;
	margin-left:30px;
	margin-top:6px;
	border:1px solid #bdbdbd;
	width:70%;
	padding-left:20px;
	padding-top:10px;
	padding-bottom:10px;
	}
	#updatebtn{
	flaot:left;
	width:100px;
	height:40px;
	border:none;
	background:#f45905;
	color:white;
	margin-top:6px;
	cursor:pointer; 
	}
	
</style>
<script>
	function delcheck(){
		var check = confirm("정말 삭제하시겠습니까");
		if(check){
			location.href='action.jsp?class=delete&num='+<%=request.getAttribute("num") %>
		}
	}
	function commentsubmit(){
		var session =<%=(String)session.getAttribute("id") %>
		if(session==null){
			alert("로그인이 필요한 서비스입니다 로그인먼저 진행해주세요")
		}else{
			document.getElementById("commentform").submit();
		}
		
	}
	function deletecheck(commentnum,boardnum){
		var result = confirm("댓글을 삭제하시겠습니까?");
		if(result){
			var url = "del.do?command=delete&commentnum="+commentnum+"&boardnum="+boardnum
		    location.href=url
		}else{
		}
	}

	$(document).on('click','#commentchange',function(){
		if(!$(this).parent().parent().next().is(":visible")){
			$(this).parent().parent().next().css('display','block');
		}else{
			$(this).parent().parent().next().css('display','none');
		}
	})

	$(function(){
		$("#accordian h3").click(function(){
			$("#accordian ul ul").slideUp();
			if(!$(this).next().is(":visible"))
			{
				$(this).next().slideDown();
			}
		})
	})
</script>
 <body>
 	<jsp:useBean id="data" class="Dao.Dbaccess"></jsp:useBean>
 	<%@ include file="header.jsp" %>
	<div id =mainwraper>
 	<div id = mypage>
 	<div id =titletext>영화 매거진<span id=subtitletext>| 다양한 영화정보를 공유하세요</span><% 
 		Optional<String> idnull = Optional.ofNullable((String)session.getAttribute("id"));
 		String id = idnull.orElse("");
		if(session.getAttribute("id")==null){	
		}
 		else if (session.getAttribute("id").equals((String)request.getAttribute("writename"))){ 
 			String uplink ="location.href='action.jsp?class=update&num="+request.getAttribute("num")+"'";
 		%>	<div style="float:right;margin-right:100px;margin-top:-10px;">
 			
 			<input id =btn type="button" onclick=<%= uplink %> value="수정"/>
 			<input id= btn type="button" onclick=delcheck() value="삭제"/>
 			</div>
 			
 		<%} %></div>
 	<hr style="width:90%;color:#bdbdbd;">
 	<div id=tablewrap>
 
 		<div id =boardtitle>[${moviename}]${title}</div>
 		<div id =boardsub><ul id=boardcontents>
 		<li id=boardli>작성자:${writename}</li>
 		<li id=boardli>|</li>
 		<li id=boardli><span id =subcolor>${day}</span></li>
 		</ul>
 		</div>
 		<hr style="width:100%;opacity:0.5;">
 		<% String imgurl ="upload/"+(String)request.getAttribute("filename"); 
 		%>
 		<div id =boardmain><div style="text-align:center; width:100%;">
 			<%if((String)request.getAttribute("filename")!=null){ 
 			%><img src="<%=imgurl %>" style="width:350px; height:100%;"/>
 			<% }%>
 			</div><pre>${contents}</pre></div>
 		<hr style="width:100%;opacity:0.5;">
 		<%	
 			int num = (int)request.getAttribute("num");
 			String nums = ""+num;
 			action1 cmtdata = new action1();
 			List<commentdto> comment = cmtdata.selectcomment(nums);

 		%>
 		<div id =commenttitle style="float:left;">댓글(<%=comment.size() %>)</div>
 		<form action="comment.do?command=insert" id="commentform" method="post" accept-charset="utf-8">
 			<div style="clear:both;float:left;">
 				<input type=text id=comment name=comment placeholder="악성 및 비방댓글은 경고없이 삭제됩니다"/>
 				<input type="hidden" name="boardnum" value=	${num} />
 				<input id=cmtbtn type="button" onclick="commentsubmit()" value="등록"/>
 				
 			
 			</div>
 		</form>
 		
 	
 		</div>
 		
 		<%for (int i=0;i<comment.size();i++){%>

 			<div id="reply" style="float:left;">
	 			<div id=replycontent>
	 				<div id= replycomment><%=comment.get(i).getComment() %></div>
	 				<%if(session.getAttribute("id")!=null){
	 				if(session.getAttribute("id").equals(comment.get(i).getCommentwrither())){
	 					String dellink="javascript:deletecheck("+comment.get(i).getCommentnum()+","+comment.get(i).getBoardnum()+")";
	 				%>
	 					<a class=commentbtn href=<%=dellink %>>삭제</a>
	 				
	 					<a class=commentbtn id=commentchange >수정</a>
	 				<% }
	 				}%>
	 				<div id= replywriter><%=comment.get(i).getCommentwrither()%> | <%=comment.get(i).getDay() %></div>
	 			</div>
	 		
 			</div>
 			<div id=changecomment>
 				<form action="change.do?command=update" method="post">
 				<input id=upcomment type="text" placeholder="댓글수정" name=upcomment>
 				<input type="hidden" name=commentnum value=<%=comment.get(i).getCommentnum() %>>
 				<input type="hidden" name="boardnum" value=	${num} />
 				<input id = updatebtn type="submit" value="댓글수정">
 				</form>
 			</div>
 			
 		<%}%>
 		
 	</div>
 	</div>

	<%@ include file="footer.jsp" %>
 </body>
</html>