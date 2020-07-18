<%@page  import="java.sql.*" %> 
<%
                Connection con;
		ResultSet rs;
		Statement s;
		String sql;
                String cCid=request.getParameter("Can_Id");
                String name,email,phone,gender,birth,address,city,state,internship,description,contacteddate,nextdate;
		try
		{

                    Class.forName("com.mysql.jdbc.Driver");

    
              
                       
                        con=DriverManager.getConnection("jdbc:mysql://localhost:3333/followjsp","root","pass");
			s=con.createStatement();
                        
                        sql="select * from online_candidate WHERE Can_Id='"+cCid+"'";
                        rs=s.executeQuery(sql);
                        %>
                        <table border=2 width=600>
   <tr><th> Name </th><th> Email </th><th>Phone </th><th>Gender</th><th>DateofBirth</th><th>Address</th><th>City</th><th>State</th><th>Username</th><th>Password</th></tr>
   <%                     
                         while(rs.next())
                        {
      
   
    out.println("<tr><td>"+rs.getString("Can_Name")+"</td><td>"+rs.getString("Can_Email")+"</td><td>"+rs.getString("Can_Phone") +"</td><td>"+rs.getString("Can_Gender")+"</td><td>"+rs.getString("Can_Birth")+"</td><td>"+rs.getString("Can_Address")+"</td><td>"+rs.getString("Can_City")+"</td><td>"+rs.getString("Can_State")+"</td><td>"+rs.getString("Can_Internship")+"</td><td>"+rs.getString("Can_Description")+"</td><td>"+rs.getString("Can_ContactedDate")+"</td><td>"+rs.getString("Can_NextcontactedDate")+"</td></tr>");
                     }
    /*while(rs.next())
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
        
        } */
    
%>
   
       
      
       <% }
                catch(Exception e)
{
    out.println(e);
    
}                                        
    
%>
