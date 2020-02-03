package magazine_controller;


import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dto.Dto;
import model1.action;


public class detail implements cominterface{

	static detail impl = new detail();
	public static detail instance() {
		
		return impl;

	}

	@Override
	public String showData(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String aa=(String)request.getParameter("num");
		action model = action.instance();
		ArrayList<Dto> list = (ArrayList<Dto>)model.selectdetail(aa);
		request.setAttribute("detail", list);
		return "G_boardin.jsp";
	}

}

