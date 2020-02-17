package mybatcontroller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import mybatcontroller.controller;
import mybatmodel.action1;
import mybatmodel.commentdto;

public class Commentselect implements controller{
	static Commentselect imp1 = new Commentselect();
	public static Commentselect instance() {
		return imp1;
	}

@Override
public String showData(HttpServletRequest request, HttpServletResponse response) throws Exception {
	// TODO Auto-generated method stub
	String boardnum=request.getParameter("boardnum");
	action1 model = action1.instance();
	ArrayList<commentdto> list = (ArrayList<commentdto>)model.selectcomment(boardnum);
	request.setAttribute("data", list);
	System.out.println("bb"+list.size());
	return "action.jsp?class=boardin&num="+boardnum;
	
}


}
