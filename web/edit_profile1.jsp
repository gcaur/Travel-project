<%@ page import="java.sql.*;"%>
<jsp:useBean id="cn" scope="page" class="mm.Conn1" />
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%  String id=request.getParameter("id");
            String uname=request.getParameter("username");
            String pass=request.getParameter("password");
            String email=request.getParameter("email");
            
                int rss=cn.executeUpdate("update users set username='"+uname+"',user_pass='"+pass+"',email='"+email+"' where user_id='"+id+"'");
            if(rss>0){
            response.sendRedirect("my_account.jsp");
            }
            
            %>
    </body>
</html>