<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<% request.setCharacterEncoding("UTF-8"); %>
<%
String amount=request.getParameter("trans1");
 if(amount==""){
	 amount="1";	
 }
 String img=request.getParameter("img");
 String price=request.getParameter("price");
 String productname=request.getParameter("productname");
 String pack=request.getParameter("pack");
 String name=request.getParameter("name");
 String phone=request.getParameter("phone");
 String num=request.getParameter("num");
 int num1=Integer.parseInt(price);
 int num2=Integer.parseInt(amount);
int total= num1*num2;
String id=(String)session.getAttribute("id");
%>
<style>
	#mainwraper{
		text-align:center;
	}
	
	#bo{
	float:left;
	width:1200px;
	height:800px;
	
	margin-left:50px;
	margin-right:50px;
	}
	#Store{
	width:1300px;
	height:3000px;
	border:solid black 1px;
	display:inline-block;
	margin:60px 0;
	background-color:#f9f6f7;
	border-radius:10px;
	margin-top:250px;
	text-align:left;
	margin-right:auto;
	}
	#titletext{
		font-size:20pt;
		text-align:left;
		margin-left:50pt;
		margin-top:30pt;
	}
	#box{
	margin-top:20px;
	float:left;
	background-color:red;
	height:200px;
	width:1200px;
	}
	#box_1{
	background-color:yellow;
	float:left;
	height:60px;
	width:1200px;
	}
	#box_1_1{
	padding-top:10px;
	font-weight:bold;
	text-align:center;	
	float:left;
	height:40px;
	width:200px;
	margin-top:5px;
	margin-left:50px;
	background-color:blue;
	font-size:20pt;
	}
	#box_1_2{
	padding-top:10px;
	font-weight:bold;
	text-align:center;	
	float:left;
	height:40px;
	width:200px;
	margin-top:5px;
	margin-left:150px;
	background-color:orange;
	font-size:20pt;
	}
	#box_1_3{
	padding-top:10px;
	font-weight:bold;
	text-align:center;	
	float:left;
	height:40px;
	width:200px;
	margin-top:5px;
	margin-left:80px;
	background-color:blue;
	font-size:20pt;
	}
	#box_1_4{
	padding-top:10px;
	font-weight:bold;
	text-align:center;	
	float:left;
	height:40px;
	width:200px;
	margin-top:5px;
	margin-left:80px;
	background-color:red;
	font-size:20pt;
	}
	#box_2{
	clear:both;
	float:left;
	width:1200px;
	height:110px;
	background-color:purple;
	margin-top:20px;
	}
	#box_2_1{
	float:left;
	width:100px;
	height:100px;
	background-color:yellow;
	margin-left:10px;
	margin-top:5px;
	}
	#box_2_2{
	float:left;
	width:220px;
	height:100px;
	background-color:red;
	margin-left:30px;
	margin-top:5px;
	}
	#box_2_2_1{
	float:left;
	width:150px;
	height:30px;
	background-color:green;
	margin-top:20px;
	font-weight:bold;
	font-size:15pt;
	}
	#box_2_2_2{
	clear:both;
	float:left;
	width:220px;
	height:30px;
	background-color:yellow;
	margin-top:5px;
	font-weight:bold;
	font-size:10pt;
	color:gray;
	text-overflow: ellipsis;
	white-space: nowrap;
	overflow: hidden;
	}
	#box_3{
	float:left;
	width:220px;
	height:40px;
	background-color:yellow;
	margin-top:40px;
	margin-left:30px;
	font-weight:bold;
	font-size:10pt;
	text-align:center;
	font-size:20pt;
	}
	
	#box_4{
	float:left;
	width:220px;
	height:40px;
	background-color:yellow;
	margin-top:40px;
	margin-left:60px;
	font-weight:bold;
	font-size:10pt;
	text-align:center;
	font-size:20pt;
	}
	
	#box_5{
	float:left;
	width:220px;
	height:40px;
	background-color:yellow;
	margin-top:40px;
	margin-left:60px;
	font-weight:bold;
	font-size:10pt;
	text-align:center;
	font-size:20pt;
	color:red;
	}	
	/*첫번째박스끝*/
	
	
	#box_7{
	width:1200px;
	height:100px;
	float:left;
	background:red;
	margin-top:40px;
	}
	#buyer{
	width:200px;
	height:20px;
	font-size:18pt;
	margin-top:5px;
	}
	#name{
	text-align:center;
	}
	#phone{
	text-align:center;
	}
	#info{
	width:1200px;
	height:50px;
	margin-top:20px;
	}
	#write{
	width:1200px;
	height:50px;
	float:left;
	margin-top:10px;
	}
	#box_8{
	clear:both;
	float:left;
	width:1200px;
	height:130px;
	background-color:yellow;
	margin-top:10px;
	}
	#box_8_1{
	float:left;
	width:1200px;
	height:50px;
	background-color:green;
	margin-top:10px;
	font-size:18pt;
	}
	#bank{
	float:left;
	height:40px;
	width:200px;
	margin-left:10px;
	margin-top:5px;
	}
	#box_8_2{
	float:left;
	width:1200px;
	height:50px;
	background-color:blue;
	margin-top:10px;
	}
	#select{
	width:300px;
	height:50px;
	}
	#cash{
	float:left;
	width:20px;
	height:20px;
	margin-top:15px;
	}
	#write1{
	float:left;
	width:80px;
	height:50px;
	font-size:15pt;
	margin-top:10px;
	}
	#write2{
	float:left;
	width:100px;
	height:50px;
	font-size:15pt;
	margin-top:10px;
	}
	#radio{
	float:left;
	width:20px;
	height:20px;
	margin-top:15px;
	}
	#box_9{
	float:left;
	width:1200px;
	height:1000px;
	background-color:orange;
	font-size:15pt;
	margin-top:30px;
	}
	#box_9_1{
	background-color:red;
	width:1200px;
	height:50px;
	float:left;
	margin-top:10px;
	}
	#allcheckbox{
	float:left;
	width:30px;
	height:30px;
	margin-top:10px;
	}
	.write4{
	margin-top:10px;
	float:left;
	}
	#box_9_2{
	background-color:gray;
	width:1150px;
	margin-left:25px;
	margin-right:25px;
	height:350px;
	float:left;
	margin-top:20px;
	}
	#gifticon{
	float:left;
	width:30px;
	height:30px;
	margin-top:10px;
	}	
	#gifticon_write{
	clear:both;
	float:left;
	width:1150px;
	height:30px;
	margin-top:10px;
	margin-left:40px;
	font-size:10pt;
	}
	#box_9_3{
	width:1150px;
	height:100px;
	background-color:purple;
	}
	
	#box_10{
	width:1150px;
	height:600px;
	background-color:green;
	}
	
	#credit{
	float:left;
	width:30px;
	height:30px;
	margin-top:10px;
	}
	.credit2{
	width:30px;
	height:30px;
	margin-top:10px;
	}

	
	ul{
	list-style-type : none;
	margin-top:40px;
	}
	ul li{
	display:block;
	}
	
	#box_10_1{
	clear:both;
	float:left;
	width:1150px;
	height:200px;
	background-color:blue;
	}
	.checknum1{
	float:left;
	width:700px;
	height:50px;
	background-color:cyan;
	margin-top:5px;
	}
	.check_write1{
	float:left;
	width:300px;
	height:30px;
	background-color:yellow;
	margin-top:10px;
	}

	.bottom_check{
	float:left;
	margin-top:18px;
	width:15px;
	height:15px;
	}
	
	#bottom{
	float:left;
	width:1150px;
	height:200px;
	background-color:purple;
	}
	
	#bottom_button{
	margin-top:50px;
	margin-left:420px;
	width:300px;
	height:50px;
	}
	
	
