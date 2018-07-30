<%@page import="java.sql.*;" %>
<% mm.Conn1 c1=new mm.Conn1();
 String pid=request.getParameter("pid");
 String pname=request.getParameter("pname");
 String price=request.getParameter("price");
 int n=c1.executeUpdate("update package set package_name='"+pname+"',price='"+price+"' where package_no='"+pid+"'");
 if(n>0){
     response.sendRedirect("edit_package.jsp");
 }
 %>