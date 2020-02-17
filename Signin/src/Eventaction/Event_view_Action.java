package Eventaction;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dto.ActionForward;
import Dto.Event_list_dto;

import Eventsvc.Event_list_service;

public class Event_view_Action implements action{
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
			ActionForward forward = new ActionForward();
			String eventnum=(String)request.getParameter("eventnum");
	
				forward.setRedirect(false);
				forward.setPath("E_event_list_json.jsp");
			
			Event_list_service list = new Event_list_service();
			ArrayList<Event_list_dto> articlelist = new ArrayList<Event_list_dto>();

	
			articlelist = list.getArticle(eventnum);

			request.setAttribute("articleList", articlelist);
		
			
		return forward;
	}

}
 