<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="Dto.Dto" %>
<%@ page import="Dao.Dbaccess" %>
<% request.setCharacterEncoding("utf-8");%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@ page import="java.util.*" %>
<jsp:useBean id="Dao" class="Dao.Dbaccess"></jsp:useBean>
<%
ArrayList<Dto> dto = new ArrayList<Dto>();
	String cl =request.getParameter("class");

////////////////////////////////////////////////////////////영화제목으로 찾기	
	 if (cl.equals("search")){
		System.out.println("search");
		ArrayList<Dto> li;
		String moviename=request.getParameter("ser");
		System.out.println(moviename);
		if(moviename==null){
		 li = Dao.selectall();	
		}
		else{
			li = Dao.search(moviename);
		}
		
		request.setAttribute("group",li);
    
		RequestDispatcher dispatcher = request.getRequestDispatcher("magazine.vo?command=all");
		dispatcher.forward(request,response);
	}
else if (cl.equals("update")){
	String num=request.getParameter("num");
	ArrayList<Dto> li = Dao.selectin(num);
	
	
	li=Dao.selectin(num);

    for(int i=0;i<li.size();i++){
	request.setAttribute("writename",li.get(i).getWritename());
	request.setAttribute("moviename",li.get(i).getMoviename());
	request.setAttribute("title",li.get(i).getTitle());
	request.setAttribute("contents",li.get(i).getContents());
	request.setAttribute("day",li.get(i).getDay());
	request.setAttribute("num",li.get(i).getNum());
	if(li.get(0).getComment()!=null){
	request.setAttribute("comments",li.get(i).getComment());
	}

    }
	RequestDispatcher dispatcher = request.getRequestDispatcher("G_boardup.jsp");
	dispatcher.forward(request,response);
}
	
/////////////////////////////////////////////////////////////////////////////////////////////////////회원탈퇴	
else if (cl.equals("passwordsearch")){
	String id=(String)session.getAttribute("id");
	String password= Dao.searchpassword(id);
	request.setAttribute("password",password);
	RequestDispatcher dispatcher = request.getRequestDispatcher("I_signout.jsp");
	dispatcher.forward(request,response);
}
else if (cl.equals("signdel")){
	String id=(String)session.getAttribute("id");
	Dao.signout(id);
	session.invalidate();
	request.setAttribute("id",id);
	RequestDispatcher dispatcher = request.getRequestDispatcher("I_result.jsp");
	dispatcher.forward(request,response);
}
%>
