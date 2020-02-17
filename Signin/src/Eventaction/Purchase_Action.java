package Eventaction;

import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.eclipse.jdt.internal.compiler.parser.ParserBasicInformation;

import Dto.ActionForward;
import Dto.purchase_dto;
import Eventsvc.Purchase_service;
import Eventsvc.Store_payment_service;

public class  Purchase_Action implements action{
@Override
public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
	// TODO Auto-generated method stub
		String img=request.getParameter("img");
		String id=request.getParameter("id1");
		String productname=request.getParameter("productname");
		String amount=request.getParameter("amount");
		String total=request.getParameter("total");
		String payment=request.getParameter("payment");
		String card=request.getParameter("card");
		String num=request.getParameter("num");
		
		int num1 = Integer.parseInt(num);
		int amount1 = Integer.parseInt(amount);
		int total1 = Integer.parseInt(total);
		
		System.out.println("img?"+img);
		System.out.println("아이디?"+id);
		System.out.println("상품이름?"+productname);
		System.out.println("수량?"+amount);
		System.out.println("총가격?"+total);
		System.out.println("결제수단?"+payment);
		System.out.println("카드?"+card);
		System.out.println("상품번호?"+num1);
		
		purchase_dto purchase=new purchase_dto(); 
		
		purchase.setBuyer(id);
		purchase.setProduct_num(num1);
		purchase.setQuantity(amount1);
		purchase.setPayment_method(payment);
		purchase.setCard(card);
		purchase.setPrice(total1);
		
		
		
		ActionForward forward = new ActionForward();  //경로 셋팅과 controller에서 갈래를 뿌려주기위한 dto
		Store_payment_service list = new Store_payment_service();//db에 접근하기위한 dto
		list.store_payment(purchase);
		forward.setRedirect(false);
		forward.setPath("S_purchase History.jsp");
		
		return forward;
	}
}

