<!DOCTYPE html>
<%@page  import="java.sql.*" %>
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
<script language="javascript">
    function check()
    {
        var emailRegex =/^[A-Za-z0-9._]*\@[A-Za-z]*\.[A-Za-z]{2,5}$/;
        var numericExpression = /^[0-9]{10}$/;

        var cname=document.form.name.value;
        var cemail=document.form.email.value;
        var cmobile=document.form.mobile.value;
        var cgender=document.form.gen.value;
        var cbirth=document.form.dob.value;
        var caddress=document.form.address.value;
        var ccity=document.form.city.value;
        var cstate=document.form.state.value;
        var cinternship=document.form.internship.value;
        var ccontacteddate=document.form.contactdate.value;
        var cnextdate=document.form.nextdate.value;
        var cdescription=document.form.description.value;
        
        if(cname=="")
        {
            alert("please enter name");
            document.form.name.focus();
            return false;
        }
        else if(cemail=="")
        {
            alert("please enter email");
            document.form.email.focus();
            return false;
        }
        else if(!emailRegex.test(cemail))
        {
            alert("please enter valid email");
            document.form.email.focus();
            return false;
        }
    
        else if(cmobile=="")
        {
            alert("please enter mobile number");
            document.form.mobile.focus();
            return false;
        }
        else if(!numericExpression.test(cmobile))
        {
            alert("please enter valid mobile number");
            document.form.mobile.focus();
            return false;
        }
        else if(cgender=="")
        {
            alert("please select gender");
            document.form.gen.focus();
            return false;
        }
        else if(cbirth=="")
        {
            alert("please enter date of birth");
            document.form.dob.focus();
            return false;
        }
        else if(caddress=="")
        {
            alert("please enter address");
            document.form.address.focus();
            return false;
        }
        else if(ccity=="")
        {
            alert("please enter city");
            document.form.city.focus();
            return false;
        }
        else if(cstate=="")
        {
            alert("please select state");
            document.form.state.focus();
            return false;
        }
        else if(cinternship=="")
        {
            alert("please select your course");
            document.form.internship.focus();
            return false;
        }
        else if(cnextdate=="")
        {
            alert("please enter candidate next date to be contact");
            document.form.nextdate.focus();
            return false;
        }
        
        else if(cdescription=="")
        {
            alert("please enter description");
            document.form.description.focus();
            return false;
        }
       alert("candidate details updated successfully");
   
        return true;
  }
  function fetch()
  {
      var cid=document.form.id.value;
      var regx=/^\d*$/;
      if(cid=="")
      {
          alert("please enter ID to fetch the data");
          document.form.id.focus();
          return false;
      }
      else if(!regx.test(cid))
      {
          alert("please enter only digits");
          document.form.id.focus();
          return false;
      }
      <%@page  import="java.sql.*" %> 
<%
                Connection con;
		ResultSet rs;
		Statement s;
		String sql;
                String cCid=request.getParameter("id");
                String name,email,phone,gender,birth,address,city,state,internship,description,contacteddate,nextdate;
		try
		{

                    Class.forName("com.mysql.jdbc.Driver");

    
              
                       
                        con=DriverManager.getConnection("jdbc:mysql://localhost:3309/followjsp","root","pass1");
			s=con.createStatement();
                        
                        sql="select * from online_candidate WHERE Can_Id='"+cCid+"'";
                        rs=s.executeQuery(sql);
                        {
      
   
    //out.println("<tr><td>"+rs.getString("name")+"</td><td>"+rs.getString("id")+"</td><td>"+rs.getString("dob") +"</td><td>"+rs.getString("address")+"</td><td>"+rs.getString("contactno")+"</td><td>"+rs.getString("city")+"</td><td>"+rs.getString("state")+"</td><td>"+rs.getString("dor")+"</td></tr>");
 
    while(rs.next())
        {
         
         name=rs.getString("Can_Name");
         System.out.println(name);
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
        
        } 
    
%>
   
       
      
       <% }
                }catch(Exception e)
{
    out.println(e);
    
}                                        
    
%>

   
  }
