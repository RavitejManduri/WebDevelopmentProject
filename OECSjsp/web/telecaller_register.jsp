<%@ page import="java.sql.* , java.util.*" %>
<%
    Connection con;
    Statement s;
    
    try 
    {
         String cName=request.getParameter("name");
         
         String cEmail=request.getParameter("email");
         
         String cMobile=request.getParameter("mobile");
        
         String cGender=request.getParameter("gen");
         
         String cBirth=request.getParameter("dob");
         
         String cAddress=request.getParameter("address");
         
         String cCity=request.getParameter("city");
        
         String cState=request.getParameter("state");
         
         String cUsername=request.getParameter("uname");
         
         String cPassword=request.getParameter("pass");
        
         
         Class.forName("com.mysql.jdbc.Driver");
         
         con = DriverManager.getConnection("jdbc:mysql://localhost:3333/followjsp","root","pass");
         
         String ins_sql="insert into telecaller_registration values('"+cName+"','"+cEmail+"','"+cMobile+"','"+cGender+"','"+cBirth+"','"+cAddress+"','"+cCity+"','"+cState+"','"+cUsername+"','"+cPassword+"')";
         
         s=con.createStatement();
         
         int i=0;
         i=s.executeUpdate(ins_sql);
         
      
         if(i>0)
         {%>
        
                 <script language="javascript">
                     alert("You Have Successfully Registered...! Thank You.");
                     window.location.href="adminmenu.jsp";
                 </script>
            
        
         
         <%
          }
         else
         {%>
             <script language="javascript">
                     alert("Sorry..! Try Again.");
                     window.location.href="telecallerregister.jsp";
                 </script>
             <% }
    }catch(Exception e)
    {
        out.println(e);
    }
    %>
    
