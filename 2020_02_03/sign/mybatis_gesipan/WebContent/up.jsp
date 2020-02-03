<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="sang.do?command=update" method=post>
	업데이트하고자하는 회원의 정보를 입력하세요
	아이디<input type="text" id="id" name="id">
	이름<input type="text" id="name" name="name">
	비밀번호<input type="text" id="pass" name="pass"><input type="submit" value="확인">
</form>
</body>
</html>