</script>
</head>
<body>
<!-- container begins-->
 <div class="container">
   <!-- header begins-->
     <div class="header">
        <div class="head">
           <!-- head left begins-->
             <div class="headleft">
              <a href="index.jsp.html"><img src="images/logo.png" /></a>
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
                <a href="index.jsp.html"><img src="images/login.png" /></a>
              <a href="index.jsp.html"> <p>Logout</p></a> 
          </div>
         <!-- contact ends-->
        </div>
      <!-- head top ends-->
      <!-- head bottom begins-->
        <div class="headbottom">
           <!-- menu begins-->
            <div class="menu">
               <ul id="nav">
              <li><a href="followedupcandidates.jsp">Home</a>
                   <li><a href="telecaller_quickenquiry.jsp">Quick Enquiry</a></li>
            <li><a href="#">Candidates</a>
              <ul>
                      <li><a href="registeredcandidates.jsp">Registered</a></li>
                      
                  </ul>  
            </li>
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
      <h1 id="about">Telecaller</h1><div class="clear"></div><hr class="hr1" />
      <h1 style=" color: black"><b><center></center></b></h1>
      
      <center><div class="registrationbox">
              <form action="edit.jsp" method="post" name="form">
               
              
               <span>Id: </span><input type="text" name="Can_Id"/><div class="clear"><center><input type="submit" value="Fetch" onclick="return fetch()"/></center></div>
               <span>Full Name: </span><input type="text" name="Can_Name" value="<%session.getAttribute("name");%>"/><div class="clear"></div>
                 <span>Email Id : </span><input type="text" name="Can_Email" /> <div class="clear"></div>
                 <span>Mobile Number : </span><input type="text" name="Can_Mobile"  /><div class="clear"></div>
                 <span>Gender : </span><select name="Can_Gender">
                                   <option label="select gender"></option>
                                   <option value="male">Male</option>
                                   <option value="female">Female</option> 
                                    </select> <div class="clear"></div>
                 <span>Date Of Birth:</span><input type="date" name="Can_Birth" /><div class="clear"></div> 
                 <span>Address : </span><textarea name="Can_Address" placeholder="Enter your Address.."></textarea><div class="clear"></div>
                 <span>City: </span><input type="text" name="Can_City" /><div class="clear"></div>
                 <span>State : </span><select name="Can_State">
                                   <option label="select state"></option>
                                   <option value="Andra Pradesh">Andhra Pradesh</option> 
                                   <option value="Bihar">Bihar</option>
                                   <option value="Chhattisgarh">Chhattisgarh</option>
                                   <option value="Madhya Pradesh">Madhya Pradesh</option>
                                   <option value="Maharashtra">Maharashtra</option>
                                    </select> <div class="clear"></div> 
                 <span>Internship for : </span><select name="Can_Internship">
                                   <option label="select course"></option>
                                   <option value="Java">Java</option> 
                                   <option value="PHP">PHP</option>
                                   <option value="DotNet">DotNet</option> 
                                   <option value="Android">Android</option>
                                   <option value="Other">Other</option>
                                   </select> <div class="clear"></div> 
                 <span>Contacted Date:</span><input type="date" name="Can_ContactedDate"  /><div class="clear"></div> 
                 <span>Next Date To Contact :</span><input type="date" name="Can_NextcontactedDate" /><div class="clear"></div> 
                 <span>Description : </span><textarea name="Can_Description" placeholder="Description..."></textarea><div class="clear"></div>                  
            
    
                 <span>&nbsp;</span><input type="submit" name="submit" value="Edit"  onclick="return check();" formaction="edit.jsp"/>
                 <input type="submit" name="submit" value="Register"  onclick="return check1();"/>
                 
                 <input type="reset" name="clear" value="Clear" />
                 
                                        
          </form>
              </div>
      </center>
      
      
   
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
