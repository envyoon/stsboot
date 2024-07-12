<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
</head>
<body>
    <h2>Login</h2>
    <form action="/login2" method="post">
        User ID: <input type="text" name="userId"><br>
        User Name: <input type="text" name="userNm"><br>
        <button type="submit">Login2</button>
    </form>
    <p style="color:red">${error}</p>
</body>
</html>