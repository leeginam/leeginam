<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ page import="java.util.ArrayList"%>
   <%@ page import="Dto.Dto"%>
   <%@ page import="Dao.Dbaccess" %>
<%
String firtstarticle = (String)request.getParameter("firstnum");
Dbaccess board = new Dbaccess();
System.out.println("asdad"+firtstarticle);
ArrayList<Dto> li =board.Board(Integer.parseInt(firtstarticle));
 	
 		
 		%>
		
		
		[
		<%
		for(int i=0;i<li.size();i++){
			String url= "action.jsp?class=boardin&num="+Integer.toString(li.get(i).getNum());
			String img="";
	
			if(li.get(i).getMoviename().equals("1917")){
				img = "img/1917.jpg";
			}
			else if(li.get(i).getMoviename().equals("미드웨이")){
				img = "img/midway.jpg";
			}
			else if(li.get(i).getMoviename().equals("슈렉")){
				img = "img/shurek.jpg";
			}
			else if(li.get(i).getMoviename().equals("해리포터")){
				img = "img/harrypoter.jpg";
			}
			else if(li.get(i).getMoviename().equals("짱구는못말려")){
				img = "img/jjanggu.jpg";
			}
			else{
				img = "img/none.png";
			}
				%>
			
			{	
				"url":"<%=url %>",
				"imglink":"<%=img %>",
				"title":"<%=li.get(i).getTitle() %>",
				"day":"<%=li.get(i).getDay() %>",
				"writename":"<%=li.get(i).getWritename() %>",
				"moviename":"<%=li.get(i).getMoviename() %>"
			}<%if(i!=li.size()-1){ %>,<%} %>
			<%}%>
			]