package magazine_controller;

import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dto.Dto;
import model1.action;
import Dto.reply_dto;

public class reply_select implements cominterface{

	static reply_select impl = new reply_select();
	public static reply_select instance() {
		
		return impl;

	}

	@Override
	public String showData(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String num=request.getParameter("num");
		action model = action.instance();
		ArrayList<reply_dto> list = (ArrayList<reply_dto>)model.reply_select(num);
		request.setAttribute("list", list);
		return "G_boardin.jsp";
	}

}
