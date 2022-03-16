<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="com.seno.UserBean"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" 
            content="text/html; charset="ISO-8859-1">
<style>
 form { 
        border: 3px solid #f1f1f1; 
        width : 25%;
        heigth: 25%;
        margin : 0 auto;
    } 
    /*assign full width inputs*/ 
      
    input[type=text], 
    input[type=password] { 
        width: 100%; 
        padding: 12px 20px; 
        margin: 8px 0; 
        display: inline-block; 
        border: 1px solid #ccc; 
        box-sizing: border-box; 
    } 
    /*set a style for the buttons*/ 
      
    button { 
        background-color: #FF0000; 
        color: white; 
        padding: 14px 20px; 
        margin: 8px 0; 
        border: none; 
        cursor: pointer; 
        width: 100%; 
    } 
    /* set a hover effect for the button*/ 
      
    button:hover { 
        opacity: 0.8; 
    } 
    
      
    .cancelbtn { 
        width: auto; 
        padding: 10px 18px; 
        background-color: #f44336; 
    } 
  
    .imgcontainer { 
        text-align: center; 
        margin: 24px 0 12px 0; 
    } 
   
      
    img.avatar { 
        width: 40%; 
        border-radius: 50%; 
    } 
  
      
    .container { 
        padding: 16px; 
    } 
  
      
    span.psw { 
        float: right; 
        padding-top: 16px; 
    } 
   
    .name{
               text-align = center;
    } 
    marquee.cssmarquee  {
font-size: 2em;
color: turquoise;
position: absolute;
width: 100%;
height: 100%;
margin: 0;
line-height: 50px;
text-align: center;
transform:translateX(100%);
animation: cssmarquee 10s linear infinite;
}
    @media screen and (max-width: 150px) { 
        span.psw { 
            display: block; 
            float: none; 
        } 
        .cancelbtn { 
            width: 100%; 
        } 
    } 
</style> 
<title>invalid login</title>
</head>
<body>

 
 <form action="resgis.jsp">
  <div class = "name">
                   <marquee width = "87%" height = "50%"  scrollamount= "10" direction = "right"  bgcolor = "cyan"  hspace = "20"  vspace = "20" scrollamount = "200" >Register First</marquee>
                 </div>
 <div class="imgcontainer"> 
            <img src= 
"https://image.freepik.com/free-vector/airplane-icon_1325-717.jpg" 
                 alt="Avatar" class="avatar"> 
                 <div class = "name">
                   <marquee width = "40%" height = "50%"  scrollamount= "10" direction = "right"  bgcolor = "cyan"  hspace = "20"  vspace = "20" scrollamount = "200" >Next Care Airline</marquee>
                 </div>
        </div> 
    <div class="container"> 
            <label><b>Username</b></label> 
            <input type="text" placeholder="Enter Username" name="un" required> 
            <label for="fname" style="color:red;">First Name:</label><br>
             <input type="text" id="fname" name="fname" placeholder="Enter FirstName" >
             <label for="lname" style="color:red;">Last Name:</label><br>
            <input type="text" id="lname" name="lname" placeholder="Enter LastName" >
            <label><b>Password</b></label> 
            <input type="password" placeholder="Enter Password" name="pw" required> 
  
            <button type="submit">Register</button> 
            <input type="checkbox" checked="checked"> Remember me 
        </div> 
  
 </form>     
</body>
</html>