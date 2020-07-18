<%@ page import="java.util.*" %>
<%@ page import="java.security.*" %>

<%!
public boolean empty(String s)
	{
		if(s== null || s.trim().equals(""))
			return true;
		else
			return false;
	}
%>
<%!
	public String hashCal(String type,String str){
		byte[] hashseq=str.getBytes();
		StringBuffer hexString = new StringBuffer();
		try{
		MessageDigest algorithm = MessageDigest.getInstance(type);
		algorithm.reset();
		algorithm.update(hashseq);
		byte messageDigest[] = algorithm.digest();
            
		

		for (int i=0;i<messageDigest.length;i++) {
			String hex=Integer.toHexString(0xFF & messageDigest[i]);
			if(hex.length()==1) hexString.append("0");
			hexString.append(hex);
		}
			
		}catch(NoSuchAlgorithmException nsae){ }
		
		return hexString.toString();


	}
%>
<% 	
	String merchant_key="7H6cCy";
	String salt="LBvXBhaX";
	String action1 ="";
	String base_url="https://secure.payu.in";
	int error=0; 
        String udf2="";
	String hashString="";
	
 

	
	Enumeration paramNames = request.getParameterNames();
	Map<String,String> params= new HashMap<String,String>();
    	while(paramNames.hasMoreElements()) 
	{
      		String paramName = (String)paramNames.nextElement();
      
      		String paramValue = request.getParameter(paramName);

		params.put(paramName,paramValue);
	}
	String txnid ="";
	if(empty(params.get("txnid"))){
		Random rand = new Random();
		String rndm = Integer.toString(rand.nextInt())+(System.currentTimeMillis() / 1000L);
		txnid=hashCal("SHA-256",rndm).substring(0,20);
	}
	else
		txnid=params.get("txnid");
        udf2 = txnid;
	String txn="abcd";
	String hash="";
	String hashSequence = "key|txnid|amount|productinfo|firstname|email|udf1|udf2|udf3|udf4|udf5|udf6|udf7|udf8|udf9|udf10";
	if(empty(params.get("hash")) && params.size()>0)
	{
		if( empty(params.get("key"))
			|| empty(params.get("txnid"))
			|| empty(params.get("amount"))
			|| empty(params.get("firstname"))
			|| empty(params.get("email"))
			|| empty(params.get("phone"))
			
	)
			
			error=1;
		else{
			String[] hashVarSeq=hashSequence.split("\\|");
			
			for(String part : hashVarSeq)
			{
				hashString= (empty(params.get(part)))?hashString.concat(""):hashString.concat(params.get(part));
				hashString=hashString.concat("|");
			}
			hashString=hashString.concat(salt);
			

			 hash=hashCal("SHA-512",hashString);
			action1=base_url.concat("/_payment");
		}
	}
	else if(!empty(params.get("hash")))
	{
		hash=params.get("hash");
		action1=base_url.concat("/_payment");
	}
      
%>




