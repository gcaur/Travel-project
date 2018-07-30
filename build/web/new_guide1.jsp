<%@page import="java.sql.*;" %>

<% mm.Conn1 c1=new mm.Conn1();
String gid=request.getParameter("gid");
int n=c1.executeUpdate("update guides set type='Verified' where guide_id='"+gid+"'");
if(n>0){
    response.sendRedirect("admin_page.jsp");
}
%>