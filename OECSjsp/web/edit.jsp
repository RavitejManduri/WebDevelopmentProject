<%@ page import="java.sql.* , java.util.*" %>
<%
    Connection con;
    ResultSet rs;
    Statement s;
    String sql;
    String name,email,phone,gender,birth,address,city,state,internship,description,contacteddate,nextdate;
    try 
    {
         java.util.Date d=new java.util.Date();
        
         java.text.SimpleDateFormat sdf=new java.text.SimpleDateFormat("dd-MMM-yyyy");
        
         String cContacted=sdf.format(d);
         
         String cId=request.getParameter("Can_Id");
        
         String cName=request.getParameter("Can_Name");
         
         String cEmail=request.getParameter("Can_Email");
         
         String cMobile=request.getParameter("Can_Phone");
        
         String cGender=request.getParameter("Can_Gender");
         
         String cBirth=request.getParameter("Can_Birth");
         
         String cAddress=request.getParameter("Can_Address");
         
         String cCity=request.getParameter("Can_City");
        
         String cState=request.getParameter("Can_State");
         
         String cInternship=request.getParameter("Can_Internship");
         
         String cContactedDate=request.getParameter("Can_ContactedDate");
         
         String cNextContactDate=request.getParameter("Can_NextcontactedDate");
         
         String cDescription=request.getParameter("Can_Description");
         
         
        
         
          Class.forName("com.mysql.jdbc.Driver");

    
              
                       
                        con=DriverManager.getConnection("jdbc:mysql://localhost:3333/followjsp","root","pass");
			s=con.createStatement();
                        
                        sql="select * from online_candidate WHERE Can_Id='"+cId+"'";
                        rs=s.executeQuery(sql);
                     
      
         while(rs.next())
         {
                name=rs.getString("Can_Name");
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

%>
                    
                 <script language="javascript">
                     
                     window.location.href="followedupcandidates.jsp";
                 </script>
            
        
         
         <%
          }
                        }
    catch(Exception e)
    {
        out.println(e);
    }
    %>
    
