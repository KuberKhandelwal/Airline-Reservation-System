<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
.header {
  overflow: hidden;
  background-color: #fe003c;
  padding: 20px 10px;
  opacity: ;
  border-radius: 6px;
}

/* Style the header links */
.header a {
  float: left;
  color: black;
  text-align: center;
  padding: 12px;
  text-decoration: #a1b1c1;
  font-size: 18px;
  line-height: 25px;
  border-radius: 4px;
}

/* Style the logo link (notice that we set the same value of line-height and font-size to prevent the header to increase when the font gets bigger */
.header a.logo {
  font-size: 25px;
  font-weight: bold;
}

/* Change the background color on mouse-over */
.header a:hover {
  background-color: dodgerblue;
  color: white;
}

/* Style the active/current link*/
.header a.active {
  background-color: dodgerblue;
  color: white;
}

/* Float the link section to the right */
.header-right {
  float: right;
}

/* Add media queries for responsiveness - when the screen is 500px wide or less, stack the links on top of each other */
@media screen and (max-width: 500px) {
  .header a {
    float: none;
    display: block;
    text-align: left;
  }
  .header-right {
    float: none;
  }
}
body{
  background-image:url("pexels-pixabay-358220.jpg");
  background-repeat: no-repeat;
   background-size: 1278px  590px ;;
}
</style>
<title>Next Care Airline</title>

</head>
<body>

 
<div class="header">
  <a href="home.jsp" class="logo"><img alt="" width="100px" src="logo.png">Next Care Airline</a>
  <div class="header-right">
    <a href="search.html">Search</a>
    <a href="Book.html">Book</a>
    <a href="pay.html">Payment</a>
  </div>
</div>

<div class = "cssmarquee">
<marquee class="cssmarquee" width = "96%" height = "70%"  scrollamount= "50" scrolldelay="10"direction = "right"  bgcolor = "transparent"  hspace = "20"  vspace = "50" scrollamount = "200" style="color:red;"><strong>Next Care Airline</strong></marquee>
                 </div>
x
    
     
  
          
  
</body>
</html>