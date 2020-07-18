package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class comphome_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Company</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\n");
      out.write("<head>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"css/style.css\">\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write(" <!-- menu begins-->\n");
      out.write("  <link href=\"css/menu.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    \n");
      out.write("<!-- container begins-->\n");
      out.write(" <div class=\"container\">\n");
      out.write("   <!-- header begins-->\n");
      out.write("     <div class=\"header\">\n");
      out.write("        <div class=\"head\">\n");
      out.write("           <!-- head left begins-->\n");
      out.write("             <div class=\"headleft\">\n");
      out.write("              <a href=\"index.html\" style=\"height:auto;width:auto;margin-left:-60px;\"><img src=\"images/slider/logo3.png\" /></a>\n");
      out.write("             </div>\n");
      out.write("           <!-- head left ends-->\n");
      out.write("          \n");
      out.write("          <!-- head right begins-->\n");
      out.write("          <div class=\"headright\">\n");
      out.write("          <!-- head top begins-->\n");
      out.write("           <div class=\"headtop\">\n");
      out.write("               <!-- contact begins-->\n");
      out.write("               <div class=\"contact\">\n");
      out.write("                <a href=\"index.html\"><img src=\"images/login.png\" /></a>\n");
      out.write("              <a href=\"index.html\"> <p>Logout</p></a> \n");
      out.write("          </div>\n");
      out.write("             <!-- contact ends-->\n");
      out.write("            <!-- contact begins-->\n");
      out.write("         <!-- contact ends-->\n");
      out.write("        </div>\n");
      out.write("      <!-- head top ends-->\n");
      out.write("      <!-- head bottom begins-->\n");
      out.write("        <div class=\"headbottom\">\n");
      out.write("           <!-- menu begins-->\n");
      out.write("            <div class=\"menu\">\n");
      out.write("               <ul id=\"nav\">\n");
      out.write("                   <li><a href=\"index.html\">Back to panel</a>\n");
      out.write("              </li>\n");
      out.write("            \n");
      out.write("          </ul> \n");
      out.write("        </div>\n");
      out.write("      <!-- menu ends-->\n");
      out.write("        </div>\n");
      out.write("      <!-- head bottom ends-->\n");
      out.write("          </div>\n");
      out.write("         <!-- head right ends-->\n");
      out.write("         <div class=\"clear\"></div>\n");
      out.write("        </div>\n");
      out.write("     </div>\n");
      out.write("   <!-- header ends-->\n");
      out.write("    <!-- content begins-->\n");
      out.write("    <div class=\"content\">\n");
      out.write("        <h3>  <b> <center>WELCOME ");
      out.print( session.getAttribute("theName") );
      out.write("</center></b></h3>\n");
      out.write("      <!-- h1 id=\"about\"></h1---><div class=\"clear\"></div><hr class=\"hr1\" />\n");
      out.write("      <!-- login left begins-->\n");
      out.write("      <div class=\"loginleft\">\n");
      out.write("    <!-- login box begins-->\n");
      out.write("      <div class=\"loginbox\">\n");
      out.write("        <form action=\"#\" method=\"post\" enctype=\"multipart/form-data\">\n");
      out.write("            <p><span>View Applied Students:</span><input type=\"radio\" name=\"radio1\"value=\"\" id=\"username\" onclick=\"document.location.href='compstu.jsp'\"/></p>\n");
      out.write("            <p><span>Shortlist Students:</span><input type=\"radio\" name=\"radio1\"value=\"\" id=\"username\" onclick=\"document.location.href='admincomp.html'\"/></p>\n");
      out.write("            \n");
      out.write("        </form>\n");
      out.write("          <div class=\"clear\"></div>\n");
      out.write("      </div>\n");
      out.write("    <!-- login box ends-->\n");
      out.write("     </div>\n");
      out.write("    <!-- login left ends-->\n");
      out.write("    <!-- login right begins-->\n");
      out.write("     <div class=\"loginright\">\n");
      out.write("      <img src=\"images/login.jpg\" />\n");
      out.write("     </div>\n");
      out.write("    <!-- login right ends-->\n");
      out.write("   <div class=\"clear\"></div>\n");
      out.write("    </div>\n");
      out.write("     <!-- content ends-->\n");
      out.write("    <!-- footer begins-->\n");
      out.write("        <div class=\"footer\">\n");
      out.write("          <div class=\"foot\">\n");
      out.write("               \n");
      out.write("          <div class=\"sharebox\">\n");
      out.write("          <h1>Share With Us</h1>\n");
      out.write("         <a href=\"#\"> <img src=\"images/facebook.png\" /></a>\n");
      out.write("          <a href=\"#\"> <img src=\"images/twitter.png\" /></a>\n");
      out.write("         <a href=\"#\"> <img src=\"images/linkedin.png\" /></a>\n");
      out.write("          </div>\n");
      out.write("        <!-- share box ends-->\n");
      out.write("          </div>\n");
      out.write("          <div class=\"clear\"></div>\n");
      out.write("        </div>\n");
      out.write("     <!-- footer ends-->\n");
      out.write("      <div class=\"clear\"></div>\n");
      out.write("   </div>\n");
      out.write("<!-- container ends-->\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
