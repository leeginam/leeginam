package magazine_controller;


import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dto.Dto;
import model1.action;


public class Update implements cominterface{

	static Update impl = new Update();
	public static Update instance() {
		
		return impl;

	}

	@Override
	public String showData(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		Dto aa=new Dto();
		
		String title = new String(request.getParameter("title").getBytes("8859_1"),"UTF-8");
		String contents = new String(request.getParameter("contents").getBytes("8859_1"),"UTF-8");
		String number = new String(request.getParameter("num").getBytes("8859_1"),"UTF-8");
		
//		String title=request.getParameter("title");
//		String contents=request.getParameter("contents");
//		String number=request.getParameter("num");
		
		
//		String title=(String)request.getAttribute("title");
//		String contents=(String)request.getAttribute("contents");
//		String number=(String)request.getAttribute("number");
		
		int num = Integer.parseInt(number);
		
		aa.setTitle(title);
		aa.setContents(contents);
		aa.setNum(num);
		
		
		action model = action.instance();
		model.update(aa);
		return "sss.vo?command=all";
	}

}


