<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>


    <link href="https://fonts.googleapis.com/css?family=Alegreya" rel="stylesheet">
    <script src="js/jquery.js"></script>

    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/bootstrap-theme.css">
    <link rel="stylesheet" href="css/font-awesome.css">
    <script src="js/bootstrap.min.js"></script>

    <script src="js/jquery.js"></script>

    <link href="css/custom.css" rel="stylesheet"/>
    <style>
        body {
            margin: 0;
        }
         h3 {
           font-size: 200%;
         background: gray;
           
         }

        #side {
            list-style-type: none;
            margin: 0;
            padding: 0;
          //  width: 25%;
            background-color: #f1f1f1;

            height: 100%;
            overflow: auto;
        }

        #side > li a {
            display: block;
            color: #000;
            padding: 8px 16px;
            text-decoration: none;
        }

        #side>  li a.active {
            background-color: #4CAF50;
            color: white;
        }

        #side>  li a:hover:not(.active) {
            background-color: #555;
            color: white;
        }
    </style>
    
    
    
    
</head>
<body>


<div class="jumbotron" style="display: block">
   <center> <h3> Music Store</h3> </center>
    
        <div class="">

            <ul class="nav navbar-nav">
                

            </ul>

            <ul class=" nav navbar-nav navbar-right" style="margin-right: 50px;">

          
            </ul>


        </div>

</div>

    <div class="col-sm-2 col-md-2">
        <ul id="side" >
            <li><a href="home.jsp">Home</a></li>
            <li><a href="index.jsp ">Login</a></li>
            <li><a href="Album.jsp ">Select Albums</a></li>
            <li><a href=" Shipping.jsp">Shipping</a></li>
            <li><a href="Contact.jsp">Contact Us</a></li>
          
        </ul>

    </div>
  
</body>
<body>
<%
Connection con= null;
PreparedStatement ps = null;
ResultSet rs = null;

String driverName = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/logindb";
String user = "root";
String password = "tidiani";

String sql = "select usertype from userdetail";

try {
Class.forName(driverName);
con = DriverManager.getConnection(url, user, password);
ps = con.prepareStatement(sql);
rs = ps.executeQuery(); 
%>
<form method="post" action="login.jsp">
<center><h2 style="color:green">Please Login</h2></center>
<table border="1" align="center">
<tr>
<td>Enter Your Name :</td>
<td><input type="text" name="name"/></td>
</tr>
<tr>
<td>Enter Your Password :</td>
<td><input type="password" name="password"/></td>
</tr>
<tr>
<td>Select UserType</td>
<td><select name="usertype">
<option value="select">select</option>
<%
while(rs.next())
{
String usertype = rs.getString("usertype");
%>
<option value=<%=usertype%>><%=usertype%></option>
<% 
}
}
catch(SQLException sqe)
{
out.println("home"+sqe);
}
%>

</select>
</td>
</tr>
<tr>
<td></td>
<td><input type="submit" value="submit"/></td>
</table>

<p> <a href="register.jsp"> Click here to register</a></p>
<p> <a href="changePassword.jsp"> Click here to reset your password</a></p>
</form>
<p> Current date is : <%=new java.util.Date() %></p>
</body>
</html>
