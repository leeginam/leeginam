package controller;

import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.action;
import model.dto;


public class del implements cominterface{

	static del impl = new del();
	public static del instance() {
		
		return impl;

	}
	
	@Override
	public String showData(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String ad=request.getParameter("id");
		System.out.println(ad);
		action model = action.instance();
		model.del(ad);
		return "result.jsp";
	}



}
