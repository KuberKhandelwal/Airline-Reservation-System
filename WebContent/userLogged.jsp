<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="com.seno.UserBean"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" 
            content="text/html; charset="ISO-8859-1">
<title>User Logged Successfully</title>
</head>
<body>
<% UserBean currentUser = (UserBean(session.getAttribute("currentSessionUser"));%>
			
            Welcome <%= currentUser.getFirstName() + " " + currentUser.getLastName() %>

</body>
</html>