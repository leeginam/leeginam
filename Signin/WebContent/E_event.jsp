<%@page import="Eventaction.Event_list_Action"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="Dto.Dto" %>
<%@ page import="Dao.Dbaccess" %>
<%@ page import="Dto.Event_list_dto" %>
<%@ page import="Dto.Event_list_pagination_vo" %>

<%
ArrayList<Event_list_dto> list = (ArrayList<Event_list_dto>)request.getAttribute("articleList");
ArrayList<Event_list_pagination_vo> paging =(ArrayList<Event_list_pagination_vo>)request.getAttribute("paging");
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
  	<!-- Bpopup -->
	   <script src="js/jquery.bpopup-0.10.0.min.js"></script>
 </head>
 <style>
 	#title{
 		background:#bdbdbd;
 		border-bottom:1px solid black;
 		
 	}
 	table{
 		border-collapse:collapse;
 		text-align:center;
 	}
 	tr{
 		border-bottom:1px solid black;
 	}
 	td:first-child{
 		text-align:center;
 	}
 	tr:nth-child(2){
 		width:600px;
 	}
 	tr:nth-child(3){
 		width:600px;
 	}
 	tr:nth-child(4){
 		width:600px;
 	}
 	tr:nth-child(n+2){
 		height:200px;
 	}
 	
 	#mypage{
 		clear:both;
		width:1300px;
		height:100%;
		border:solid black 1px;
		display:inline-block;
		background-color:#f9f6f7;
		border-radius:10px;
		margin:250px auto 60px auto;
		padding:0 30px 60px 30px;
		text-align:center;
		display:inline-block;
	}
	#tablewrap{
		width:1160px;
		display:inline-block;
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
	#linktext{
		color:black;
	}
	#contentswrap{
		width:1120px;
		height:100%;
	}
	#contents{
		float:left;
		width:250px;
		height:440px;
		margin:20px;
		top:50%;
		box-shadow: 
		0 5px 15px 1px rgba(0, 0, 0, 0.6), 
		0 0 200px 1px rgba(255, 255, 255, 0.5);
		cursor:pointer;
	}
	#ctext{
		position:relative;
		width:90%;
		height:200px;
		margin-left:auto;
		margin-right:auto;
		margin-top:20px;
	}
	#cmovie{
	float:left;
	font-size:15pt;
	font-weight:bold;
	}
	#ctitle{
	float:left;
	font-size:15pt;
	font-weight:bold;
	
	}
	#wddiv{
		width:100%;
		clear:both;
		float:left;
		margin-top:20px;
	}
	#cwrite{

	float:left;
	
	}
	#cday{
	float:right;
	}
	img{
		width:250px;
		height:auto;
	}
	#img{
	width:250px;
	height:auto;
	position:relative;
	overflow:hidden;
	}
	#wbtn{
		float:right;
		margin-right:100px;
		width:80px;
		height:35px;
		background:#f45905;
		color:white;
		border:none;
		cursor:pointer;
		font-size:10pt;
	}
	#eventview{
	width:800px;
	height:auto;
	}
	#eventviewtitle{
	clear:both;
	font-size:20px;
	float:left;
	}
	#evhr{
	both:clear;
	float:left;
	width:100%;
	}
	#nowarticle{
	width:800px;
	height:100%;
	padding:50px;
	padding-top:30px;
	}
	#eventduty{
	float:right;
	margin-top:10px;
	}
	#moreinfo{
	width:86%;
	height:50px;
	background:#bdbdbd;
	margin:auto;
	margin-top:30px;
	opacity:0.7;
	cursor:pointer;
	border:none;
	}
	#eventmaintitle{
 	float:left;
	color:red;
	font-size:25pt;
	font-weight:bold;
	margin-bottom:20px;
	}
	#listtitle{
	float:left;
	font-size:11pt;
	font-weight:bold;
	padding-left:10pt;
	padding-right:10pt;
	padding-top:10pt;
	opacity:0.7;
	text-align:left;
	width:220px;
	overflow:hidden;
    text-overflow:ellipsis;
    white-space:nowrap;
	}
	#listdays{
	float:right;
	padding:10pt;
	font-size:11pt;
	opacity:0.7;
	}
