<%@ page import="java.sql.* , java.util.*" %>
<%
    Connection con;
    Statement s;
    
    try 
    {
         java.util.Date d=new java.util.Date();
        
         java.text.SimpleDateFormat sdf=new java.text.SimpleDateFormat("dd-MMM-yyyy");
        
         String fContacted=sdf.format(d);
        
         String fName=request.getParameter("name");
         
         String fEmail=request.getParameter("email");
         
         String fPassword=request.getParameter("pass");
         
         String fMobile=request.getParameter("mobile");
        
         String fGender=request.getParameter("gen");
         
         String fBirth=request.getParameter("dob");
         
         String fAddress=request.getParameter("address");
         
         String fCity=request.getParameter("city");
        
         String fState=request.getParameter("state");
         
         String fCourse=request.getParameter("course");
         
         String fDescription=request.getParameter("description");
         
         String fNextDate="null";
        
         
         Class.forName("com.mysql.jdbc.Driver");
         
         con = DriverManager.getConnection("jdbc:mysql://localhost:3333/followjsp","root","pass");
         
         String ins_sql="insert into online_faculty(Fac_Name,Fac_Email,Fac_Pass,Fac_Phone,Fac_Gender,Fac_Birth,Fac_Address,Fac_City,Fac_State,Fac_Course,Fac_Description,Fac_ContactedDate,Fac_NextContactedDate) values('"+fName+"','"+fEmail+"','"+fPassword+"','"+fMobile+"','"+fGender+"','"+fBirth+"','"+fAddress+"','"+fCity+"','"+fState+"','"+fCourse+"','"+fDescription+"','"+fContacted+"','"+fNextDate+"')";
         
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
                     window.location.href="facultyregister.html";
                 </script>
             <% }
    }catch(Exception e)
    {
        out.println(e);
    }
    %>
    