<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<script type="text/javascript"> /* var bcf_settings = { buttonText:'Contact Us', buttonTop:'30%', language:'en_US' }; // Better Contact Form Settings */ (function (d, s, id) { var js, fjs = d.getElementsByTagName(s)[0]; js = d.createElement(s); js.id = id; js.src = "https://bettercontactform.com/contact/media/f/7/f723fafddc102e9fc64ada552111032466660670.js"; fjs.parentNode.insertBefore(js, fjs); }(document, "script", "bcf-render"));</script> 
<style type="text/css">
<!--
.style1 {color: #000099}
.style2 {color: #000000}
.style3 {color: #0000CC}
-->
</style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="css/style.css">
<title>WELCOME TO REO FLEX BUSINEES GROUP </title>
<!-- slider begins-->
 <link href="css/js-image-slider.css" rel="stylesheet" type="text/css" />
    <script src="js/js-image-slider.js" type="text/javascript"></script>
 <!-- slider ends-->
 <!-- menu begins-->
  <link href="css/menu.css" rel="stylesheet" type="text/css" />
<!-- menu ends-->
<!-- favicon generator begins--->
<link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico">
<!-- favicon generator ends-->

<script>
    var hash = '<%= hash%>';
    function submitPayuForm() {

        if (hash == '')
            return;

        var payuForm = document.forms.payuForm;
        payuForm.submit();
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
               <div class="contact">
                 <a href="register.html"><img src="images/register.png" /></a>
                 <a href="registerlogin.html"><p>Register</p></a> 
              </div>
             <!-- contact ends-->
            <!-- contact begins-->
           <div class="contact">
                <a href="login.html"><img src="images/login.png" /></a>
              <a href="login.html"> <p>Login</p></a> 
          </div>
         <!-- contact ends-->
        </div>
      <!-- head top ends-->
      <!-- head bottom begins-->
        <div class="headbottom">
           <!-- menu begins-->
            <div class="menu">
               <ul id="nav">
              <li><a href="index.jsp">Home</a></li>
            <li><a href="about.html">About Us</a></li>
            <li><a href="rewards.jsp">Services</a>
                
            </li>
          
            
           
            <li><a href="faq.html">FAQ</a></li>
            <li><a href="contact.html">Contact</a></li>
            <li><a href="test.jsp">Payments</a></li>
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
  
    <!-- slider begins-->
      

       <!-- service2 ends-->
        </div>
       <!-- services ends-->
      </div>

      <br>
                <br>
                <br>    
                <br>        
                <br>    
                <br>
                 
      
      
      <body onload="submitPayuForm();"><center>
       
      


        <form action="<%= action1%>" method="post" name="payuForm">
            <input type="hidden" name="key" value="<%= merchant_key%>" />
            <input type="hidden" name="hash" value="<%= hash%>"/>
            <input type="hidden" name="txnid" value="<%= txnid%>" />
            <input type="hidden" name="udf2" value="<%= txnid%>" />
            <input type="hidden" name="service_provider" value="payu_paisa" />
            <table>
                <tr>
                    
                <td><b><h1>Mandatory Parameters</h1></b></td>
                </tr>
                <tr>
                    <td>Amount: </td>
                    <td><input name="amount" value="<%= (empty(params.get("amount"))) ? "" : params.get("amount")%>" /></td>
                    <td>First Name: </td>
                    <td><input name="firstname" id="firstname" value="<%= (empty(params.get("firstname"))) ? "" : params.get("firstname")%>" /></td>
                </tr>
                <tr>
                    <td>Email: </td>
                    <td><input name="email" id="email" value="<%= (empty(params.get("email"))) ? "" : params.get("email")%>" /></td>
                    <td>Phone: </td>
                    <td><input name="phone" value="<%= (empty(params.get("phone"))) ? "" : params.get("phone")%>" /></td>
                </tr>

                <tr>
                    <td colspan="2" hidden>Success URI: </td>
                    <td colspan="2" hidden><input name="surl" value="http://www.dharamshalaflying.com/paymentdone.php" size="64" hidden/></td>
                </tr>
                <tr>
                    <td colspan="2" hidden>Failure URI: </td>
                    <td colspan="2" hidden><input name="furl" value="http://www.dharamshalaflying.com/paymentfailed.php" size="64" hidden/></td>
                </tr>

                <tr>
                    <% if (empty(hash)) { %>
                    <td colspan="4"><input type="submit" value="Submit" /></td>
                        <% }%>
                </tr>
            </table>
          </center>
          </body> 
      
      
                <br>
                <br>
                <br>    
                <br>        
                <br>    
                <br>
                <br>   
                <br>    
                <br>    
                <br>    
                <br>    
                <br>    
               <br>   
                <br>  
                <br>     
                <br>     
                <br>      
                 <br>     
                <br>      
                <br>      
                <br>  
               <br>     
               <br>
               <br>    
               <br>    
               <br>    
              <br>    
               <br>    
               <br>    
               <br>    
               <br>    
               <br>    
               <br>    
                  
                 
                   
                   
                      
<!-- latest news ends-->
     </div>
   <!-- content right ends-->
   <div class="clear"></div>
    </div>
     <!-- content ends-->
    <!-- footer begins-->
        <div class="footer">
          <div class="foot">
               <!-- copy right box begins-->
        <div class="copyrightbox">
           <h1>Copy Rights Reserved At  @2014 <a href="www.squarefourtechnologies.com" target="_blank"><span class="style1">SquareFou</span><span class="style2"><span class="style3">r</span>Technologies.</span></a></h1>
          
           <!-- copy right box ends--></div>
          <div class="clear"></div>
        </div>
     <!-- footer ends-->
      <div class="clear"></div>
   </div>
<!-- container ends-->

</body>
</html>
