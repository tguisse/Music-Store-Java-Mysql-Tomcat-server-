<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Purchase Summary</title>
</head>
<body>
<h3> Your Total Amount is:</h3>
<%
int amount = 0;
String[] AlbumItems = request.getParameterValues("Album");
if (AlbumItems != null){
	for (int i = 0; i< AlbumItems.length; ++i){
		if (AlbumItems[i].equals("Album1"))
			amount = amount +10;
		if (AlbumItems[i].equals("Album2"))
			amount = amount +10;
		if (AlbumItems[i].equals("Album3"))
			amount = amount +10;
		if (AlbumItems[i].equals("Album4"))
			amount = amount +10;
		if (AlbumItems[i].equals("Album5"))
			amount = amount +10;	
	}
	out.println("$"+amount);
}

%>

<h3>Please Put your Shipping information</h3>
<body><div ng-app="myApp" ng-controller="statesCtrl">
<form method="Post" action="Confirmation.jsp">
 Name<input type="text" name="Name" value="" /><br>
 Address <input type="text" name="StAddress" value="" /><br>
City <input type="text" name="City" value="" /><br>
Zip <input type ="text" name ="Zip" value =""/><br>
States:Find My State:  <input data-ng-model="query" type="text" /> 
 <span ng-hide="!query" ng-repeat="x in states | filter:{name:query}">    {{ x.name}} </span>
 <input type="submit" name="submit" value="submit" />
 </form></body></html><script>angular.module('myApp', []).controller('statesCtrl', function($scope)
		 {  $scope.states = [     {name: "Virginia"},{name: "Delaware"},{name: "Baltimore"}] ;});</script>