<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>


<%@ page import="Dto.Event_list_dto" %>
<%@ page import="Dto.Event_list_pagination_vo" %>
[
<%
ArrayList<Event_list_dto> list = (ArrayList<Event_list_dto>)request.getAttribute("articleList");

 	for(int i=0;i<list.size();i++){	%>

{
	"title":"<%=list.get(i).getTitle() %>",
	"eventnum":"<%=list.get(i).getEventnum() %>",
	"startday":"<%=list.get(i).getEventstart() %>",
	"finishday":"<%=list.get(i).getEventfinal() %>"
}<%if(i!=list.size()-1){ %>,<%} %>
<%}%>
]