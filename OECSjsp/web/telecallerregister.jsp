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
        var cusername=document.form.uname.value;
        var cpassword=document.form.pass.value;
        var ccpassword=document.form.cpass.value;
        
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
            alert("please enter state");
            document.form.state.focus();
            return false;
        }
        else if(cusername=="")
        {
            alert("please enter username");
            document.form.uname.focus();
            return false;
        }
        else if(!emailRegex.test(cusername))
        {
            alert("enter username same as your Email-Id");
            document.form.uname.focus();
            return false;
        }
        else if(cpassword=="")
        {
            alert("please enter password");
            document.form.pass.focus();
            return false;
        }
        else if(ccpassword=="")
        {
            alert("confirm password");
            document.form.cpass.focus();
            return false;  
        }
        else if(ccpassword!=cpassword)
        {
            alert("confirm password must match the password that you have entered");
            document.form.cpass.focus();
            return false;
        }
        else if(!cusername==cemail)
        {
            alert("please enter username name same as your Email-Id");
            document.form.uname.focus();
            return false;
        }
        return true;
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
      <h1 id="about">Telecaller Registration</h1><div class="clear"></div><hr class="hr1" />
      
       <center>
          <div class="registrationbox" style=" background-color: honeydew">
         <p><b>Telecaller Information:</b></p>
               <form action="telecaller_register.jsp" method="post" name="form">
                 <span>Full Name: </span><input type="text" name="name" /><div class="clear"></div>
                 <span>Email Id : </span><input type="text" name="email" /> <div class="clear"></div>
                 <span>Mobile Number : </span><input type="text" name="mobile"  /><div class="clear"></div>
                 <span>Gender : </span><select name="gen">
                                   <option label="select gender"></option>
                                   <option value="male">Male</option>
                                   <option value="female">Female</option> 
                                    </select> <div class="clear"></div>
                 <span>Date Of Birth:</span><input type="date" name="dob" /><div class="clear"></div> 
                 <span>Address : </span><textarea name="address" placeholder="Enter your Address.."></textarea><div class="clear"></div>
                 <span>City: </span><input type="text" name="city" /><div class="clear"></div>
                 <span>State : </span><select name="state">
                                   <option label="select state"></option>
                                   <option value="Andra Pradesh">Andhra Pradesh</option>  
                                    </select> <div class="clear"></div> 
                 <span>Username: </span><input type="text" name="uname" /><div class="clear"></div>
                 <span>Password: </span><input type="password" name="pass" /><div class="clear"></div>
                 <span>Confirm Password: </span><input type="password" name="cpass" /><div class="clear"></div>
                 <span>&nbsp;</span><input type="submit" name="submit" value="Submit"  onclick="return check();"/>
                 <input type="reset" name="clear" value="Clear" />
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
