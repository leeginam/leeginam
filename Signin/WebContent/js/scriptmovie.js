
 var adultfee=0;
 var teenfee=0;
 var adultservicefee=0;
 var teenservicefee=0;
 var totalfee=0;
	$(function(){
		$("#accordian h3").click(function(){
			$("#accordian ul ul").slideUp();
			if(!$(this).next().is(":visible"))
			{
				$(this).next().slideDown();
			}
		})
	})
	$(function(){
		$("#accordian2 h3").click(function(){
			$("#accordian2 ul ul").slideUp();
			if(!$(this).next().is(":visible"))
			{
				$(this).next().slideDown();
			}
		})
	})
	$(function(){
		$("#accordian ul ul li a").click(function(){
			$(this).css("background","red");
			$("#accordian ul ul li a").not($(this)).css("background","#333333");
			var ttr=$(this).html();
			$('#resultsite').html(ttr);
		})
	})
	$(function(){
		$("#accordian2 ul ul li a").click(function(){
			$(this).css("background","red");
			$("#accordian2 ul ul li a").not($(this)).css("background","#333333");
			var ttr=$(this).html();
			$('#resultmovie').html(ttr);
		})
	})
	
	window.onload = function () {
			kCalendar('kCalendar');
		};

	$(function(){
		$(".moinfo1 li:nth-child(n+3)").click(function(){
			$(this).css("background","red");
			$(".moinfo1 li:nth-child(n+3)").not($(this)).css("background","#f9f7f8");
			$(this).css("color","white");
			$(".moinfo1 li:nth-child(n+3)").not($(this)).css("color","black");
			var ttr=$(this).html();
			$('#resultadult').html("성인 : "+ttr+" 명");
			adultfee=8000*ttr;
			moviefee=adultfee+teenfee;
			adultservicefee=500*ttr;
			servicefee=teenservicefee+adultservicefee;
			totalfee=moviefee+servicefee;
			$('#moviefee').html(moviefee+" 원");
			$('#servicefee').html(servicefee+" 원");
			$('#totalfee').html(totalfee+" 원");
		})
	})
	$(function(){
		$(".moinfo2 li:nth-child(n+3)").click(function(){
			$(this).css("background","red");
			$(".moinfo2 li:nth-child(n+3)").not($(this)).css("background","#f9f7f8");
			$(this).css("color","white");
			$(".moinfo2 li:nth-child(n+3)").not($(this)).css("color","black");
			var ttr=$(this).html();
			$('#resultteen').html(" | 학생 : "+ttr+" 명");
			teenfee=6000*ttr;
			moviefee=adultfee+teenfee;
			teenservicefee=500*ttr;
			servicefee=teenservicefee+adultservicefee;
			totalfee=moviefee+servicefee;
			$('#moviefee').html(moviefee+" 원");
			$('#servicefee').html(servicefee+" 원");
			$('#totalfee').html(totalfee+" 원");
		})
	})
	$(function(){
		$(".moinfotime ul li").click(function(){
			$(this).css("background","red");
			$(".moinfotime ul li").not($(this)).css("background","#333333");
			var ttr=$(this).html();
			$('#resulttime').html(ttr);
		})
	})
	$(function() {
		$(document).on('click','#kCalendar table tbody tr td',function(){
			$(this).css("background","red");
			$(this).not($(this)).css("background","#f9f7f8");
			
		})
	})
