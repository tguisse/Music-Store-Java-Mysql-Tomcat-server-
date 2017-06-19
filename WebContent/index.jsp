

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>
    <a href="home.jsp" > Click to login</a>
        <form action="dashboard.jsp" method="post">
            <input type="text" name="emailLogin" placeholder="Enter your Email Address" size="50">
            <br>
            <br>
            <input type="password" name="passLogin" placeholder="Enter your Password" size="50">
            <br>
            <br>
            <input type="submit" name="login" value="Login">
            &nbsp;&nbsp;&nbsp;&nbsp;
            <input type="submit" name="registerLogin" value="I'm New User">
        </form>
    </body>
</html>
