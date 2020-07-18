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
                        
                        sql="select * from candidate_quickenquiry";
                        rs=s.executeQuery(sql);
                        
                       //if(rs.next())
                        //{
                            %>
                            <center>                         
   <table border=2 width=600>
   <tr><th> Name </th><th> Phone </th><th>Email </th><th>Description</th></tr>
   <%
    //out.println("<tr><td>"+rs.getString("name")+"</td><td>"+rs.getString("id")+"</td><td>"+rs.getString("dob") +"</td><td>"+rs.getString("address")+"</td><td>"+rs.getString("contactno")+"</td><td>"+rs.getString("city")+"</td><td>"+rs.getString("state")+"</td><td>"+rs.getString("dor")+"</td></tr>");
 
    while(rs.next())
        {
    out.println("<tr><td > "+rs.getString("Candidate_Name") +"</td><td>"+rs.getString("Candidate_Phone")+"</td><td>"+rs.getString("Candidate_Email") +"</td><td>"+rs.getString("Candidate_Message")+"</td></tr>");
        
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