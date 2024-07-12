<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>Hello Spring Boot!</h2>
	<h2>DB Connetion TEST : </h2>
	<h2>DB 연결 완료</h2>
	
	<form name="login" method="post" action="login">
	아이디 : <input type="text" id="user_id" name="id" required autofocus required><br>
	비밀번호 : <input type="password" id="user_pw" name="pw" required><br>
	<input type="submit" value="로그인">
	</form>
	
</body>
</html>