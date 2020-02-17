package mybatcontroller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mybatmodel.action1;
import mybatmodel.commentdto;

public class Commentupdate implements controller{
	static Commentupdate imp1 = new Commentupdate();
	public static Commentupdate instance() {
		return imp1;
	}

@Override
public String showData(HttpServletRequest request, HttpServletResponse response) throws Exception {
	// TODO Auto-generated method stub
	String commentnum=request.getParameter("commentnum");
	String boardnum=request.getParameter("boardnum");
	String comment =new String(request.getParameter("upcomment").getBytes("8859_1"),"UTF-8");
	commentdto li = new commentdto();
	li.setCommentnum(commentnum);
	li.setComment(comment);
	System.out.println(commentnum+comment);
	action1 model = action1.instance();
	model.updatecomment(li);

	return "action.jsp?class=boardin&num="+boardnum;
	
}


}
