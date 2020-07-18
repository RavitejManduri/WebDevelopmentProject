<%@ page import="java.sql.* , java.util.*" %>
<%
    Connection con;
    Statement s;
    
    try 
    {
         java.util.Date d=new java.util.Date();
        
         java.text.SimpleDateFormat sdf=new java.text.SimpleDateFormat("dd-MMM-yyyy");
        
         String cContacted=sdf.format(d);
        
         String cName=request.getParameter("name");
         
         String cEmail=request.getParameter("email");
         
         String cMobile=request.getParameter("mobile");
        
         String cFrom=request.getParameter("from");
         
         String cTo=request.getParameter("to");
         
         String cLeave=request.getParameter("leave");
         
         String cNextDate="null";
        
         
         Class.forName("com.mysql.jdbc.Driver");
         
         con = DriverManager.getConnection("jdbc:mysql://localhost:3306/nitesh","root","root");
         
         String ins_sql="insert into leavedata(Can_Name,Can_Email,Can_Phone,Can_From,Can_To,Can_Leave,Can_ContactedDate,Can_NextContactedDate) values('"+cName+"','"+cEmail+"','"+cMobile+"','"+cFrom+"','"+cTo+"','"+cLeave+"','"+cContacted+"','"+cNextDate+"')";
         
         s=con.createStatement();
         
         int i=0;
         i=s.executeUpdate(ins_sql);
         
      
         if(i>0)
         {%>
        
                 <script language="javascript">
                     alert("Your Application For Leave Successfully Submited...! We Will Get Back To You Soon.");
                     window.location.href="facultymenu.jsp";
                 </script>
            
        
         
         <%
          }
         else
         {%>
             <script language="javascript">
                     alert("Sorry..! Try Again.");
                     window.location.href="LeaveApplication.html";
                 </script>
             <% }
    }catch(Exception e)
    {
        out.println(e);
    }
    %>
    
