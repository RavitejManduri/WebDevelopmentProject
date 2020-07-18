
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
                                                <div class="contact">
                                                    <a href="index.jsp"><img src="images/login.png" /></a>
                                                    <a href="index.jsp"> <p>Logout</p></a> 
                                                </div>
                                                <!-- contact ends-->
                                            </div>
                                            <!-- head top ends-->
                                            <!-- head bottom begins-->
                                            <div class="headbottom">
                                                <!-- menu begins-->
                                                <div class="menu">
                                                    <ul id="nav">
                                                        <li><a href="#">Register</a>

                                                            <ul>

                                                                <li><a href="telecallerregister.jsp">Telecaller</a></li>
                                                            </ul>
                                                        </li>
                                                        <li><a href="#">Details</a>
                                                            <ul>

                                                                <li><a href="telecallerdetails.jsp">Telecaller</a></li>
                                                            </ul>
                                                        </li>
                                                        <li><a href="#">Candidates</a>
                                                            <ul>
                                                                <li><a href="admin_registeredcandidates.jsp">Registered</a></li>
                                                                <li><a href="admin_followedupcandidates.jsp">FollowedUp</a></li>
                                                            </ul>  
                                                        </li>
                                                        <li><a href="#">Faculty</a>
                                                            <ul>

                                                                <li><a href="facultyregister.html">Register</a></li>
                                                            </ul>
                                                        </li>

                                                        <li><a href="DuePayments.html">Due Payments</a></li>

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


                                <center>
                                    <div class="registrationbox" style=" background-color: honeydew">


                                        <%@ page import="java.sql.*" %>


<HTML>
    <HEAD>
        <TITLE>Fetching Data From a Database</TITLE>
    </HEAD>

    <BODY>
        <H1>Database Lookup</H1>
        <FORM ACTION="DuePaymentDATA.jsp" METHOD="POST">
            Please enter the ID of the publisher you want to find:
            <BR>
            <INPUT TYPE="TEXT" name="id">
            <BR>
            <INPUT TYPE="SUBMIT" value="Submit">
        </FORM>


        <H1>Fetching Data From a Database</H1>

        <% 
        
 Class.forName("com.mysql.jdbc.Driver"); 
 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/nitesh","root","root");

            Statement statement = con.createStatement();

            String name = request.getParameter("name");  

            ResultSet resultset = 
                statement.executeQuery("select * from google1 where name = '" + name + "'") ; 

            if(!resultset.next()) {
                
            } else {
        %>

        <TABLE BORDER="1">
            <TR>
               <TH>ID</TH>
               <TH>Name</TH>
               <TH>City</TH>
               <TH>State</TH>
               <TH>Country</TH>
           </TR>
           <TR>
               <TD> <%= resultset.getString(1) %> </TD>
               <TD> <%= resultset.getString(2) %> </TD>
               <TD> <%= resultset.getString(3) %> </TD>
               <TD> <%= resultset.getString(4) %> </TD>
               <TD> <%= resultset.getString(5) %> </TD>
           </TR>
       </TABLE>
       <BR>
       <% 
           } 
       %>
    </BODY>
</HTML>
                                                                                                            </div>
                                                                                                            </center>





                                                                                                            <!-- header ends-->
                                                                                                            <!-- content begins-->
                                                                                                            <div class="content">

                                                                                                                <br/>
                                                                                                                <br/>
                                                                                                                <br/>
                                                                                                                <br/>
                                                                                                                <br/>
                                                                                                                <br/>
                                                                                                                <br/>
                                                                                                                <br/>
                                                                                                                <br/>
                                                                                                                <br/>
                                                                                                                <br/>
                                                                                                                <br/>
                                                                                                                <br/>
                                                                                                                <br/>
                                                                                                                <br/>
                                                                                                                <br/>
                                                                                                                <br/>
                                                                                                                <br/>
                                                                                                                <br/>
                                                                                                                <br/>
                                                                                                                <br/>
                                                                                                                <br/>
                                                                                                                <br/>
                                                                                                                <br/>

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