</style>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>


$(document).ready(function(){         
	$("input:radio[name=radio1]").click(function(){
		 if($("input[name=radio1]:checked").val() == "신용카드"){
			 if($("#bank").css("display") == "none"){   
			        $('#bank').css("display", "block");   
			    } else if($("#bank").css("display") == "block") {  
			        $('#bank').css("display", "block");   
			    }  
			
		 }if($("input[name=radio1]:checked").val() == "현찰박치기"){
			 if($("#bank").css("display") == "block"){   
				 $('#bank').css("display", "none");    
			 }
		 
		 } 
	});
});

$(document).ready(function(){      
	$("#allcheckbox").click(function(){
    if ($('#allcheckbox').prop("checked") == true) {
        $("input[id=gifticon]").prop("checked", true);
        $("input[id=credit]").prop("checked", true);
        $("input[id=check1]").prop("checked", true);
        $("input[id=check2]").prop("checked", true);
        $("input[id=check3]").prop("checked", true);
    }
    else if($('#allcheckbox').prop("checked") == false) {
    	 $("input[id=gifticon]").prop("checked", false);
         $("input[id=credit]").prop("checked", false);
         $("input[id=check1]").prop("checked", false);
         $("input[id=check2]").prop("checked", false);
         $("input[id=check3]").prop("checked", false);
    }
	});
});

