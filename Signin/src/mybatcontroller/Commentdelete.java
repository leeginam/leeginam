package mybatcontroller;

import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mybatmodel.action1;
import mybatmodel.commentdto;

public class Commentdelete implements controller{
	static Commentdelete imp1 = new Commentdelete();
	public static Commentdelete instance() {
		return imp1;
	}

@Override
public String showData(HttpServletRequest request, HttpServletResponse response) throws Exception {
	// TODO Auto-generated method stub
	commentdto article = new commentdto();
	
	String boardnum=request.getParameter("boardnum");
	String commentnum=request.getParameter("commentnum");
	
	action1 model = action1.instance();
	model.deletecomment(commentnum);
	
	return "action.jsp?class=boardin&num="+boardnum;
	
}


}