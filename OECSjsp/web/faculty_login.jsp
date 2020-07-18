<%@page import="java.sql.*" %>
<%
                  Connection con;
                  PreparedStatement ps;
                  ResultSet rs;
                  try{
                       Class.forName("com.mysql.jdbc.Driver");
                       con = DriverManager.getConnection("jdbc:mysql://localhost:3333/followjsp","root","pass");
                       String user_name=request.getParameter("Email");
                       String pass_word=request.getParameter("Password");
                       
                       String selsql="select count(*) from online_faculty where Fac_Email=? and Fac_Pass=?";
                       ps=con.prepareStatement(selsql);
                       ps.setString(1,user_name);
                       ps.setString(2,pass_word);
                       
                       int i=0;
                       rs=ps.executeQuery();
                       while(rs.next())
                       {
                          i=rs.getInt(1);
                         
                       }
                       if(i>0){
                           
                        response.sendRedirect("facultymenu.jsp");
                       }
                       else{%>
                       <script language="javascript">
                           alert("Invalid Username or Password. Try again");
                           window.location.href="adminlogin.html";
                       </script>
                       <%
                           
                       }
                       
                  }catch(Exception e)
                  {
                      out.println(e);
                  }
              %>