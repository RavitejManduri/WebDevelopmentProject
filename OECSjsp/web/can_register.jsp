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
        
         String cGender=request.getParameter("gen");
         
         String cBirth=request.getParameter("dob");
         
         String cAddress=request.getParameter("address");
         
         String cCity=request.getParameter("city");
        
         String cState=request.getParameter("state");
         
         String cInternship=request.getParameter("internship");
         
         String cDescription=request.getParameter("description");
         
         String cNextDate="null";
        
         
         Class.forName("com.mysql.jdbc.Driver");
         
         con = DriverManager.getConnection("jdbc:mysql://localhost:3306/nitesh","root","root");
         
         String ins_sql="insert into online_candidate(Can_Name,Can_Email,Can_Phone,Can_Gender,Can_Birth,Can_Address,Can_City,Can_State,Can_Internship,Can_Description,Can_ContactedDate,Can_NextContactedDate) values('"+cName+"','"+cEmail+"','"+cMobile+"','"+cGender+"','"+cBirth+"','"+cAddress+"','"+cCity+"','"+cState+"','"+cInternship+"','"+cDescription+"','"+cContacted+"','"+cNextDate+"')";
         
         s=con.createStatement();
         
         int i=0;
         i=s.executeUpdate(ins_sql);
         
      
         if(i>0)
         {%>
        
                 <script language="javascript">
                     alert("You Have Successfully Registered...! We Will Get Back To You Soon.");
                     window.location.href="index.jsp";
                 </script>
            
        
         
         <%
          }
         else
         {%>
             <script language="javascript">
                     alert("Sorry..! Try Again.");
                     window.location.href="register.html";
                 </script>
             <% }
    }catch(Exception e)
    {
        out.println(e);
    }
    %>
    