$(document).ready(function(){      
	$("#credit").click(function(){
    if ($('#credit').prop("checked") == true) {
        $("input[id=check1]").prop("checked", true);
        $("input[id=check2]").prop("checked", true);
        $("input[id=check3]").prop("checked", true);
        if($('#gifticon').prop("checked") == true){
         $("input[id=allcheckbox]").prop("checked", true);
        }
        else if($('#gifticon').prop("checked") == false){
        	$("input[id=allcheckbox]").prop("checked", false);
        }
    }
    else if($('#credit').prop("checked") == false) {
         $("input[id=check1]").prop("checked", false);
         $("input[id=check2]").prop("checked", false);
         $("input[id=check3]").prop("checked", false);
         $("input[id=allcheckbox]").prop("checked", false);
    }

	});
});

$(document).ready(function(){      
	$("#gifticon").click(function(){
    if (($('#gifticon').prop("checked") == true)&&($('#credit').prop("checked") == true)) {
    	$("#allcheckbox").prop("checked", true);
        }
    else if(($('#gifticon').prop("checked") == false)||($('#credit').prop("checked") == false)) {
    	$("#allcheckbox").prop("checked", false);
    }

	});
});

$(document).ready(function(){ 
	$("#check1").click(function(){
	    if (($("#check1").prop("checked")== true)&&($("#check2").prop("checked")== true)&&($("#check3").prop("checked")== true)) {
	    	 $("#credit").prop("checked", true);
	    }
	    else{
	    	 $("#credit").prop("checked", false);
	    }
	});
});
$(document).ready(function(){ 
	$("#check2").click(function(){
	    if (($("#check1").prop("checked")== true)&&($("#check2").prop("checked")== true)&&($("#check3").prop("checked")== true)) {
	    	 $("#credit").prop("checked", true);
	    	 }
	    else{
	    	 $("#credit").prop("checked", false);
	    }
	});
});
$(document).ready(function(){ 
	$("#check3").click(function(){
	    if (($("#check1").prop("checked")== true)&&($("#check2").prop("checked")== true)&&($("#check3").prop("checked")== true)) {
	    	 $("#credit").prop("checked", true);
	    }
	    else{
	    	 $("#credit").prop("checked", false);
	    }
	});
});

