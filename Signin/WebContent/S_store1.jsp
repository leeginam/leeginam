<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="Dao.Dbaccess" %>
<%@ page import="Dto.Store_list_dto" %>
<%
ArrayList<Store_list_dto> list = (ArrayList<Store_list_dto>)request.getAttribute("articleList");
String id= (String)session.getAttribute("id");
%>
<!doctype html>
<html lang="en">
 <head>
  <meta charset="UTF-8">
  <meta name="Author" content="">
  <meta name="Keywords" content="">
  <meta name="Description" content="">
  <title>Document</title>
 </head>
 <style>
 
	 #sidebar{position:fixed; top:250px;left:100px;filter: drop-shadow(10px 10px 10px #000); z-index:9999;}
	#vertical ul{list-style:none;margin:0px; padding:0px; position:relative; }
	#vertical ul a{text-decoration:none;display:block;width:120px;height:35px;line-height:35px;text-align:center;color:white; padding:15px;}
	#vertical li{width:150px;background-color:#374955; z-index:1000;border-radius:10%;}
	#vertical ul li:hover{background-color:#84bfe1}
	
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
	#subtitletext{
		font-size:15pt;
	}
/*====================================================================================== 기본========================================================================================*/
	#top_image{
	position:relative;
	width:1300px;
	height:300px;
	}
	#second_box{
		position:relative;
		width:1300px;
		height:55px;
		margin-left:auto;
		margin-right:auto;
		padding-top:50px;
		}	
		.third_box{
		width:1300px;
		height:550px;
		margin-left:auto;
		margin-right:auto;
		}
		.third_wrapper{
		display:inline-block;
		float:left;
		margin-left:100px;
		margin-top:60px;
		width:300px;
		height:350px;
		box-shadow: 
		0 5px 15px 1px rgba(0, 0, 0, 0.6), 
		0 0 200px 1px rgba(255, 255, 255, 0.5);
		}
		.third_wrapper li{
		list-style:none;
		}
		.fourth_box{
		width:1300px;
		height:700px;
		margin-left:auto;
		margin-right:auto;
		background-color:#f3ebea
		}
		.fourth_box_top{
		width:1300px;
		height:200px;
		}
		.top_write1{
		width:1300px;
		height:50px;
		font-size:20pt;
		padding-top:10px;
		}
		.top_write2{
		width:1300px;
		height:80px;
		font-size:40pt;
		font-weight:bold;
		}
		.top_write3{
		width:1300px;
		height:50px;
		font-size:20pt;
		padding-top:10px;
		}

/*saddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd*/		
		#best{
		font-weight:bold;
		font-size:25pt;
		text-align:center;
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
		font-size:15pt;
		}
		.productbeforeprice{
		width:300px;
		height:20px;
		font-size:15pt;
		padding-left:20px;
		text-decoration: line-through;
		}
	
	

</style>
 <body>
 	<jsp:useBean id="data" class="Dao.Dbaccess"></jsp:useBean>
 	<%@ include file="header.jsp" %>
	<div id =mainwraper>
	<center>
	 	<div id = mypage>
		 	<div id =titletext>스토어 
		 		<span id=subtitletext>| 맛있는 상품을 구매하세요</span>
		 	</div> 	
		 	<hr style="width:90%;color:#bdbdbd;">
		 	<div id="top_image">
				<img src="img\store\store_banner.png" height="300px;" width="1100px">
			</div>
			<div id =second_box>
			<div id="best">
			베스트상품&nbsp선택이 고민스럽다면?
			</div><hr/><!-- mainwrapper2_best끝 -->
		</div><!-- best끝 -->	
		<div class =third_box>
				<%for(int i=0;i<3;i++){
				String imglink =list.get(i).getFilename();
				%>
				<%String num="storedetail.bo?num="+list.get(i).getNumber()+"&id="+id;%>
				<div class="third_wrapper">
					<li>
						<div class=product>
							<a href=<%=num%>><img src=<%=imglink%>></a>
						</div>
						<div class=productname>
							<%=list.get(i).getProductname()%>
						</div>
						<div class=productcontents>
							<%=list.get(i).getContents()%>
						</div>
						<span class=productafterprice>
							<%=list.get(i).getPrice()%>원
						</span>
						<span class=productbeforeprice>
						
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
						String imglink1 = list.get(i).getFilename();
						%>
						<%String num="storedetail.bo?num="+list.get(i).getNumber()+"&id="+id;%>
						<div class="third_wrapper">
							<li>
								<div class=product>
									<a href=<%=num%>><img src=<%=imglink1%>></a>
								</div>
								<div class=productname>
									<%=list.get(i).getProductname()%>
								</div>
								<div class=productcontents>
									<%=list.get(i).getContents()%>
								</div>
								<span class=productafterprice>
									<%=list.get(i).getPrice()%>원
								</span>
							</li>
						</div>
					<%}%>
			</div>
		</div>
	 	</div>
 	</div>
 	</center>
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