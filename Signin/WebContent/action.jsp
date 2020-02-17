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

	if(cl.equals("insert")){
		String writename="";
		String moviename="";
		String title="";
		String contents="";
		String uploadPath=request.getRealPath("/upload");
		
		
		int size = 10*1024*1024;
		String filename="";
		String origfilename="";
		try{
			
			
			MultipartRequest multi=new MultipartRequest(request,
								uploadPath,
								size, 
								"UTF-8",
					new DefaultFileRenamePolicy());
			writename=multi.getParameter("writename");
			moviename=multi.getParameter("moviename");
			title=multi.getParameter("title");
			contents=multi.getParameter("contents");
			
			Enumeration files=multi.getFileNames();
			
			String file =(String)files.nextElement();
			filename=multi.getFilesystemName(file);
			origfilename= multi.getOriginalFileName(file);
			
			
		}catch(Exception e){
			e.printStackTrace();
		}
		Dto board = new Dto();
		board.setWritename(writename);
		board.setMoviename(moviename);
		board.setTitle(title);
		board.setContents(contents);
		board.setFilename(filename);
		dto.add(board);
		Dao.insert(dto);
	
		response.sendRedirect("action.jsp?class=search");
	}
	else if (cl.equals("boardin")){
		
		String num=request.getParameter("num");	
		ArrayList<Dto> li = Dao.selectin(num);
	
        for(int i=0;i<li.size();i++){
		request.setAttribute("writename",li.get(i).getWritename());
		request.setAttribute("moviename",li.get(i).getMoviename());
		request.setAttribute("title",li.get(i).getTitle());
		request.setAttribute("contents",li.get(i).getContents());
		request.setAttribute("day",li.get(i).getDay());
		request.setAttribute("num",li.get(i).getNum());
		request.setAttribute("filename",li.get(i).getFilename());

        }
		RequestDispatcher dispatcher = request.getRequestDispatcher("G_boardin.jsp");
		dispatcher.forward(request,response);
	}
	
	else if (cl.equals("search")){
		ArrayList<Dto> li;
		String moviename=request.getParameter("ser");
		if(moviename==null){
		 li = Dao.selectall();	
		}
		else{
			li = Dao.search(moviename);
		}
		
		request.setAttribute("group",li);

    
		RequestDispatcher dispatcher = request.getRequestDispatcher("G_board.jsp");
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


    }
	RequestDispatcher dispatcher = request.getRequestDispatcher("G_boardup.jsp");
	dispatcher.forward(request,response);
}
	
else if (cl.equals("updatevalue")){
	dto = new ArrayList<Dto>();
	String writename=request.getParameter("writename");
	String moviename=request.getParameter("moviename");
	String title=request.getParameter("title");
	String contents=request.getParameter("contents");
	String numS=(String)request.getParameter("num");
	int num =Integer.parseInt(numS);
	
	Dto board = new Dto();
	board.setWritename(writename);
	board.setMoviename(moviename);
	board.setTitle(title);
	board.setContents(contents);
	board.setNum(num);
	dto.add(board);

	Dao.updatevalue(dto);
	

	request.setAttribute("writename",dto.get(0).getWritename());
	request.setAttribute("moviename",dto.get(0).getMoviename());
	request.setAttribute("title",dto.get(0).getTitle());
	request.setAttribute("contents",dto.get(0).getContents());
	request.setAttribute("day",dto.get(0).getDay());
	request.setAttribute("num",dto.get(0).getNum());

	
    
	RequestDispatcher dispatcher = request.getRequestDispatcher("G_boardin.jsp");
	dispatcher.forward(request,response);
}
else if (cl.equals("delete")){
	
	
	int num = Integer.parseInt(request.getParameter("num"));
	
	Dao.delete(num);

	RequestDispatcher dispatcher = request.getRequestDispatcher("action.jsp?class=search");
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
