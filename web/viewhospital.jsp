<%-- 
    Document   : viewhospital
    Created on : Feb 23, 2016, 3:11:10 AM
    Author     : Oops
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="MyPack.MyDb"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
 <link rel="stylesheet" type="text/css" href="register.css"/>
<title>Hospital</title>
<meta name="keywords" content="ddddd" />
<meta name="description" content="" />
<link href="css/tooplate_style.css" rel="stylesheet" type="text/css" />
<link href="css/demo.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="css/nivo-slider.css" type="text/css" media="screen" />
<script src="js/jquery.min.js" type="text/javascript"></script>
<script src="js/jquery.nivo.slider.js" type="text/javascript"></script>

</head>
   
    <body>
        <div id="tooplate_body_wrapper">
<div id="tooplate_wrapper">
	<div id="tooplate_top_bar">
    	<a class="social_btn twitter">&nbsp;</a>
        <a class="social_btn facebook">&nbsp;</a>
    </div>	
    
    <div id="tooplate_header">
        <div id="site_title"><h1> BLOOD FINDER</h1></div>
        
	     <div id="tooplate_menu">
            <ul>
               <li><a href="index.html" class="current">Home</a></li>
               <li><a href=rselectp.html>Join Us</a></li>
       
                <li><a href="bloodbank.html">Blood bank</a></li>
                
                <li><a href="viewhospital.jsp">Hospital</a></li>
                
                <li><a href="hospital.html">Search Donor</a></li>
                
                <li><a href="aboutus.jsp">About Us</a></li>
                
            </ul>    	
        </div> <!-- end of tooplate_menu -->
    </div> <!-- end of forever header -->
</div>

<div id="tooplate_middle_subpage">
    		
</div> <!-- end of middle -->


<div style=" width: 60%;
   
   
border-radius: 25px;
    
margin-left: 200px;
background-color: #150707;
color: #ffffff;
font-size: 23px;
   
padding: 20px;">



 <pre>
    <h3>Search Hospital in your locality</h3>
       <form action="searchdoner.jsp" method="post">
          <label > Location </label>      <input type="text" placeholder="location" name="loc">
          <br>
          
                     <input type="submit" value="search" style= "background: #30122b;
  background-image: -webkit-linear-gradient(top, #30122b, #47340e);
  background-image: -moz-linear-gradient(top, #30122b, #47340e);
  background-image: -ms-linear-gradient(top, #30122b, #47340e);
  background-image: -o-linear-gradient(top, #30122b, #47340e);
  background-image: linear-gradient(to bottom, #30122b, #47340e);
  -webkit-border-radius: 20px;
  -moz-border-radius: 20px;
  border-radius: 20px;
  font-family: Arial;
  color: #ffffff;
  font-size: 20px;
  padding: 10px 20px 10px 20px;
  text-decoration: none;">
           </br>
        </form>
        </pre>

</div>

  <%
        try{
        String loc = request.getParameter("loc");
            
            
             MyDb db = new MyDb();
           Connection con =db.getCon();
           Statement stmt = con.createStatement();
           
           
           ResultSet rs = stmt.executeQuery("select hname,contact number,address,email from hregister where location = '"+loc+"';"); 
          while( rs.next()){
           String name = rs.getString("hname");
           String add = rs.getString("address");
           String email = rs.getString("email");
           String contact = rs.getString("contact number");
           
           
        %>
           <div style="background-color: #330D0D; color: #ffffff; margin-top: 20px;">
               <div style="margin-left: 200px; padding-top: 20px; padding-bottom: 20px;">
               <label>NAME    :</label> <%out.println(name);%>
              <br/>
          <label>ADDRESS      :</label> <%out.println(add);%>
           <br/>
         <label>EMAIL      :</label> <%out.println(email);%>
         <br/>
           <label>Contact Number :</label><%out.println(contact);%>
             </div>
           </div><%
           
          }
        
        }catch(Exception e){
}
        
        
        %>







<pre>







</pre>







<div id="tooplate_footer_wrapper">
	<div id="tooplate_footer">
    	<div class="col_w200 float_l">
        	<h4>Pages</h4>
            <ul class="tooplate_list">
                <li><a href="#"></a></li>
                <li><a href="#"></a></li>
                <li><a href="#"></a></li>
                <li><a href="#"></a></li>
                <li><a href="#"></a></li>
                <li><a href="#"></a></li>
            </ul>
        </div>
        <div class="col_w200 float_l">
        	<h4>DEVELOPED BY</h4>
            <ul class="tooplate_list"> 
                <li><a href="#"> javadeveloper </a></li>
              
            </ul>
        </div>
		<div class="col_w200 float_l">
        	<h4>Partners</h4>
            <ul class="tooplate_list">
	            <li><a href="https://www.facebook.com/SmileyWellFairGroupMultai/?ref=br_rs">"SMILEY WELL FAIR GROUP MULTAI"</a></li>
                <li><a href="#"></a></li>
                <li><a href="#"></a></li>
                <li><a href="#"></a></li>
                <li><a href="#"></a></li>                
                <li><a href="#"></a></li>
            </ul>
        </div>
        <div class="col_w200 float_r col_last">
        	<h4>Contact Us</h4>
            <br />
            Mobile Number: +91 888888888  <br />
            Email: <a href="#">findblood@gmail.com</a>
        </div>
        
        <div class="cleaner"></div>
    </div>
</div>

<div id="tooplate_copyright_wrapper">
	<div id="tooplate_copyright">
	
    	Copyright � 2023 <a href="#">javadeveloper</a>
		
    </div>
</div>
        <script>
      $(document).ready(function(){
          console.log("Page is Ready");};
  </script>
        
    </body>
</html>
