package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.util.*;

public final class todo3_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write(' ');
      out.write('\n');

    Connection con;
    Statement s;
    
    try 
    {
        String rno=session.getAttribute("theRno").toString();
        
        
        int i1 = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
         int i=0;
         while(true){
             //out.println(cTitle);
             i1++;
             String name=request.getParameter("mon"+i1);
            // out.println(name);
             if(name!=null){
                 Class.forName("com.mysql.jdbc.Driver");
         
         con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_academy","root","pass");
         
         String ins_sql="insert into todo values('"+rno+"','Monday','"+name+"')";
         
         s=con.createStatement();
         
         
         i=s.executeUpdate(ins_sql);
             }
             else{
             break;
      }
   }
           while(true){
             //out.println(cTitle);
             i2++;
             String name=request.getParameter("tue"+i2);
            // out.println(name);
             if(name!=null&&name!=""){
                 Class.forName("com.mysql.jdbc.Driver");
         
         con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_academy","root","pass");
         if(name!="")
         { String ins_sql="insert into todo values('"+rno+"','Tuesday','"+name+"')";
         
         s=con.createStatement();
         
         
         i=s.executeUpdate(ins_sql);}
             }
             else{
             break;
      }
   }
             while(true){
             //out.println(cTitle);
             i3++;
             String name=request.getParameter("wed"+i3);
            // out.println(name);
             if(name!=null){
                 Class.forName("com.mysql.jdbc.Driver");
         
         con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_academy","root","pass");
         
         String ins_sql="insert into todo values('"+rno+"','Wednesday','"+name+"')";
         
         s=con.createStatement();
         
         
         i=s.executeUpdate(ins_sql);
             }
             else{
             break;
      }
   }
               while(true){
             //out.println(cTitle);
             i4++;
             String name=request.getParameter("thu"+i4);
            // out.println(name);
             if(name!=null){
                 Class.forName("com.mysql.jdbc.Driver");
         
         con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_academy","root","pass");
         
         String ins_sql="insert into todo values('"+rno+"','Thursday','"+name+"')";
         
         s=con.createStatement();
         
         
         i=s.executeUpdate(ins_sql);
             }
             else{
             break;
      }
   }
                 while(true){
             //out.println(cTitle);
             i5++;
             String name=request.getParameter("fri"+i5);
            // out.println(name);
             if(name!=null){
                 Class.forName("com.mysql.jdbc.Driver");
         
         con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_academy","root","pass");
         
         String ins_sql="insert into todo values('"+rno+"','Friday','"+name+"')";
         
         s=con.createStatement();
         
         
         i=s.executeUpdate(ins_sql);
             }
             else{
             break;
      }
   }
                   while(true){
             //out.println(cTitle);
             i6++;
             String name=request.getParameter("sat"+i6);
            // out.println(name);
             if(name!=null){
                 Class.forName("com.mysql.jdbc.Driver");
         
         con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_academy","root","pass");
         
         String ins_sql="insert into todo values('"+rno+"','Saturday','"+name+"')";
         
         s=con.createStatement();
         
         
         i=s.executeUpdate(ins_sql);
             }
             else{
             break;
      }
   }
       
         if(i>0)
         {
      out.write("\n");
      out.write("        \n");
      out.write("                 <script language=\"javascript\">\n");
      out.write("                     alert(\"You Have Successfully Posted the Options And The Question.\");\n");
      out.write("                     window.location.href=\"todo1.jsp\";\n");
      out.write("                 </script>\n");
      out.write("            \n");
      out.write("        \n");
      out.write("         \n");
      out.write("         ");

          }
         else
         {
      out.write("\n");
      out.write("             <script language=\"javascript\">\n");
      out.write("                     alert(\"Sorry..! Try Again.\");\n");
      out.write("                     window.location.href=\"todo1.jsp\";\n");
      out.write("                 </script>\n");
      out.write("             ");
 }
    }catch(Exception e)
    {
        out.println(e);
    }
    
      out.write("\n");
      out.write("    \n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
