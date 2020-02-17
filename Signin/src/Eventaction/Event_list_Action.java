package Eventaction;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dto.ActionForward;
import Dto.Event_list_dto;
import Dto.Event_list_pagination_vo;
import Eventsvc.Event_list_service;


public class Event_list_Action implements action{
@Override
public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
	// TODO Auto-generated method stub
		ActionForward forward = new ActionForward();
		String lastnum=(String)request.getParameter("lastnum");
		if(lastnum==null) {
			lastnum="0";
			forward.setRedirect(false);
			forward.setPath("E_event.jsp");
		}else {
			forward.setRedirect(false);
			forward.setPath("E_event_list_json.jsp");
		}
		Event_list_service list = new Event_list_service();
		ArrayList<Event_list_dto> articlelist = new ArrayList<Event_list_dto>();
		ArrayList<Event_list_pagination_vo> paging = new ArrayList<Event_list_pagination_vo>();
		paging = list.pagination();
		articlelist = list.getArticleList(lastnum);
		
		request.setAttribute("paging", paging);
		request.setAttribute("articleList", articlelist);
	
		System.out.println(articlelist.size());
		
	return forward;
}
}
 