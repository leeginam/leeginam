<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="Dao.Dbaccess" %>
<%@ page import="Dto.Store_list_dto" %>

<%
String s11 = (String)request.getAttribute("try");
System.out.println(s11);
%>

<%
ArrayList<Store_list_dto> list = (ArrayList<Store_list_dto>)request.getAttribute("articleList");
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
 </head>
 <style>
 	body{
		width:1900px;
		margin: 0 auto;		
	}
	a{
		color:white;
		text-decoration:none;
	}

	#mainwrapper{
		position:relative;
		z-index:1;
		width:1200px;
		height:100%;
		margin-left:auto;
		margin-right:auto;
		background:white;
		margin-top:150px;
		}
		ul{
		margin:0;
		}
		#top_image{
		position:relative;
		width:1200px;
		height:300px;
		}
		#second_box{
		position:relative;
		width:1200px;
		height:55px;
		margin-left:auto;
		margin-right:auto;
		background:orange;
		padding-top:50px;
		}	
		.third_box{
		width:1200px;
		height:550px;
		background-color:blue;
		margin-left:auto;
		margin-right:auto;
		}
		.third_wrapper{
		display:inline-block;
		float:left;
		margin-left:73px;
		margin-top:60px;
		width:300px;
		height:350px;
		background-color:red;
		box-shadow: 
		0 5px 15px 1px rgba(0, 0, 0, 0.6), 
		0 0 200px 1px rgba(255, 255, 255, 0.5);
		}
		.third_wrapper li{
		list-style:none;
		}
		.fourth_box{
		width:1200px;
		height:700px;
		margin-left:auto;
		margin-right:auto;
		}
		.fourth_box_top{
		width:1200px;
		height:200px;
		}
		.top_write1{
		width:1200px;
		height:50px;
		font-size:20pt;
		padding-top:10px;
		}
		.top_write2{
		width:1200px;
		height:80px;
		font-size:40pt;
		font-weight:bold;
		}
		.top_write3{
		width:1200px;
		height:50px;
		font-size:20pt;
		padding-top:10px;
		}

/*saddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd*/		
		#best{
		font-weight:bold;
		font-size:25pt;
		}

		.product{
		width:300px;
		height:200px;
		}
		.product img{
		width:300px;
		height:200px;
		}
		.productname{
		width:300px;
		height:40px;
		text-align:center;
		font-size:20pt;
		font-weight:bold;
		margin-top:20px;
		}
		.productcontents{
		width:300px;
		height:40px;
		text-align:center;
		color:gray;
		}
		.productafterprice{
		width:300px;
		height:30px;
		padding-left:80px;
		font-size:15pt;
		}
		.productbeforeprice{
		width:300px;
		height:20px;
		font-size:15pt;
		padding-left:20px;
		text-decoration: line-through;
		}

	#sidebar{position:fixed; top:250px;left:100px;filter: drop-shadow(10px 10px 10px #000); z-index:9999;}
	#vertical ul{list-style:none;margin:0px; padding:0px; position:relative; }
	#vertical ul a{text-decoration:none;display:block;width:120px;height:35px;line-height:35px;text-align:center;color:white; padding:15px;}
	#vertical li{width:150px;background-color:#374955; z-index:1000;border-radius:10%;}
	#vertical ul li:hover{background-color:#84bfe1}
 </style>
 
 <body>
 <%@ include file="header.jsp" %>
	<div id =mainwrapper>
		<div id="top_image">
			<img src="img\store\store_banner.png" height="400px;" width="1200px">
		</div>
		<div id =second_box>
			<div id="best">
			베스트상품&nbsp선택이 고민스럽다면?
			</div><hr/><!-- mainwrapper2_best끝 -->
		</div><!-- best끝 -->	
		<div class =third_box>
				<%for(int i=0;i<3;i++){
				String imglink = "img/store/store"+(i+1)+".png";
				%>
				<div class="third_wrapper">
					<li>
						<div class=product>
							<img src=<%=imglink%>>
						</div>
						<div class=productname>
							<%=list.get(i).getProductname()%>
						</div>
						<div class=productcontents>
							<%=list.get(i).getContents()%>
						</div>
						<span class=productafterprice>
							<%=list.get(i).getAfterprice()%>원
						</span>
						<span class=productbeforeprice>
							<%=list.get(i).getBeforeprice()%>원
						</span>		
					</li>
				</div>
			<%}%>
		</div>
		<div class="fourth_box">
			<div class="fourth_box_top">
				<div>
					<center>
					<div class="top_write1">getflex SPECIAL</div>
					<div class="top_write2">선물추천</div>
					<div class="top_write3">getflex만의 특별한 사랑을 선물해 보세요.</div>
					</center>
				</div>
			</div>
				<%for(int i=3;i<6;i++){
						String imglink1 = "img/store/store"+(i+1)+".png";
						%>
						<div class="third_wrapper">
							<li>
								<div class=product>
									<img src=<%=imglink1%>>
								</div>
								<div class=productname>
									<%=list.get(i).getProductname()%>
								</div>
								<div class=productcontents>
									<%=list.get(i).getContents()%>
								</div>
								<span class=productafterprice>
									<%=list.get(i).getAfterprice()%>원
								</span>
							</li>
						</div>
					<%}%>
			</div>
		</div>
	<div id="sidebar">
		<div id="vertical">
			 <ul> 
				  <li><a href="#">패키지</a></li>
				  <li><a href="#">영화관람권</a></li>
				  <li><a href="#">기프트카드</a></li>
				  <li><a href="#">콤보</a></li>
				  <li><a href="#">팝콘</a></li>
				  <li><a href="#">음료</a></li>
				  <li><a href="#">스낵</a></li>
				  <li><a href="#">플레이존</a></li>
				  <li><a href="#">상품권소개</a></li>
			</ul>
		</div>
	</div><!--사이드바끝-->
	 <%@ include file="footer.jsp" %>
 </body>

</html>
