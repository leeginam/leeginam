package Eventaction;

import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Dto.ActionForward;
import Dto.Event_list_dto;
import Eventsvc.Event_list_service;

public class Event_list_Action implements action{
@Override
public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
	// TODO Auto-generated method stub
		ActionForward forward = new ActionForward();  //경로 셋팅과 controller에서 갈래를 뿌려주기위한 dto
		Event_list_service list = new Event_list_service(); //db에 접근하기위한 dto
		ArrayList<Event_list_dto> articlelist = new ArrayList<Event_list_dto>();  //db에서 받아온 타이틀이름 시작일 끝일 정보 담아놓을 dto객체생성
		
		articlelist = list.getArticleList();
		request.setAttribute("articleList",articlelist);
		forward.setRedirect(false);
		forward.setPath("E_event.jsp");
	return forward;
}
}