</style>
<script>
	var BPOPUP='';
	(function($) {
	    $(function() {
	          $(document).on('click',"#contents", function(e) {
	        	  var eventnum=$(this).attr('class');
	        	  console.log(this);
	        	  $.ajax({
	        		  type:"post",
	      				url:"EventviewPro.bo",
	      				datatype:"json",
	      				data:{
	      				"eventnum" : eventnum
	      			},
	      			
	      			success:nowevent,
	        		 
	        		  
	        	  });function nowevent(resdata){
	        		 var obj = $.parseJSON(resdata);
	      		 	var html="";
	      		 	var k=9;
	      		 	for(var i=0;i<obj.length;i++){
	      		 	
	      		 	html+="<div id =nowarticle class="+obj[i].eventnum+">"		 
	      			html+="<div id =eventmaintitle>GETFLEX EVENT</div>"
	      		 	html+="<div id= eventviewtitle>"+obj[i].title+"</div>"    		
	    		 	html+="<div id=eventduty>"+obj[i].startday+"~"+obj[i].finishday+"</div>"
	      		 	html+="<hr id=evhr />"
	      		 	html+="<img id =eventview src = img/eventview/event"+obj[i].eventnum+".jpg>"
	      		 	html+="<input type=text />"
	      		
	      
	      		 	html+="</div>"
	      				k++;
	      				
	      			
	        	  }
	        	  
	      		 $("#bpopup1").html(html);
	        	  
	              e.preventDefault();
	              BPOPUP =  $('#bpopup1').bPopup({
	                   modalClose : true,
	                   follow:true,
	                   appending:false
	                   
	                   
	             	 });
	         	 };    
	     		});
	    });
	})(jQuery);
	function getmore(){
		
		var lastnum = $("#lastnum").val()
		
	
		$.ajax({
			type:"post",
			url:"EventlistPro.bo",
			datatype:"json",
			data:{
				lastnum : $('#lastnum').val()
			},
					
			success:nextlist,
		
		});function nextlist(resdata){
			var obj = $.parseJSON(resdata);
		 	var html="";
		 	var k=9;
		 	for(var i=0;i<obj.length;i++){
		 	html+="<div id =contents class="+obj[i].eventnum+">"
		 	html+="<img src = img/event/event"+obj[i].eventnum+".jpg>"
		 	html+="<div id=listtitle>"+obj[i].title+"</div>"
		 	html+="<div id=listdays>"+obj[i].startday+"~"+obj[i].finishday+"</div>"
		 	html+="</div>"
				k++
		 	
	
		 	}
		 	var nowarticle= $("#contents img").length+8
		 	if(nowarticle>=<%=paging.get(0).getTotalnum()%>){
		 		document.getElementById("moreinfo").style.display = "none";
		 	}

		 	$("#lastnum").val(obj[7].eventnum)
		 	$("#tablewrap").append(html)
		}
	
	}

</script>
 <body>
 	<jsp:useBean id="data" class="Dao.Dbaccess"></jsp:useBean>
 	<%@ include file="header.jsp" %>
 	
	<div id =mainwraper>
 	<div id = mypage>
 	<div id =titletext>이벤트<span id=subtitletext>| 경품 한가득 이벤트에 참여해보세요</span>
 	</div>
 	
 	<hr style="width:90%;color:#bdbdbd;">
 	<div id=tablewrap>
 	
 	<input type="hidden" id =lastnum value="8"/>
 	<%
 		
 
 		
 		for(int i=0;i<paging.get(0).getNownum();i++){ 
 	  String imglink = "img/event/event"+(i+1)+".jpg";
 	
 	%>
 		<div id = contents class=<%=list.get(i).getEventnum() %>>
 			<img src = <%=imglink %>>
 			<div id =listtitle><%=list.get(i).getTitle() %></div>
 			<div id=listdays ><%=list.get(i).getEventstart() %> ~ <%=list.get(i).getEventfinal() %></div>
 		</div>
 	<% } %>
 		
 		</div>
	 		<div>
	 		<input id=moreinfo type="button" onclick="getmore()" value="더보기"/>
	 		</div>
 		</div>
 		
 	</div>

	<div id="bpopup1" style="display: none; background-color: white;">
   <p>
     이벤트
     <input type="text">
   </p>
	</div>
	<%@ include file="footer.jsp" %>
 </body>
</html>
