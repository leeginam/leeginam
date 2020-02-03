package controller;

import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.action;
import model.dto;


public class Service implements cominterface{

	static Service impl = new Service();
	public static Service instance() {
		
		return impl;

	}

	@Override
	public String showData(HttpServletRequest request, HttpServletResponse response) throws Exception {
		action model = action.instance();
		ArrayList<dto> list = (ArrayList<dto>)model.selectSangpum();
		request.setAttribute("data", list);
		System.out.println("bb"+list.size());
		return "list.jsp";
	}



}
