<%@page import="java.sql.*;" %>

       <% mm.Conn1 c1=new mm.Conn1();
       String city=request.getParameter("city");
       ResultSet r=c1.executeQuery("select * from cities where city_name='"+city+"'");
       if(r.next()){
           String id=r.getString("city_id");
       
       String place=request.getParameter("place");
     int rs=c1.executeUpdate("insert into places(place_name,city_id) values('"+place+"','"+id+"')");
      if(rs>0){
          out.print("<script>alert('City Added');</script>");
          
          response.sendRedirect("add_city.jsp");
      }}
      %>
    