package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dto.ActionForward;
import Eventaction.action;

import Eventaction.Event_list_Action;
import Eventaction.Store_list_Action;


@WebServlet("*.bo")
public class FrontController extends javax.servlet.http.HttpServlet 
{
	
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");                     //그냥 기본셋팅문장
		String RequestURI=request.getRequestURI();					//그냥 기본셋팅문장
		String contextPath=request.getContextPath();				//그냥 기본셋팅문장
		String command=RequestURI.substring(contextPath.length());	//그냥 기본셋팅문장
		ActionForward forward=null;									//그냥 기본셋팅문장
		action action=null;											//그냥 기본셋팅문장
		
		if(command.equals("/boardWritePro.bo")){
		action  = new Event_list_Action();
			try {
				forward=action.execute(request, response );
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		else if(command.equals("/store.bo")){
		action  = new Store_list_Action();
			try {
				forward=action.execute(request, response );
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		else if(command.equals("/storedetail.bo")){
			action  = new Store_list_Action();
			try {
				forward=action.execute(request, response );
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		
		if(forward != null){
			
			if(forward.isRedirect()){
				response.sendRedirect(forward.getPath());
			}else{
				RequestDispatcher dispatcher=
						request.getRequestDispatcher(forward.getPath());
				dispatcher.forward(request, response);
			}
			
		}
		
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		doProcess(request,response);
	}  	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		doProcess(request,response);
	}   
	
}