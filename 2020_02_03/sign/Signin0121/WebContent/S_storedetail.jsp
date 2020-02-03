<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="Dao.Dbaccess" %>
<%@ page import="Dto.Store_list_dto" %>
<%
ArrayList<Store_list_dto> list = (ArrayList<Store_list_dto>)request.getAttribute("articleList");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
 	#title{
 		background:#bdbdbd;
 		border-bottom:1px solid black;
 		}
 	#mypage{
 		clear:both;
		width:1300px;
		height:100%;
		border:solid black 1px;
		background-color:#f9f6f7;
		border-radius:10px;
		margin:250px auto 60px auto;
		padding:0 30px 60px 30px;
	}
	#mainwraper{
	}
	#titletext{
		font-size:20pt;
		text-align:left;
		margin-left:50pt;
		margin-top:30pt;
	}
	.box{
	width:1300px;
	height:2000px;
	background-color:green;
	}
	.box2{
	position:relative;
	width:1200px;
	height:500px;
	background-color:red;
	margin-left:50px;
	top:50px;
	}
	.picture{
	position:relative;
	width:500px;
	height:450px;
	top:25px;
	left:25px;
	background-color:yellow;
	}
	.price{
	position:absolute;
	width:550px;
	height:450px;
	top:25px;
	left:600px;
	background-color:purple;
	}
	.write1{
	font-weight:bold;
	position:absolute;
	height:60px;
	width:275px;
	background-color:yellow;
	font-size:35pt;
	padding-left:80px;
	}
	.write2{
	font-weight:bold;
	position:absolute;
	height:60px;
	width:275px;
	font-size:35pt;
	background-color:orange;
	text-decoration: line-through;
	left:275px;	
	}
	.write3{
	position:absolute;
	width:100px;
	height:50px;
	background-color:blue;
	top:60px;
	}
	.write4{
	position:absolute;
	width:100px;
	height:50px;
	top:110px;
	background-color:green;
	}
	.write5{
	position:absolute;
	width:100px;
	height:50px;
	top:160px;
	background-color:orange;
	}
	.write3_1{
	position:absolute;
	width:100px;
	height:50px;
	background-color:blue;
	top:60px;
	}
	.write4_1{
	position:absolute;
	width:100px;
	height:50px;
	top:110px;
	background-color:green;
	}
	.write5_1{
	position:absolute;
	width:100px;
	height:50px;
	top:160px;
	background-color:orange;
	}
	
</style>
</head>

<body>
	<%@ include file="header.jsp" %>
		<div id =mainwraper>
		 	<div id = mypage>
			 	<div id =titletext><%=list.get(0).getProductname() %>
			 	</div> 	
			 	<hr style:width:90%; color:#bdbdbd;>
			 	<div class="box">
			 		<div class="box2">
			 			<div class="picture">
			 			<img src="img\store\store1.png" height="450px" width="500px">
			 			</div>
			 			<div class="price">
			 				<div class="write1">
			 				<%=list.get(0).getAfterprice() %>원
			 				</div>
			 				<div class="write2">
			 				<%=list.get(0).getBeforeprice() %>원
			 				</div>
			 				<div class="write3">
			 				상품구성
			 				</div>
			 				<div class="write4">
			 				유통기한
			 				</div>
			 				<div class="write5">
			 				원산지
			 				</div>
			 			</div>
			 		</div>
			 	</div>
			</div>
		</div>
	<div><%=list.get(0).getContents() %></div>
	<div><%=list.get(0).getNumber() %></div>
	<%@ include file="footer.jsp" %>
</body>

</html>