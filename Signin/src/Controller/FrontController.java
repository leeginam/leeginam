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
import Eventaction.Event_view_Action;
import Eventaction.Purchase_Action;
import Eventaction.Store_list_Action;


@WebServlet("*.bo")
public class FrontController extends javax.servlet.http.HttpServlet 
{
	
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		String RequestURI=request.getRequestURI();
		String contextPath=request.getContextPath();
		String command=RequestURI.substring(contextPath.length());
		ActionForward forward=null;
		action action=null;
		
		if(command.equals("/EventlistPro.bo")){
		action  = new Event_list_Action();
			try {
				forward=action.execute(request, response );
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else if(command.equals("/EventviewPro.bo")){
		action  = new Event_view_Action();
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
			else if(command.equals("/purchase.bo")){
				System.out.println("여기까지 넘어왔느냐?");
				action  = new Purchase_Action();
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