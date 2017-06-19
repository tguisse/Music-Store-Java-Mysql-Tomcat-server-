<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3> You</h3>
<%
String[] AlbumItems = request.getParameterValues("Album");
if(AlbumItems!=null){
	out.println("<ul>");
	for (int i=0; i<AlbumItems.length; ++i){
		out.println("<li>"+ AlbumItems[i]);
	}
	out.println("/<ul>");
}

%>


</body>
</html>