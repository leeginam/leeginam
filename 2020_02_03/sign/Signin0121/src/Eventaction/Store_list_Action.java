package Eventaction;

import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Dto.ActionForward;

import Dto.Store_list_dto;
import Eventsvc.Store_list_service;

public class Store_list_Action implements action{
@Override
public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
	// TODO Auto-generated method stub
		String ab=(String)request.getParameter("num");
		System.out.println("숫자는:"+ab);
		ActionForward forward = new ActionForward();  //경로 셋팅과 controller에서 갈래를 뿌려주기위한 dto
		Store_list_service list = new Store_list_service();//db에 접근하기위한 dto
		ArrayList<Store_list_dto> articlelist = new ArrayList<Store_list_dto>();  //db에서 받아온 타이틀이름 시작일 끝일 정보 담아놓을 dto객체생성
		articlelist = list.getArticleList(ab);
		request.setAttribute("articleList",articlelist);
		forward.setRedirect(false);
		
		if(ab==null) {
		forward.setPath("S_store1.jsp");
		}
		
		if(ab!=null) {			
			forward.setPath("S_storedetail.jsp");
		}

		return forward;
}
}
