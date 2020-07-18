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
                        
                        sql="select * from online_candidate ORDER BY Can_Id desc";
                        rs=s.executeQuery(sql);
                        
                       //if(rs.next())
                        //{
                            %>
                           <center>                         
   <table border=2 width=800 name="follow">
       <tr><th> Id </th><th> Name </th><th> Email </th><th>Phone </th><th>Address</th><th>Internship For</th><th>Contacted Date</th></tr>
   <%
    //out.println("<tr><td>"+rs.getString("name")+"</td><td>"+rs.getString("id")+"</td><td>"+rs.getString("dob") +"</td><td>"+rs.getString("address")+"</td><td>"+rs.getString("contactno")+"</td><td>"+rs.getString("city")+"</td><td>"+rs.getString("state")+"</td><td>"+rs.getString("dor")+"</td></tr>");
 
    while(rs.next())
        {
          
          out.println("<tr><td><a href='options_candidate.jsp'>"+rs.getString("Can_Id") +"</a></td><td>"+rs.getString("Can_Name")+"</td><td>"+rs.getString("Can_Email") +"</td><td>"+rs.getString("Can_Phone")+"</td><td>"+rs.getString("Can_Address")+"</td><td>"+rs.getString("Can_Internship")+"</td><td>"+rs.getString("Can_ContactedDate")+"</td></tr>");
        
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