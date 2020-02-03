package controller;

import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.action;
import model.dto;


public class update implements cominterface{

	static update impl = new update();
	public static update instance() {
		
		return impl;

	}
	
	@Override
	public String showData(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String ab=request.getParameter("id");
		String ac=request.getParameter("name");
		String ad=request.getParameter("pass");
		System.out.println(ad);
		action model = action.instance();
		model.up(ab,ac,ad);
		return "result.jsp";
	}



}
