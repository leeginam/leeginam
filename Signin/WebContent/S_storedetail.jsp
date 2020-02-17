<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="Dto.Store_list_dto" %>
<%@ page import="Dto.Persons_dto" %>
<%@ page import="java.net.*" %>

<%
ArrayList<Store_list_dto> list = (ArrayList<Store_list_dto>)request.getAttribute("articleList");
Persons_dto list2=(Persons_dto)request.getAttribute("article");
String buyer=(String)session.getAttribute("id");
String name=list2.getName();
String phone=list2.getPhone();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
<script>
$(document).ready(function(){
	$('#tot span[count_range]').click(function(e){
	e.preventDefault();
	var type = $(this).attr('count_range');  //attr(a,b) a라는 속성의값을 b로 변경하고/// 이렇게 한개가 있을때는  attr(a)는 a라는 속성의 값을 가져옴 
	var $count = $(this).parent().children('span.count');
	var count_val = $count.html(); // min 1

		if(type=='m'){
				if(count_val<2){
					alert("1개 이상 선택하셔야 합니다.")
				return;
				}
			$count.html(parseInt(count_val)-1);
			var count_val = $count.html();
			var amount=((count_val)*<%=list.get(0).getPrice()%>);
			$('#total').html(amount);
			amount="총금액"+amount+"원";
			$('#purchase3').html(amount);
			var se=$('#trans1').val(count_val);
			
		}
		else if(type=='p'){
			//var count = $("#count").val
			if(count_val>8){
				alert("9개 이상 선택하실수 없습니다.")
			return;	
			}$count.html(parseInt(count_val)+1);
			var count_val = $count.html();
			var amount=((count_val)*<%=list.get(0).getPrice()%>);
			$('#total').html(amount);//괄호안에 값이 있으면 그걸 div에 때려주고 없으면 그 값을 가져옴
			amount="총금액"+amount+"원";
			$('#purchase3').html(amount);
			$('#trans1').val(count_val);
			}
	
			});
		});
		
$(document).on("click","#purchase",function(){
	var s = document.getElementById("storeform")//storeform의 값을 가져옴
	var se = $(this).attr("action") // action이란 태그의 내용을 se에 저장
	var url=""
		s.setAttribute('action',url);
	s.submit();
});
$(document).on("click","#purchase2",function(){
	var s = document.getElementById("storeform")//storeform의 값을 가져옴
	var se = $(this).attr("action") // action이란 태그의 내용을 se에 저장
	var url="S_store_purchase.jsp"
		s.setAttribute('action',url);
	s.submit();
});
</script>
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
	height:2500px;
	}
	.box2{
	float:left;
	margin-top:30px;
	width:1200px;
	height:500px;
	background-color:#f3ebea;
	margin-left:50px;
	top:50px;
	}
	.picture{
	margin-left:50px;
	margin-top:10px;
	float:left;
	width:500px;
	height:480px;
	left:25px;
	background-color:white;
	}
	.price{
	margin-top:10px;
	margin-left:50px;
	float:left;
	width:550px;
	height:480px;
	left:600px;
	
	}
	.write1{
	font-weight:bold;
	float:left;
	padding-top:10px;
	height:50px;
	width:275px;
	background-color:white;
	font-size:25pt;
	}
	.write2{
	font-weight:bold;
	float:left;
	height:60px;
	width:275px;
	font-size:35pt;
	background-color:white;
	left:275px;	
	}
	.write3{
	padding-top:15px;
	text-align:center;
	clear:both;
	float:left;
	width:100px;
	height:50px;
	background-color:white;
	top:60px;
	}
	.write4{
	padding-top:15px;
	text-align:center;
	clear:both;
	float:left;
	width:100px;
	height:50px;
	background-color:white;
	}
	.write5{
	padding-top:15px;
	text-align:center;
	clear:both;
	float:left;
	width:100px;
	height:50px;
	top:160px;
	background-color:white;
	}
	.write3_1{
	padding-top:15px;
	float:left;
	width:450px;
	height:50px;
	background-color:white;
	}
	.write4_1{
	padding-top:15px;
	float:left;
	width:450px;
	height:50px;
	background-color:white;
	}
	.write5_1{
	padding-top:15px;
	float:left;
	width:450px;
	height:50px;
	top:160px;
	background-color:white;
	}
	.total_price{
	margin-top:15px;
	color:black;
	}
	.btn1{
	margin-top:12px;
	text-align:center;
	float:left;
	cursor:pointer;
	width:28px;
	height:28px;	
	background-color:white;
	border-style:solid;
	border-width:1px;
	}
	.btn2{
	margin-top:12px;
	text-align:center;
	float:left;
	cursor:pointer;
	width:28px;
	height:28px;
	background-color:white;
	border-style:solid;
	border-width:1px;
	}
	.count{
	margin-top:12px;
	float:left;
	width:28px;
	height:28px;
	text-align:center;
	background-color:white;
	border-style:solid;
	border-width:1px;
	}
	#tot{
	margin-top:-10px;
	width:550px;
	clear:both;
	float:left;
	}
	#box{
	margin-top:20px;
	float:left;
	width:550px;
	height:50px;
	}
	#total{
	font-size:15pt;
	float:right;
	}
	#won{
	margin-top:15px;
	font-size:15pt;
	float:right;
	}
	#box3{
	float:left;
	width:550px;
	height:120px;
	}
	#purchase{
	font-size:30pt;
	text-align:center;
	float:left;
	width:250px;
	height:60px;
	cursor:pointer;
	background-color:blue;
	
	}
	#purchase2{
	font-size:30pt;
	text-align:center;
	float:right;
	margin-left:20px;
	width:250px;
	height:60px;
	cursor:pointer;
	background-color:blue;
	}
	#purchase3{
	font-size:20pt;
	text-align:right;
	clear:both;
	float:right;
	margin-left:20px;
	width:350px;
	height:40px;
	color:red;
	}
	.box4{
	float:left;
	margin-left:50px;
	margin-top:10px;
	width:1200px;
	height:1600px;
	}
	.purchase_box{
	float:left;
	margin-top:10px;
	width:550px;
	height:65px;
	}
	.bottom_box{
	padding-top:30px;
	background-color:gray;
	margin-top:30px;
	width:800px;
	height:70px;
	border-style:solid;
	border-width:5px;
	}
	.ddcss{
	font-size:15pt;
	}
