package Eventaction;

import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Dto.ActionForward;
import Dto.Persons_dto;
import Dto.Store_list_dto;
import Dto.purchase_dto;
import Eventsvc.Purchase_service;
import Eventsvc.Store_list_service;

public class Store_list_Action implements action{
@Override
public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
	// TODO Auto-generated method stub
		String num=(String)request.getParameter("num");
		String id=(String)request.getParameter("id");
		
		
		ActionForward forward = new ActionForward();  //경로 셋팅과 controller에서 갈래를 뿌려주기위한 dto
		Store_list_service list = new Store_list_service();//db에 접근하기위한 dto
		ArrayList<Store_list_dto> articlelist = new ArrayList<Store_list_dto>();  //db에서 받아온 타이틀이름 시작일 끝일 정보 담아놓을 dto객체생성
		articlelist = list.getArticleList(num);
		request.setAttribute("articleList",articlelist);
		///////////////////////////////////////////////////////밑으로는 스토어 구매쪽 이름과 전화번호가져오는 코드
		Purchase_service list2=new Purchase_service();
		Persons_dto article=new Persons_dto();
		article=list2.person_info(id);
		request.setAttribute("article",article);
		forward.setRedirect(false);
		///////////////////////////////////////////////////////////밑으로는 purchase테이블에 insert하기위한 코드
		
		
		
		if(num==null) {
		forward.setPath("S_store1.jsp");
		}
		
		if(num!=null) {			
			forward.setPath("S_storedetail.jsp");
		}

		return forward;
}
}
