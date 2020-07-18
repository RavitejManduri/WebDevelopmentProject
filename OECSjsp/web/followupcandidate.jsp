<%@page  import="java.sql.*" %> 
<%
                Connection con;
		ResultSet rs;
		Statement s;
		String sql;

		try
		{

                    Class.forName("com.mysql.jdbc.Driver");

    //           Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
              
                       
con=DriverManager.getConnection("jdbc:mysql://localhost:3333/followjsp","root","pass");
			s=con.createStatement();
                        
                        sql="select * from online_candidate";
                        rs=s.executeQuery(sql);
                        
                       //if(rs.next())
                        //{
                            %>
                            <center>                         
   <table border=2 width=600>
   <tr><th> Name </th><th> Email </th><th>Phone </th><th>Gender</th><th>DateofBirth</th><th>Address</th><th>City</th><th>State</th><th>Internship</th><th>Description</th><th>Contacted Date</th><th>Next Cantacted Date</th></tr>
   <%
    //out.println("<tr><td>"+rs.getString("name")+"</td><td>"+rs.getString("id")+"</td><td>"+rs.getString("dob") +"</td><td>"+rs.getString("address")+"</td><td>"+rs.getString("contactno")+"</td><td>"+rs.getString("city")+"</td><td>"+rs.getString("state")+"</td><td>"+rs.getString("dor")+"</td></tr>");
 
    while(rs.next())
        {
   out.println("<tr><td>"+rs.getString("Can_Name")+"</td><td>"+rs.getString("Can_Email")+"</td><td>"+rs.getString("Can_Phone") +"</td><td>"+rs.getString("Can_Gender")+"</td><td>"+rs.getString("Can_Birth")+"</td><td>"+rs.getString("Can_Address")+"</td><td>"+rs.getString("Can_City")+"</td><td>"+rs.getString("Can_State")+"</td><td>"+rs.getString("Can_Internship")+"</td><td>"+rs.getString("Can_Description")+"</td><td>"+rs.getString("Can_ContactedDate")+"</td><td>"+rs.getString("Can_NextcontactedDate")+"</td></tr>");
    }
   
                          //}
                       }
catch(Exception rr)
{
    out.println(rr);
    
}                                        
    
%>
	
   </table>                         
                            </center>