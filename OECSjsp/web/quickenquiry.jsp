<%@ page import="java.sql.* , java.util.*" %>
<%
    Connection con;
    Statement s;
    
    try 
    {
         String qName=request.getParameter("qname");
         
         String qEmail=request.getParameter("qmail");
         
         String qMobile=request.getParameter("qphone");
        
         String qMessage=request.getParameter("qmessage");
         
         Class.forName("com.mysql.jdbc.Driver");
         
         con = DriverManager.getConnection("jdbc:mysql://localhost:3333/followjsp","root","pass");
         
         String ins_sql="insert into candidate_quickenquiry values('"+qName+"','"+qEmail+"','"+qMobile+"','"+qMessage+"')";
         
         s=con.createStatement();
         
         int i=0;
         i=s.executeUpdate(ins_sql);
         
      
         if(i>0)
         {%>
        
                 <script language="javascript">
                     alert("Thank you for your interest. We will get back to you soon..!");
                     window.location.href="index.jsp";
                 </script>
          <%
          }
         else
         {%>
             <script language="javascript">
                     alert("Sorry..! Try Again.");
                     window.location.href="index.jsp";
                 </script>
             <% }
    }catch(Exception e)
    {
        out.println(e);
    }
    %>
    
