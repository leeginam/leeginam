package magazine_controller;

import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dto.Dto;
import model1.action;


public class Service implements cominterface{

	static Service impl = new Service();
	public static Service instance() {
		
		return impl;

	}

	@Override
	public String showData(HttpServletRequest request, HttpServletResponse response) throws Exception {
		action model = action.instance();
		ArrayList<Dto> list = (ArrayList<Dto>)model.selectSangpum();
		request.setAttribute("data", list);
		return "G_board.jsp";
	}

}
