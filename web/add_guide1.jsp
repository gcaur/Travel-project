<%@ page import="java.util.List" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.*"%>
<%@ page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@ page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@ page import="org.apache.commons.io.FilenameUtils"%>
<%@ page import="org.apache.commons.fileupload.*"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.io.File"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="cn" scope="page" class="mm.Conn1" />

<%
     String gname="";
     String city="";
     String mno="";
      String email="";
    
    
     String image="";
 %>
 <%
 boolean isMultipart = ServletFileUpload.isMultipartContent(request);
 if (!isMultipart)
 {
 }
 else
 {
 ServletFileUpload servletFileUpload = new ServletFileUpload(new DiskFileItemFactory());
 List items = null;
   try
   {
items = servletFileUpload.parseRequest(request);
   }
   catch (FileUploadException e)
   {
       e.printStackTrace();
   }
   Iterator itr = items.iterator();
   while (itr.hasNext())
	   {
   FileItem item = (FileItem) itr.next();
   if (item.isFormField())
	   {
	      String name = item.getFieldName();
		  String value = item.getString();
                  System.out.println("name "+name);
                  System.out.println("value "+value);
                   if(name.equals("name"))
                      gname=value;
                 if(name.equals("city"))
                      city=value;
                     if(name.equals("mno"))
                      mno=value;
                  if(name.equals("email"))
                      email=value;
                  if(name.equals("image"))
                      image=value;
        }
   else
	   {
    try
    {
   String itemName = item.getName();
//out.println("Actual File "+FilenameUtils.getName(itemName));
//out.println("path="+config.getServletContext().getRealPath("/"));n
image= FilenameUtils.getName(itemName);
//System.out.println("real "+real);
//System.out.println(config.getServletContext().getRealPath("/"));
File savedFile = new File(config.getServletContext().getRealPath("/")+"../../web/guides/"+image);
     item.write(savedFile);
     }
    catch (Exception e)
    {
        e.printStackTrace();
    }
   }
   }
   }
try{
  
int s1=cn.executeUpdate("insert into guides(guide_name,city_name,contact_no,email,image) values('"+gname+"','"+city+"','"+mno+"','"+email+"','"+image+"')");
if(s1==1)
{
 out.println("Successful");
response.sendRedirect("index.html");
}
else
{
    out.println("<h1>Sorry!!!something went wrong...");
    response.sendRedirect("error1.jsp");
}
 }
catch(Exception e)
{
    out.println(e);
}
   %>