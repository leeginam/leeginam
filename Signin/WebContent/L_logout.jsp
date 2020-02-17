<%@ page language = "java" contentType = "text/html; charset=UTF-8" pageEncoding="utf-8" %> <!--jsp���몃Ц(��
�⑥�� ���� 怨���)-->
<%@page import="java.io.*"%>
<%

	String id = (String) session.getAttribute("ID"); // �몄���� 媛��몄�щ�� 瑗� ���� ���ν�댁＜湲�(String)

session.invalidate(); //珥�湲곗�ㅼ���쇰� ����媛�
response.sendRedirect("index.jsp"); //get���� //留��ъ��� �ъ�⑷��� �����댁�濡� ���닿��쇰����(��濡��� ���댁��깅�)
%>