<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Logout</title>
</head>
<body>
<% session.invalidate();
session = request.getSession();
response.sendRedirect("index.jsp");
%>
<p>You have been successfully logout</p>
<p> <a href="home.jsp"> Click here to go back to the main page</a></p>

</body>
</html>