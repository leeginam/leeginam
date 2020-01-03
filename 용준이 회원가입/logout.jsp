<%@ page language = "java" contentType = "text/html; charset=UTF-8" pageEncoding="euc-kr" %> <!--jsp선언문(상
단에 항상 고정)-->
<%@page import="java.io.*"%>
<%

	String id = (String) session.getAttribute("ID"); // 세션은 가져올때 꼭 형태 입력해주기(String)

session.invalidate(); //초기설정으로 돌아감
response.sendRedirect("port.jsp"); //get형태 //링크처럼 사용가능 새페이지로 넘어가라는뜻(새로운 페이지등록)
%>