</style>
</head>

<body>
	<%@ include file="header.jsp" %>
		<div id =mainwraper>
		 	<div id = mypage>
			 	<div id =titletext>스토어</div> 	
			 	<hr style="width:90%;color:#bdbdbd;">
			 	<div class="box">
			 		<div class="box2">
			 			<div class="picture">
			 			<%String url=list.get(0).getFilename();%>
			 			<img src=<%=url%> height="450px" width="500px">
			 			</div>
			 			<div class="price">
			 				<div class="write1">
			 				<%=list.get(0).getProductname() %>
			 				</div>
			 				<div class="write2">
			 				<%=list.get(0).getPrice() %>원
			 				</div>
			 				<hr style="width:99%; height:1px;background-color:black;">
			 				<div class="write3">
			 				상품구성
			 				</div>
			 				<div class="write3_1"><%=list.get(0).getPack()%></div>
			 				<div class="write4">
			 				유효기간
			 				</div>
			 				<div class="write4_1"><%=list.get(0).getExpiration()%></div>
			 				<div class="write5">
			 				원산지
			 				</div>
			 				<div class="write5_1"><%=list.get(0).getMadein()%></div>
			 					<div id="box">
				 					<div id="tot">
									  <span  count_range="m"  class="btn1">-</span>
									  <span class="count">1</span>
									  <span  count_range="p"  class="btn2">+</span>
									  <span id="won">원</span>
									  <span id="total" class="total_price"><%=list.get(0).getPrice() %></span>
									</div>
								</div>
								<hr style="width:99%; height:1px;background-color:black;margin-top:20px;">
								<div id="box3">
									<span id="purchase3">총금액<%=list.get(0).getPrice()%>원</span>
									<div class="purchase_box">
										<form action="" method="post" id=storeform>
											<a href="#"><span id="purchase">장바구니</span></a>
											<span id="purchase2">구매하기</span>
											<input type=hidden id="trans1" name="trans1">
											<input type=hidden id="img" name="img" value="<%=list.get(0).getFilename()%>">
											<input type=hidden id="price" name="price" value="<%=list.get(0).getPrice()%>">
											<input type=hidden id="productname" name="productname" value="<%=list.get(0).getProductname()%>">
											<input type=hidden id="pack" name="pack" value="<%=list.get(0).getPack()%>">
											<input type=hidden id="name" name="name" value="<%=name%>">
											<input type=hidden id="phone" name="phone" value="<%=phone%>">
											<input type=hidden id="phone" name="phone" value="<%=phone%>">
											<input type=hidden id="num" name="num" value="<%=list.get(0).getNumber()%>">
										</form>
									</div>	
								</div>
			 				</div>
			 			</div>
			 			<div class=box4>			 			
				 			<hr style="width:99%; height:1px;background-color:#bdbdbd;">
				 			<center>
				 			<div class="bottom_box">
				 			 데이트, 뭐할지 고민이세요?<br>getflex 패키지로 연인과 즐거운 시간 보내세요!
				 			</div>
				 			</center>
							<dl> 
								<dt><h1>이용안내</h1></dt> 
								<dd class="ddcss">
									•영화관람권 기프트콘은 CGV모바일, 홈페이지, 오프라인 극장에서 영화를 예매할 수 있는 온라인 상품권입니다.<br>
									• 구매 후 전송받으신 기프트콘은,<br>
									- 사용가능한 CGV에서 지정된 상영타입의 영화만 예매 가능합니다.(ex. 3D 관람권으로는 3D 영화만 예매 가능합니다)<br>
									- 금액권이 아니므로 차액 환급이 불가합니다. (ex.조조영화/청소년 관람 시 차액환급 불가)<br>
									- 영화 상영 후 환불 및 반품은 불가합니다.<br>
									• 관람권 기프트콘을 온라인에 등록하시는 경우,<br>
									- 모바일 : MY > 관람권/카드 > 기프트콘에서 '기프트콘 등록' 버튼 선택하여 수신받은 쿠폰번호 입력<br>
									- 홈페이지(PC) : ‘MyCGV > 스토어 > 내 기프트콘'에서 [기프트콘 등록]버튼 선택하여 수신받은 쿠폰번호 입력<br><br>
									• 매점상품 기프트콘은 오프라인 매점에서 실제 상품으로 교환할 수 있는 온라인 상품권입니다.
									• 구매 후 전송받으신 기프트콘은,
									- 사용가능한 CGV의 매점에서 지정된 해당 상품으로만 교환이 가능합니다.
									- 해당 상품 내에서 팝콘 혹은 음료, 스낵 변경 시 추가 비용이 발생합니다.
									- 교환 완료한 상품의 환불 및 반품은 불가합니다.
									• 유효기간 연장을 신청하는 경우,
									- 유효기간은 발급일로부터 5년 이내 횟수 제한 없이 기간 연장 가능하며, 1회 연장 시 3개월(92일) 단위로 유효기간이 연장됩니다. 
									- 단, 이벤트 경품 및 프로모션 상품의 경우 유효기간 연장이 불가할 수 있습니다.
									- 유효기간 만료 이후에는 결제금액의 90% 환불이 가능합니다. 
									• 매점상품 기프트콘은 극장 매점에서 상품 교환 후 수령한 영수증으로 CJ ONE 적립이 가능합니다.
									(모바일App,웹 > MY > 매점적립 or 홈페이지> My CGV > 매점이용 포인트 적립)
									• 상기 이미지는 실제와 다를 수 있습니다.
								</dd> 
							<dt><h1>취소/환불</h1></dt> 
								<dd class="ddcss">
									• 구매자는 최초 유효기간 이내에 결제금액의 100%에 대해 결제취소/환불이 가능하며, 최초 유효기간 만료 후에는 수신자가 결제금액의 90%에 대해 환불 요청 가능합니다.<br>
									• 단, 이미 사용된 기프트콘에 대해서는 결제취소/환불 신청이 불가합니다.<br>
									• 결제취소/환불 방법<br>
									결제취소는 모바일App,웹 > MY > 결제내역조회 > 스토어 or 홈페이지 > My CGV > 스토어 > 결제내역의 해당 주문 상세내역에서 가능합니다.<br>
									(기프트콘은 구매일로부터 60일 이내 결제취소 가능하며, 카드 결제취소 가능 기간이 경과하였을 경우, 고객센터로 연락주시면 됩니다)<br>
									환불은 모바일App,웹 > MY > 기프트콘 or 홈페이지 > My CGV > 스토어 > 내 기프트콘에서 환불을 원하는 기프트콘 등록 후 진행 가능하며, 비회원의 경우 고객센터로 신청 가능합니다.<br>
									단 이 때, 본인 확인 및 계좌 확인 절차가 진행됩니다.<br>
									• 수신자는 선물받은 기프트콘의 수신거절을 요청할 수 있으며, 이 경우 구매자에게 취소 및 환불에 대한 안내가 이루어집니다.<br>
									• 결제취소 가능 기간이 경과한 후 수신자가 수신거절을 요청할 경우 구매자에게 기프트콘이 재발송됩니다.<br>
									• 본 상품은 패키지 상품으로 전체 취소만 가능하며, 일부 상품을 사용하신 경우 환불이 불가합니다.(즉, 일부 상품 이용시 부분 취소 및 환불 불가)<br>
									• CGV고객센터 1544-1122<br>
								</dd>
								<dt><h1>미성년자 권리보호 안내<h1></dt>
									<dd class="ddcss">
										미성년자인 고객께서 계약을 체결하시는 경우 법정대리인이 그 계약에 동의하지 아니하면 미성년자 본인 또는 법정대리인이 그 계약을 취소할 수 있습니다.
									</dd>
								<dt><h1>분쟁 해결<h1></dt>
									<dd class="ddcss">
										1) 회사는 이용자가 제기하는 정당한 의견이나 불만을 반영하고 그 피해의 보상 등에 관한 처리를 위하여<br>
										  CGV고객센터(1544-1122)를 설치 운영하고 있습니다.<br>
										2) 회사는 고객센터를 통하여 이용자로부터 제출되는 불만사항 및 의견을 처리합니다.<br>
										  다만, 신속한 처리가 곤란한 경우에는 이용자에게 그 사유와 처리일정을 즉시 통보합니다.<br>
										3) 전자상거래 분쟁(청약철회등)과 관련한 이용자의 피해구제는 이용약관 및 전자상거래법 등 관련 법령에 따릅니다.<br>
									</dd> 
								</dl>
							</div>
			 			</div>
					</div>
				</div>
	<%@ include file="footer.jsp" %>
</body>

</html>