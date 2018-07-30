<%@ page import="java.sql.*;"%>
<jsp:useBean id="cn" scope="page" class="mm.Conn1" />

<% 
   String pass=request.getParameter("cpass");
   String id=session.getAttribute("uid").toString();
   String npass=request.getParameter("npass");
   ResultSet rs=cn.executeQuery("select * from users where user_id='"+id+"'");
   if(rs.next()){
       String gpass=rs.getString("user_pass");
       out.print(pass+"<br>");
          out.print(gpass+"<br>");
             out.print(id+"<br>");
      if(pass.equals(gpass))
          {
       int q=cn.executeUpdate("update users set admin_pass='"+npass+"' where user_id='"+id+"'");
       if(q>0){
          response.sendRedirect("my_account.jsp"); 
       }
      else{
           response.sendRedirect("my_account.jsp");
       }
      
        }
     else{
       response.sendRedirect("error.jsp");
        }
     }
    
  
   %>