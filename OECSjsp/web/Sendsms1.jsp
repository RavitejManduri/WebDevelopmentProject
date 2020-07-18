<%@page import="java.io.IOException"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="java.net.URL"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.net.URLConnection"%>
<%// Replace with your username
    String n=request.getParameter("number");
    String m=request.getParameter("MSG");
    String m2=request.getParameter("MSG2");
    String m3=request.getParameter("MSG3");
String user = "nite15791";

// Replace with your API KEY (We have sent API KEY on activation email, also available on panel)
String apikey = "HRogE8nlo5SlZYIt8Xzd";

// Replace with the destination mobile Number to which you want to send sms
String mobile = n;

// Replace if you have your own Sender ID, else donot change
String senderid = "MYTEXT";

// Replace with your Message content
String message = m;
String message2 = m2;
String message3 = m3;
// For Plain Text, use "txt" ; for Unicode symbols or regional Languages like hindi/tamil/kannada use "uni"
String type="txt";

//Prepare Url
URLConnection myURLConnection=null;
URL myURL=null;
BufferedReader reader=null;

//encoding message
String encoded_message=URLEncoder.encode(message);
String encoded_message2=URLEncoder.encode(message2);
String encoded_message3=URLEncoder.encode(message3);
//Send SMS API
String mainUrl="http://smshorizon.co.in/api/sendsms.php?";

//Prepare parameter string
StringBuilder sbPostData= new StringBuilder(mainUrl);
sbPostData.append("user="+user);
sbPostData.append("&apikey="+apikey);
sbPostData.append("&message="+encoded_message);
sbPostData.append("&message2="+encoded_message2);
sbPostData.append("&message3="+encoded_message3);
sbPostData.append("&mobile="+mobile);
sbPostData.append("&senderid="+senderid);
sbPostData.append("&type="+type);


//final string
mainUrl = sbPostData.toString();
%>
<%

try
{
    //prepare connection
    myURL = new URL(mainUrl);
    myURLConnection = myURL.openConnection();
    myURLConnection.connect();
    reader= new BufferedReader(new InputStreamReader(myURLConnection.getInputStream()));
    //reading response 
    String response1;
    while ((response1 = reader.readLine()) != null) 
    //print response 
    System.out.println(response1);
    
    //finally close connection
    reader.close();
} 
catch (IOException e) 
{ 
	e.printStackTrace();
} 

%>