package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.text.SimpleDateFormat;
import java.sql.Date;
import java.util.*;
import java.sql.*;

public final class todo2_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("   ");

       String a1[]=new String[30];
       String a2[]=new String[30];
       String a3[]=new String[30];
       String a4[]=new String[30];
       String a5[]=new String[30];
       String a6[]=new String[30];
       String rno="411530";
       //String rno=session.getAttribute("theRno").toString();
       int i1=-1,i2=-1,i3=-1,i4=-1,i5=-1,i6=-1;
   
      out.write("\n");
      out.write("       \n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/style.css\">\n");
      out.write("        <link href=\"css/js-image-slider.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("    <script src=\"js/js-image-slider.js\" type=\"text/javascript\"></script>\n");
      out.write("      <link href=\"css/menu.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("      <link rel=\"shortcut icon\" type=\"image/x-icon\" href=\"images/favicon.ico\">\n");
      out.write("      <style>\n");
      out.write("          ul {\n");
      out.write("  margin: 0;\n");
      out.write("  padding: 0;\n");
      out.write("  list-style-type: none;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Style the list items */\n");
      out.write("ul li {\n");
      out.write("  cursor: pointer;\n");
      out.write("  position: relative;\n");
      out.write("  width:80%;\n");
      out.write("\n");
      out.write("  \n");
      out.write("  padding: 12px 8px 12px 40px;\n");
      out.write("  background: #eee;\n");
      out.write("  font-size: 18px;\n");
      out.write("  transition: 0.2s;\n");
      out.write("  \n");
      out.write("  /* make the list items unselectable */\n");
      out.write("  -webkit-user-select: none;\n");
      out.write("  -moz-user-select: none;\n");
      out.write("  -ms-user-select: none;\n");
      out.write("  user-select: none;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Set all odd list items to a different color (zebra-stripes) */\n");
      out.write("ul li:nth-child(odd) {\n");
      out.write("  background: #f9f9f9;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Darker background-color on hover */\n");
      out.write("ul li:hover {\n");
      out.write("  background: #ddd;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* When clicked on, add a background color and strike out text */\n");
      out.write("ul li.checked {\n");
      out.write("  background: #888;\n");
      out.write("  color: #fff;\n");
      out.write("  text-decoration: line-through;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Add a \"checked\" mark when clicked on */\n");
      out.write("ul li.checked::before {\n");
      out.write("  content: '';\n");
      out.write("  position: absolute;\n");
      out.write("  border-color: #fff;\n");
      out.write("  border-style: solid;\n");
      out.write("  border-width: 0 2px 2px 0;\n");
      out.write("  top: 10px;\n");
      out.write("  left: 16px;\n");
      out.write("  transform: rotate(45deg);\n");
      out.write("  height: 15px;\n");
      out.write("  width: 7px;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Style the close button */\n");
      out.write(".close {\n");
      out.write("  position: absolute;\n");
      out.write("  right: 0;\n");
      out.write("  top: 0;\n");
      out.write("  padding: 12px 16px 12px 16px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".close:hover {\n");
      out.write("  background-color: #f44336;\n");
      out.write("  color: white;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Style the header */\n");
      out.write(".header1 {\n");
      out.write("  background-color: #015B6E;\n");
      out.write("  padding: 20px 5px;\n");
      out.write("  color: white;\n");
      out.write("  text-align: center;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Clear floats after the header */\n");
      out.write(".header1:after {\n");
      out.write("  content: \"\";\n");
      out.write("  display: table;\n");
      out.write("  clear: both;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Style the input */\n");
      out.write("input {\n");
      out.write("  border: none;\n");
      out.write("  width: 70%;\n");
      out.write("  padding: 5px;\n");
      out.write("  float: left;\n");
      out.write("  font-size: 16px;\n");
      out.write("  margin:0;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Style the \"Add\" button */\n");
      out.write(".addBtn {\n");
      out.write("  padding: 5px;\n");
      out.write("  margin:0;\n");
      out.write("  width:20%;\n");
      out.write("  background: #d9d9d9;\n");
      out.write("  color: #555;\n");
      out.write("  float: left;\n");
      out.write("  text-align: center;\n");
      out.write("  font-size: 16px;\n");
      out.write("  cursor: pointer;\n");
      out.write("  transition: 0.3s;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".addBtn:hover {\n");
      out.write("  background-color: #bbb;\n");
      out.write("}\n");
      out.write("\n");
      out.write("          \n");
      out.write("          \n");
      out.write("          \n");
      out.write("          \n");
      out.write("          \n");
      out.write("          \n");
      out.write("          \n");
      out.write("          \n");
      out.write("          \n");
      out.write("          .containe {\n");
      out.write("  display:flex;\n");
      out.write("  justify-content:center;\n");
      out.write("   height:100%;\n");
      out.write("   position: absolute;\n");
      out.write("      width: 100%;\n");
      out.write("\n");
      out.write("}\n");
      out.write(".containe > div {\n");
      out.write("  margin:5px;\n");
      out.write("  background-color:white;\n");
      out.write("     box-shadow: 0px 0px 5px 0px grey;\n");
      out.write("      height:100%;\n");
      out.write("        width: 100%;\n");
      out.write("  \n");
      out.write("}\n");
      out.write(".first {\n");
      out.write("\n");
      out.write("  text-align: center;\n");
      out.write("     height:auto;\n");
      out.write("}\n");
      out.write(".text{\n");
      out.write("background-color:white;\n");
      out.write("border:1px solid #7FB3D5; \n");
      out.write("border-radius:2px;\n");
      out.write("padding:10px;\n");
      out.write("color:grey;\n");
      out.write("position: relative;\n");
      out.write("width:70%;\n");
      out.write("border-left:  solid #2471A3;\n");
      out.write("\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write("      </style>\n");
      out.write("          </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("<script>\n");
      out.write("// Create a \"close\" button and append it to each list item\n");
      out.write("var myNodelist = document.getElementsByTagName(\"LI\");\n");
      out.write("var i;\n");
      out.write("for (i = 0; i < myNodelist.length; i++) {\n");
      out.write("  var span = document.createElement(\"SPAN\");\n");
      out.write("  var txt = document.createTextNode(\"\\u00D7\");\n");
      out.write("  span.className = \"close\";\n");
      out.write("  span.appendChild(txt);\n");
      out.write("  myNodelist[i].appendChild(span);\n");
      out.write("}\n");
      out.write("\n");
      out.write("// Click on a close button to hide the current list item\n");
      out.write("var close = document.getElementsByClassName(\"close\");\n");
      out.write("var i;\n");
      out.write("for (i = 0; i < close.length; i++) {\n");
      out.write("  close[i].onclick = function() {\n");
      out.write("    var div = this.parentElement;\n");
      out.write("    div.style.display = \"none\";\n");
      out.write("  }\n");
      out.write("}\n");
      out.write("\n");
      out.write("// Add a \"checked\" symbol when clicking on a list item\n");
      out.write("var list = document.querySelector('ul');\n");
      out.write("list.addEventListener('click', function(ev) {\n");
      out.write("  if (ev.target.tagName === 'li') {\n");
      out.write("    ev.target.classList.toggle('checked');\n");
      out.write("  }\n");
      out.write("}, false);\n");
      out.write("\n");
      out.write("// Create a new list item when clicking on the \"Add\" button\n");
      out.write("function newElement() {\n");
      out.write("  var li = document.createElement(\"li\");\n");
      out.write("  var inputValue = document.getElementById(\"myInput\").value;\n");
      out.write("  var t = document.createTextNode(inputValue);\n");
      out.write("  li.appendChild(t);\n");
      out.write("  if (inputValue === '') {\n");
      out.write("    alert(\"You must write something!\");\n");
      out.write("  } else {\n");
      out.write("      a1[++i1]=inputValue;\n");
      out.write("    document.getElementById(\"myUL\").appendChild(li);\n");
      out.write("  }\n");
      out.write("  document.getElementById(\"myInput\").value = \"\";\n");
      out.write("\n");
      out.write("  var span = document.createElement(\"SPAN\");\n");
      out.write("  var txt = document.createTextNode(\"\\u00D7\");\n");
      out.write("  span.className = \"close\";\n");
      out.write("  span.appendChild(txt);\n");
      out.write("  li.appendChild(span);\n");
      out.write("\n");
      out.write("  for (i = 0; i < close.length; i++) {\n");
      out.write("    close[i].onclick = function() {\n");
      out.write("      var div = this.parentElement;\n");
      out.write("      div.style.display = \"none\";\n");
      out.write("    }\n");
      out.write("  }\n");
      out.write("}\n");
      out.write("function newElement2() {\n");
      out.write("  var li = document.createElement(\"li\");\n");
      out.write("  var inputValue = document.getElementById(\"myInput2\").value;\n");
      out.write("  var t = document.createTextNode(inputValue);\n");
      out.write("  li.appendChild(t);\n");
      out.write("  if (inputValue === '') {\n");
      out.write("    alert(\"You must write something!\");\n");
      out.write("  } else {\n");
      out.write("      a2[++i2]=inputValue.toString();\n");
      out.write("    document.getElementById(\"myUL2\").appendChild(li);\n");
      out.write("  }\n");
      out.write("  document.getElementById(\"myInput2\").value = \"\";\n");
      out.write("\n");
      out.write("  var span = document.createElement(\"SPAN\");\n");
      out.write("  var txt = document.createTextNode(\"\\u00D7\");\n");
      out.write("  span.className = \"close\";\n");
      out.write("  span.appendChild(txt);\n");
      out.write("  li.appendChild(span);\n");
      out.write("\n");
      out.write("  for (i = 0; i < close.length; i++) {\n");
      out.write("    close[i].onclick = function() {\n");
      out.write("      var div = this.parentElement;\n");
      out.write("      div.style.display = \"none\";\n");
      out.write("    }\n");
      out.write("  }\n");
      out.write("}\n");
      out.write("function newElement3() {\n");
      out.write("  var li = document.createElement(\"li\");\n");
      out.write("  var inputValue = document.getElementById(\"myInput3\").value;\n");
      out.write("  var t = document.createTextNode(inputValue);\n");
      out.write("  li.appendChild(t);\n");
      out.write("  if (inputValue === '') {\n");
      out.write("    alert(\"You must write something!\");\n");
      out.write("  } else {\n");
      out.write("      a3[++i3]=inputValue.toString();\n");
      out.write("    document.getElementById(\"myUL3\").appendChild(li);\n");
      out.write("  }\n");
      out.write("  document.getElementById(\"myInput3\").value = \"\";\n");
      out.write("\n");
      out.write("  var span = document.createElement(\"SPAN\");\n");
      out.write("  var txt = document.createTextNode(\"\\u00D7\");\n");
      out.write("  span.className = \"close\";\n");
      out.write("  span.appendChild(txt);\n");
      out.write("  li.appendChild(span);\n");
      out.write("\n");
      out.write("  for (i = 0; i < close.length; i++) {\n");
      out.write("    close[i].onclick = function() {\n");
      out.write("      var div = this.parentElement;\n");
      out.write("      div.style.display = \"none\";\n");
      out.write("    }\n");
      out.write("  }\n");
      out.write("}\n");
      out.write("function newElement4() {\n");
      out.write("  var li = document.createElement(\"li\");\n");
      out.write("  var inputValue = document.getElementById(\"myInput4\").value;\n");
      out.write("  var t = document.createTextNode(inputValue);\n");
      out.write("  li.appendChild(t);\n");
      out.write("  if (inputValue === '') {\n");
      out.write("    alert(\"You must write something!\");\n");
      out.write("  } else {\n");
      out.write("      a4[++i4]=inputValue.toString();\n");
      out.write("    document.getElementById(\"myUL4\").appendChild(li);\n");
      out.write("  }\n");
      out.write("  document.getElementById(\"myInput4\").value = \"\";\n");
      out.write("\n");
      out.write("  var span = document.createElement(\"SPAN\");\n");
      out.write("  var txt = document.createTextNode(\"\\u00D7\");\n");
      out.write("  span.className = \"close\";\n");
      out.write("  span.appendChild(txt);\n");
      out.write("  li.appendChild(span);\n");
      out.write("\n");
      out.write("  for (i = 0; i < close.length; i++) {\n");
      out.write("    close[i].onclick = function() {\n");
      out.write("      var div = this.parentElement;\n");
      out.write("      div.style.display = \"none\";\n");
      out.write("    }\n");
      out.write("  }\n");
      out.write("}\n");
      out.write("function newElement5() {\n");
      out.write("  var li = document.createElement(\"li\");\n");
      out.write("  var inputValue = document.getElementById(\"myInput5\").value;\n");
      out.write("  var t = document.createTextNode(inputValue);\n");
      out.write("  li.appendChild(t);\n");
      out.write("  if (inputValue === '') {\n");
      out.write("    alert(\"You must write something!\");\n");
      out.write("  } else {\n");
      out.write("      a5[++i5]=inputValue.toString();\n");
      out.write("    document.getElementById(\"myUL5\").appendChild(li);\n");
      out.write("  }\n");
      out.write("  document.getElementById(\"myInput5\").value = \"\";\n");
      out.write("\n");
      out.write("  var span = document.createElement(\"SPAN\");\n");
      out.write("  var txt = document.createTextNode(\"\\u00D7\");\n");
      out.write("  span.className = \"close\";\n");
      out.write("  span.appendChild(txt);\n");
      out.write("  li.appendChild(span);\n");
      out.write("\n");
      out.write("  for (i = 0; i < close.length; i++) {\n");
      out.write("    close[i].onclick = function() {\n");
      out.write("      var div = this.parentElement;\n");
      out.write("      div.style.display = \"none\";\n");
      out.write("    }\n");
      out.write("  }\n");
      out.write("}\n");
      out.write("function newElement6() {\n");
      out.write("  var li = document.createElement(\"li\");\n");
      out.write("  var inputValue = document.getElementById(\"myInput6\").value;\n");
      out.write("  var t = document.createTextNode(inputValue);\n");
      out.write("  li.appendChild(t);\n");
      out.write("  if (inputValue === '') {\n");
      out.write("    alert(\"You must write something!\");\n");
      out.write("  } else {\n");
      out.write("      a6[++i6]=inputValue.toString();\n");
      out.write("    document.getElementById(\"myUL6\").appendChild(li);\n");
      out.write("  }\n");
      out.write("  document.getElementById(\"myInput6\").value = \"\";\n");
      out.write("\n");
      out.write("  var span = document.createElement(\"SPAN\");\n");
      out.write("  var txt = document.createTextNode(\"\\u00D7\");\n");
      out.write("  span.className = \"close\";\n");
      out.write("  span.appendChild(txt);\n");
      out.write("  li.appendChild(span);\n");
      out.write("\n");
      out.write("  for (i = 0; i < close.length; i++) {\n");
      out.write("    close[i].onclick = function() {\n");
      out.write("      var div = this.parentElement;\n");
      out.write("      div.style.display = \"none\";\n");
      out.write("    }\n");
      out.write("  }\n");
      out.write("}\n");
      out.write("function fun(){\n");
      out.write("    Connection con;\n");
      out.write("    Statement s;\n");
      out.write("    Class.forName(\"com.mysql.jdbc.Driver\");\n");
      out.write("         \n");
      out.write("         con = DriverManager.getConnection(\"jdbc:mysql://localhost:3306/student_academy\",\"root\",\"pass\");\n");
      out.write("         if(i1>-1){\n");
      out.write("             for(int z=0;z<=i1;z++){\n");
      out.write("                 \n");
      out.write("             String s=a1[z];\n");
      out.write("             String day=\"Mon\";\n");
      out.write("             String ins_sql=\"insert into todo values('\"+rno+\"','\"+day+\"','\"+s+\"')\";\n");
      out.write("         \n");
      out.write("         s=con.createStatement();\n");
      out.write("         int i=0;\n");
      out.write("         i=s.executeUpdate(ins_sql);\n");
      out.write("         \n");
      out.write("            }\n");
      out.write("         }\n");
      out.write("    \n");
      out.write("}\n");
      out.write("</script>\n");
      out.write("\n");
      out.write("\n");
      out.write("            \n");
      out.write("   <div class=\"container\">\n");
      out.write("   <!-- header begins-->\n");
      out.write("     <div class=\"header\">\n");
      out.write("        <div class=\"head\">\n");
      out.write("           <!-- head left begins-->\n");
      out.write("             <div class=\"headleft\">\n");
      out.write("                <a href=\"index.html\" style=\"height:auto;width:auto;margin-left:-60px;\"><img src=\"images/slider/logo3.png\" /></a>\n");
      out.write("             </div>\n");
      out.write("           <!-- head left ends-->\n");
      out.write("          \n");
      out.write("          <!-- head right begins-->\n");
      out.write("          <div class=\"headright\">\n");
      out.write("          <!-- head top begins-->\n");
      out.write("           <div class=\"headtop\">\n");
      out.write("               <!-- contact begins-->\n");
      out.write("               \n");
      out.write("             <!-- contact ends-->\n");
      out.write("            <!-- contact begins-->\n");
      out.write("           <div class=\"contact\">\n");
      out.write("                <a href=\"login.html\"><img src=\"images/login.png\" /></a>\n");
      out.write("              <a href=\"index.html\"> <p>Logout</p></a> \n");
      out.write("              \n");
      out.write("          </div>\n");
      out.write("         <!-- contact ends-->\n");
      out.write("        </div>\n");
      out.write("      <!-- head top ends-->\n");
      out.write("      <!-- head bottom begins-->\n");
      out.write("        <div class=\"headbottom\">\n");
      out.write("           <!-- menu begins-->\n");
      out.write("            <div class=\"menu\">\n");
      out.write("               <ul  id=\"nav\">\n");
      out.write("                  <li style=\"  background:#015B6E;\"><a href=\"index.html\">HOME</a></li>\n");
      out.write("               <li style=\"  background:#015B6E;\"><a href=\"adminweb.html\">BACK TO PANEL</a></li>\n");
      out.write("               <li style=\"  background:#015B6E;\"><a href=\"todo2.jsp\" >UPDATE</a></li>\n");
      out.write("        </ul> \n");
      out.write("        </div>\n");
      out.write("      <!-- menu ends-->\n");
      out.write("        </div>\n");
      out.write("      <!-- head bottom ends-->\n");
      out.write("          </div>\n");
      out.write("         <!-- head right ends-->\n");
      out.write("         <div class=\"clear\"></div>\n");
      out.write("        </div>\n");
      out.write("     </div>\n");
      out.write("\n");
      out.write("       \n");
      out.write("       \n");
      out.write("       \n");
      out.write("    ");
   
       java.util.Date d = new java.util.Date();
         SimpleDateFormat ft = new SimpleDateFormat ("E");
         String date=ft.format(d); 
         System.out.println(date);
      out.write("\n");
      out.write("<div class=\"containe\">\n");
      out.write("  <div class=\"first\" style=\"");
if(date.equals("Mon")){
      out.write("background-color:lightgrey;");
}
      out.write("\"><p style=\"font-family:candara;font-size:25px;text-align:center;");

  
if(date.equals("Mon")){
      out.write("color:blue;");
}else{
      out.write("\n");
      out.write("  color:black;");
}
      out.write("text-decoration:none;\"> <b>Monday</b></p>\n");
      out.write("      <div id=\"myDIV\" class=\"header1\">\n");
      out.write("  <input type=\"text\" id=\"myInput\" placeholder=\"Title...\">\n");
      out.write("  <span onclick=\"newElement()\" class=\"addBtn\">Add</span>\n");
      out.write("</div>\n");
      out.write("      <ul id=\"myUL\">\n");
      out.write(" \n");
      out.write("\n");
      out.write("</ul>\n");
      out.write("  </div>\n");
      out.write(" \n");
      out.write("  <div class=\"first\" style=\"");
if(date.equals("Tue")){
      out.write("background-color:lightgrey;");
}
      out.write("\"><p style=\"font-family:candara;font-size:25px;text-align:center;");

 
if(date.equals("Tue")){
      out.write("color:blue;");
}else{
      out.write("\n");
      out.write("  color:black;");
}
      out.write("text-decoration:none;\"> <b>Tuesday</b></p>\n");
      out.write("    <div id=\"myDIV\" class=\"header1\">\n");
      out.write("  <input type=\"text\" id=\"myInput2\" placeholder=\"Title...\">\n");
      out.write("  <span onclick=\"newElement2()\" class=\"addBtn\">Add</span>\n");
      out.write("</div>\n");
      out.write("      <ul id=\"myUL2\">\n");
      out.write("\n");
      out.write(" \n");
      out.write("\n");
      out.write("</ul>\n");
      out.write("  </div>\n");
      out.write("  <div class=\"first\" style=\"");
if(date.equals("Wed")){
      out.write("background-color:lightgrey;");
}
      out.write("\"><p style=\"font-family:candara;font-size:25px;text-align:center;");

 
if(date.equals("Wed")){
      out.write("color:blue;");
}else{
      out.write("\n");
      out.write("  color:black;");
}
      out.write("color:black;text-decoration:none;\"> <b>Wednesday</b></p>\n");
      out.write("     <div id=\"myDIV\" class=\"header1\">\n");
      out.write("  <input type=\"text\" id=\"myInput3\" placeholder=\"Title...\">\n");
      out.write("  <span onclick=\"newElement3()\" class=\"addBtn\">Add</span>\n");
      out.write("</div>\n");
      out.write("      <ul id=\"myUL3\">\n");
      out.write("\n");
      out.write(" \n");
      out.write("\n");
      out.write("</ul>\n");
      out.write("\n");
      out.write("  </div>\n");
      out.write("  <div class=\"first\" style=\"");
if(date.equals("Thu")){
      out.write("background-color:lightgrey;");
}
      out.write("\"><p style=\"font-family:candara;font-size:25px;text-align:center;");

 
if(date.equals("Thu")){
      out.write("color:blue;");
}else{
      out.write("\n");
      out.write("  color:black;");
}
      out.write("color:black;text-decoration:none;\"> <b>Thursday</b></p>\n");
      out.write("    <div id=\"myDIV\" class=\"header1\">\n");
      out.write("  <input type=\"text\" id=\"myInput4\" placeholder=\"Title...\">\n");
      out.write("  <span onclick=\"newElement4()\" class=\"addBtn\">Add</span>\n");
      out.write("</div>\n");
      out.write("      <ul id=\"myUL4\">\n");
      out.write("\n");
      out.write(" \n");
      out.write("\n");
      out.write("</ul>\n");
      out.write("\n");
      out.write("  </div>\n");
      out.write("  <div class=\"first\" style=\"");
if(date.equals("Fri")){
      out.write("background-color:lightgrey;");
}
      out.write("\"><p style=\"font-family:candara;font-size:25px;text-align:center;");

 
if(date.equals("Fri")){
      out.write("color:blue;");
}else{
      out.write("\n");
      out.write("  color:black;");
}
      out.write("color:black;text-decoration:none;\"> <b>Friday</b></p>\n");
      out.write("    <div id=\"myDIV\" class=\"header1\">\n");
      out.write("  <input type=\"text\" id=\"myInput5\" placeholder=\"Title...\">\n");
      out.write("  <span onclick=\"newElement5()\" class=\"addBtn\">Add</span>\n");
      out.write("</div>\n");
      out.write("      <ul id=\"myUL5\">\n");
      out.write("\n");
      out.write(" \n");
      out.write("\n");
      out.write("</ul>\n");
      out.write("\n");
      out.write("  </div>\n");
      out.write("  <div class=\"first\" style=\"");
if(date.equals("Sat")){
      out.write("background-color:lightgrey;");
}
      out.write("\"><p style=\"font-family:candara;font-size:25px;text-align:center;");

 
if(date.equals("Sat")){
      out.write("color:blue;");
}else{
      out.write("\n");
      out.write("  color:black;");
}
      out.write("color:black;text-decoration:none;\"> <b>Saturday</b></p>\n");
      out.write("     <div id=\"myDIV\" class=\"header1\">\n");
      out.write("  <input type=\"text\" id=\"myInput6\" placeholder=\"Title...\">\n");
      out.write("  <span onclick=\"newElement6()\" class=\"addBtn\">Add</span>\n");
      out.write("</div>\n");
      out.write("      <ul id=\"myUL6\">\n");
      out.write("\n");
      out.write(" \n");
      out.write("\n");
      out.write("</ul>\n");
      out.write("\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("     \n");
      out.write("   </div>\n");
      out.write("     \n");
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
