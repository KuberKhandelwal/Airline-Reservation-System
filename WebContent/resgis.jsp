<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Insert title here</title>
</head>
<body>
<sql:setDataSource var = "logininfo" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost:3307/logininfo"
         user = "root"  password = "" />
            <sql:update dataSource = "${logininfo}" var = "result">
        
         INSERT INTO login_page VALUES ("${param.un}","${param.pw}","${param.fname}","${param.lname}");
      </sql:update>
        <%
    String redirectURL = "LoginPAge.jsp";
    response.sendRedirect(redirectURL);
%>
</body>
</html>