package controller;

import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.action;
import model.dto;


public class insert implements cominterface{

	static insert impl = new insert();
	public static insert instance() {
		
		return impl;

	}
	
	@Override
	public String showData(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String ab=request.getParameter("name");
		String ac=request.getParameter("pass");
		String ad=request.getParameter("id");
		
		System.out.println(ab);
		System.out.println(ac);
		System.out.println(ad);
		
		action model = action.instance();
		model.insert(ab,ac,ad);
		return "result.jsp";
	}



}
