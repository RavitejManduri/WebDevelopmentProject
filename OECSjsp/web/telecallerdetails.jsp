<%-- 
    Document   : register
    Created on : Nov 23, 2014, 3:59:39 PM
    Author     : shrikantha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="css/style.css">
<title>WELCOME TO REO FLEX BUSINEES GROUP </title>

 <!-- menu begins-->
  <link href="css/menu.css" rel="stylesheet" type="text/css" />
<!-- menu ends-->
<!-- favicon generator begins--->
<link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico">
<!-- favicon generator ends-->
<style type="text/css">
<!--
.style1 {color: #000099}
-->
</style>
</head>
<body>
<!-- container begins-->
 <div class="container">
   <!-- header begins-->
     <div class="header">
        <div class="head">
           <!-- head left begins-->
             <div class="headleft">
              <a href="index.jsp"><img src="images/logo.png" /></a>
             </div>
           <!-- head left ends-->
          
          <!-- head right begins-->
          <div class="headright">
          <!-- head top begins-->
           <div class="headtop">
               <!-- contact begins-->
               
             <!-- contact ends-->
            <!-- contact begins-->
          
         <!-- contact ends-->
        </div>
      <!-- head top ends-->
      <!-- head bottom begins-->
        <div class="headbottom">
           <!-- menu begins-->
            <div class="menu">
               <ul id="nav">
                   <li><a href="adminmenu.jsp">Home</a></li>
               </ul>
            </div>
      <!-- menu ends-->
        </div>
      <!-- head bottom ends-->
          </div>
         <!-- head right ends-->
         <div class="clear"></div>
        </div>
     </div>
   <!-- header ends-->
    <!-- content begins-->
    <div class="content">
      <h1 id="about">Telecaller Details</h1><div class="clear"></div><hr class="hr1" />
      <%@page  import="java.sql.*" %> 
<%
                Connection con;
		ResultSet rs;
		Statement s;
		String sql;
                String cCid=request.getParameter("Can_Id");
                String name,email,phone,gender,birth,address,city,state,usrname,pass;
		try
		{

                    Class.forName("com.mysql.jdbc.Driver");

    
              
                       
                        con=DriverManager.getConnection("jdbc:mysql://localhost:3333/followjsp","root","pass");
			s=con.createStatement();
                        
                        sql="select * from telecaller_registration";
                        rs=s.executeQuery(sql);
                        %>
                        <table border=2 width=600>
   <tr><th> Name </th><th> Email </th><th>Phone </th><th>Gender</th><th>DateofBirth</th><th>Address</th><th>City</th><th>State</th><th>Username</th><th>Password</th></tr>
   <%                     
   while(rs.next())
                        {
      
   
    out.println("<tr><td>"+rs.getString("Telecaller_Name")+"</td><td>"+rs.getString("Telecaller_Email")+"</td><td>"+rs.getString("Telecaller_Mobile") +"</td><td>"+rs.getString("Telecaller_Gender")+"</td><td>"+rs.getString("Telecaller_Birth")+"</td><td>"+rs.getString("Telecaller_Address")+"</td><td>"+rs.getString("Telecaller_City")+"</td><td>"+rs.getString("Telecaller_State")+"</td><td>"+rs.getString("Telecaller_Username")+"</td><td>"+rs.getString("Telecaller_Password")+"</td></tr>");
                     }
    /*while(rs.next())
        {
         
         name=rs.getString("Can_Name");
         email=rs.getString("Can_Email");
         phone=rs.getString("Can_Phone");
         gender=rs.getString("Can_Gender");
         birth=rs.getString("Can_Birth");
         address=rs.getString("Can_Address");
         city=rs.getString("Can_City");
         state=rs.getString("Can_State");
         internship=rs.getString("Can_Internship");
         description=rs.getString("Can_Description");
         contacteddate=rs.getString("Can_ContactedDate");
         nextdate=rs.getString("Can_NextcontactedDate");
        
        } */
    
%>
   
       
      
       <% }
                catch(Exception e)
{
    out.println(e);
    
}                                        
    
%>

      
   
   <div class="clear"></div>
    </div>
     <!-- content ends-->
    <!-- footer begins-->
        <div class="footer">
          <div class="foot">
               <!-- copy right box begins-->
        <div class="copyrightbox">
           <h1>Copy Rights Reserved At  @2014 <span class="style1">SquareFour</span>Technologies. </h1>
          </div>
      <!-- copy right box ends-->    
   <!-- share box begins-->
          <div class="sharebox">
          <h1>Share With Us</h1>
         <a href="#"> <img src="images/facebook.png" /></a>
          <a href="#"> <img src="images/twitter.png" /></a>
         <a href="#"> <img src="images/linkedin.png" /></a>
          </div>
        <!-- share box ends-->
          </div>
          <div class="clear"></div>
        </div>
     <!-- footer ends-->
      <div class="clear"></div>
   </div>
<!-- container ends-->

</body>
</html>

    </body>
</html>
