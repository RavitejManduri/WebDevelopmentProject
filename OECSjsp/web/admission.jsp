<%@ page import="java.sql.* , java.util.*" %>
<%
    Connection con;
    Statement s;
    
    try 
    {
         java.util.Date d=new java.util.Date();
        
         java.text.SimpleDateFormat sdf=new java.text.SimpleDateFormat("dd-MMM-yyyy");
        
         String cContacted=sdf.format(d);
        
         String FirstName=request.getParameter("First_Name");
         String LastName=request.getParameter("Last_Name");
         String dob=request.getParameter("dob");
         String Email=request.getParameter("Email_Id");
         String Mobile=request.getParameter("Mobile_Number");
         String Gender=request.getParameter("Gender");
         String Address=request.getParameter("Address");
         String City=request.getParameter("City");
         String PinCode=request.getParameter("Pin_Code");
         String State=request.getParameter("State");
         String Country=request.getParameter("Country");
         String ClassX_Board=request.getParameter("ClassX_Board");
         String ClassX_Percentage=request.getParameter("ClassX_Percentage");
         String ClassX_YrOfPassing=request.getParameter("ClassX_YrOfPassing");
         String ClassXII_Board=request.getParameter("ClassXII_Board");
         String ClassXII_Percentage=request.getParameter("ClassXII_Percentage");
         String ClassXII_YrOfPassing=request.getParameter("ClassXII_YrOfPassing");
         String Graduation_Board=request.getParameter("Graduation_Board");
         String Graduation_Percentage=request.getParameter("Graduation_Percentage");
         String Graduation_YrOfPassing=request.getParameter("Graduation_YrOfPassing");
         String Masters_Board=request.getParameter("Masters_Board");
         String Masters_Percentage=request.getParameter("Masters_Percentage");
         String Masters_YrOfPassing=request.getParameter("Masters_YrOfPassing");
         String Course=request.getParameter("Course");
         
             
         
         Class.forName("com.mysql.jdbc.Driver");
         
         con = DriverManager.getConnection("jdbc:mysql://localhost:3333/followjsp","root","pass");
         
         String ins_sql="insert into studentadmission(FirstName,LastName,dob,Email,Mobile,Gender,Address,City,Pincode,State,Country,XBoard,XPercentage,XYear,XIIBoard,XIIPercentage,XIIYear,GradBoard,GradPercentage,GradYear,MastersBoard,MastersPercentage,MastersYear,CourseApplied)values('"+FirstName+"','"+LastName+"','"+dob+"','"+Email+"','"+Mobile+"','"+Gender+"','"+Address+"','"+City+"','"+PinCode+"','"+State+"','"+Country+"','"+ClassX_Board+"','"+ClassX_Percentage+"','"+ClassX_YrOfPassing+"','"+ClassXII_Board+"','"+ClassXII_Percentage+"','"+ClassXII_YrOfPassing+"','"+Graduation_Board+"','"+Graduation_Percentage+"','"+Graduation_YrOfPassing+"','"+Masters_Board+"','"+Masters_Percentage+"','"+Masters_YrOfPassing+"','"+Course+"')";
      
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
    
