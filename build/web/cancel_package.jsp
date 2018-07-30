<%@page import ="java.sql.*;" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>TOUR AND TRAVELS</title>
    </head><script>
        function c(){
            alert("aa");
        confirm("Are you sure to Cancel this Tour");
    }
        </script>
        <body onload="c()">
        <% String uid=session.getAttribute("uid").toString();
        String pid=request.getParameter("id");
        mm.Conn1 c1=new mm.Conn1();
        ResultSet rs=c1.executeQuery("select * from booking where user_id='"+uid+"' and package_id='"+pid+"'");
        if(rs.next()){
       String gid=rs.getString("guide_id");
        int n=c1.executeUpdate("update booking set status='Canceled' where user_id='"+uid+"' and package_id='"+pid+"'");
        if(n>0){
             int nnn=c1.executeUpdate("update guides set status='Available' where guide_id='"+gid+"'");
               if(nnn>0){
            response.sendRedirect("my_booking.jsp");
               } }}%>
    </body>
</html>
