<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome</title>
</head>
<body>
<p>Welcome, <%=session.getAttribute("name")%></p>
<p><a href="logout.jsp">Logout</a>
<p> <a href="Album.jsp"> Click here to Select your Your Album</a>
</body>
</html>