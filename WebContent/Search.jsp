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
<link rel="stylesheet" href="search-css.css" type="text/css">
<style>
#customers {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}
#customers td {
 padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #edcbb2;
  color: Black;
  ;
}
</style>
<title>Next Care Airline </title>


</head>
<body>
<div class="header">
  <a href="home.jsp" class="logo"><img alt="" width="100px" src="logo.png">Next Care Airline</a>
  <div class="header-right">
    <a href="search.html">Search</a>
    <a href="Book.jsp">Book</a>
    <a href="Pay.jsp">Payment</a>
  </div>
</div>

                 <div class = "cssmarquee">
<marquee class="cssmarquee" width = "96%" height = "70%"  scrollamount= "50" scrolldelay="10"direction = "right"  bgcolor = "transparent"  hspace = "20"  vspace = "50" scrollamount = "200" style="color:red;"><strong>Next Care Airline</strong></marquee>
                 </div>
  
      
         <sql:setDataSource var = "logininfo" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost:3307/logininfo"
         user = "root"  password = "" />
 
      <sql:query dataSource = "${logininfo}" var = "result">
         SELECT * from flightdetails WHERE `from` = "${param.fromlist}" AND `to`=  "${param.tolist}" AND `Date` = "${param.date}";
         </sql:query>
 
      <table id="customers" border = "1" width = "100%">
         <tr>
            <th>fligthcode</th>
            <th>From</th>
            <th>to</th>
            <th>date</th>
            <th>Price</th>
            <th>Book Now</th>
         </tr>
         
         <c:forEach var = "row" items = "${result.rows}">
            <tr>
               <td><c:out value = "${row.flightcode}"/></td>
               <td><c:out value = "${row.from}"/></td>
               <td><c:out value = "${row.to}"/></td>
               <td><c:out value = "${row.Date}"/></td>
               <td><c:out value = "${row.Price}"/></td>
               <td><a href="Book.html">Book</a></td>
            </tr>
         </c:forEach>
      </table>
        ${row.Price}
  
    
      		
 

  
</body>
</html>