$(document).ready(function(){ 
	$("#bottom_button").click(function(){
		if(($("#allcheckbox").prop("checked")== true)&&($("input:radio[name='radio1']").is(":checked")==true)&&($('select option:selected').val()!="0")
				||($("#allcheckbox").prop("checked")== true)&&($("input:radio[id='cash']").is(":checked")==true)){
			
		var result= confirm('결제창으로 이동하시겠습니까?');
		
		if(result==true){
			var select=$("#bank option:selected").val();
			var radio=$('input[name="radio1"]:checked').val()
			
			alert(select);
			
			$('#payment').prop("value",radio);
			$('#card').prop("value",select);
			
			var s = document.getElementById("purchase_form")
			s.submit();
			
			}
		}
		else if($("input:radio[name='radio1']").is(":checked")==false){
			alert("결제수단을 선택하여주세요");
		}

		else if($("input:radio[id='radio']").is(":checked")==true){
			if($('select option:selected').val()=="0"){
			alert("카드사를 선택해주세요");
				}
			else if(($('select option:selected').val()!="0")&&($("#allcheckbox").prop("checked")== false)){
				alert("약관에 모두 동의하여주세요");
			}
			}

		else if(($("#allcheckbox").prop("checked")== false)){
			alert("약관에 모두 동의하여주세요");
		}
		
	});
});
</script>
</head>
<body>
<%@ include file="header.jsp" %>
	<div id=mainwraper>
		<div id="Store">
			<form  id=purchase_form method="post" action="purchase.bo">
				<div id =titletext>구매상품정보</div> 	
				<hr style="width:90%;color:#bdbdbd;">
				<div id="bo">
					<div id="box">
						<div id="box_1">
							<div id="box_1_1"> 상품명</div>
							<div id="box_1_2">판매금액</div>
							<div id="box_1_3"> 수량</div>
							<div id="box_1_4">구매금액</div>
						</div>
						<div id="box_2">
							<div id="box_2_1">
								<img src=<%=img%> width=100px; height=100px;>
							</div>
							<div id="box_2_2">
								<div id="box_2_2_1"><%=productname %></div>
								<div id="box_2_2_2"><%=pack%></div>
							</div>
							<div id=box_3><%=price %>원</div>
							<div id=box_4><%=amount%>개</div>
							<div id=box_5><%=total%>원</div>
					  </div>
					</div>
					<div id="box_7" >
						<div id="buyer">
							주문자정보 확인
						</div>
						<hr style="width:100%;background:black; weight:10px; margin-top:10px;">
						<div id="info">
							이름: <input type=text; value=<%=name%> readonly id="name">
							휴대폰번호: <input type=text; value=<%=phone%> readonly id="phone">
							<hr style="width:100%;background:black; weight:40px; margin-top:20px;">
						</div>
					</div>
					<div id="write">*구매하신 getflex 기프트콘은 주문자 정보에 입력된 휴대전화 번호로 MMS로 발송됩니다.<br>
						입력된 휴대전화 번호가 맞는지 꼭 확인하세요.
					</div>
					<div id=box_8>
						<div id="box_8_1">
						결제 수단
						<hr style="width:100%;background:black; weight:40px; margin-top:10px;">
						</div>
						<div id="box_8_2">
							<span>
								<input type="radio"  id= "radio" name="radio1" value="신용카드" /> 
								<span id=write1>신용카드</span>
							</span>
							<span id="select">
								<select id="bank"  name="select" size="1"  style="display:none">
								    <option  value="0" selected>카드사를 선택하세요</option>
								    <option value="삼성카드"  >삼성카드</option>
								    <option value="bc카드" >bc카드</option>
								    <option value="농협">농협</option>
								    <option value="하나카드">하나카드</option>
								</select>
							</span>
							<span>
								<input type="radio" id=cash name="radio1" value="현찰박치기" />
								<span id=write2>
									현찰박치기
								</span>
							</span>
						</div>
						<div id=box_9>
							<div id=box_9_1>
								<div>
									<input type=checkbox id=allcheckbox>
									<div class=write4>주문정보/결제 대행 서비스 약관 모두 동의</div>
								</div>
							</div>
							<div id="box_9_2">
								<div id="box_9_3">
									<input  type=checkbox id=gifticon>
									<div class=write4>
										기프티콘 구매 동의
									</div>
									<div id=gifticon_write>
										기프트콘 발송 및 CS처리 등을 이해 수신자로부터 getflex에 수신자의 휴대전화번호를 제공하는 것에 대한 적합한 동의를 받습니다.
									</div>
								</div>
								<hr style="width:95%;background:black; weight:10px;">
								<div id=box_10>
									<input  type=checkbox id=credit>
									<div class=write4>
										결제 대행 서비스 약관 모두 동의
									</div>
									<div id=box_10_1>	
										<ul id= id=checknum_ul>
											<li id=second_1 class=checknum1><input type=checkbox id=check1 class="bottom_check"><div class=check_write1>전자금융거래 이용약관</div></li>
											<li id=second_2 class=checknum1><input type=checkbox id=check2 class="bottom_check"><div class=check_write1>개인정보 수집 이용약관</div></li>
											<li id=second_3 class=checknum1><input type=checkbox id=check3 class="bottom_check"><div class=check_write1>개인정보 제공 및 위탁안내</div></li>
										</ul>
									</div>
									<div id="bottom">
										<cneter><input type='button'  id="bottom_button" value='결제하기'/></cneter>
										<input type=hidden  name="id1" value="<%=id%>">
										<input type=hidden  name="img" value="<%=img%>">
										<input type=hidden  name="productname" value="<%=productname%>">
										<input type=hidden  name="amount" value="<%=amount%>">
										<input type=hidden  name="total" value="<%=total%>">
										<input type=hidden id="payment"  name="payment" value="">
										<input type=hidden id="card" name="card" value="">
										<input type=hidden  name="num" value="<%=num%>">
									</div>
								</div>
							</div>	
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
	<%@ include file="footer.jsp" %>
</body>
</html>