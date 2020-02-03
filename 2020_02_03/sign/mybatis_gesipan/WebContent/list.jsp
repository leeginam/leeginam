<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%> 
 <%@ page import="model.dto"%> 
    <%
    ArrayList<dto> list = (ArrayList<dto>)request.getAttribute("data");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%	for(int i=0;i<list.size();i++){%>
아이디<%=list.get(i).getId()%><br>
이름<%=list.get(i).getName()%><br>
비밀번호<%=list.get(i).getPassword()%><br>
<%}%>
</body>
</html>