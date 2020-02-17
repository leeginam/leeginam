package mybatcontroller;

import java.text.SimpleDateFormat;
import java.util.Calendar;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mybatmodel.action1;
import mybatmodel.commentdto;

public class Commentinsert implements controller{
	static Commentinsert imp1 = new Commentinsert();
	public static Commentinsert instance() {
		return imp1;
	}

@Override
public String showData(HttpServletRequest request, HttpServletResponse response) throws Exception {
	// TODO Auto-generated method stub
	commentdto article = new commentdto();
	HttpSession session=request.getSession();

	String boardnum=request.getParameter("boardnum");
	String comment=new String(request.getParameter("comment").getBytes("8859_1"),"UTF-8");
	System.out.println("´ñ±Û:"+comment);
	String writer =(String) session.getAttribute("id");

    SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");

    Calendar c1 = Calendar.getInstance();

    String today = sdf.format(c1.getTime());

    
	article.setBoardnum(boardnum);
	article.setCommentwrither(writer);
	article.setComment(comment);
	article.setDay(today);
	
	
	action1 model = action1.instance();
	model.insertcomment(article);
	return "action.jsp?class=boardin&num="+boardnum;
	
}


}
