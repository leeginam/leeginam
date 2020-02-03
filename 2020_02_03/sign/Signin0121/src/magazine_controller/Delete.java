package magazine_controller;


import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dto.Dto;
import model1.action;


public class Delete implements cominterface{

	static Delete impl = new Delete();
	public static Delete instance() {
		
		return impl;

	}

	@Override
	public String showData(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String aa=(String)request.getParameter("num");
		System.out.println(aa);
		action model = action.instance();
		model.delete(aa);
		return "sss.vo?command=all";
	}

}

