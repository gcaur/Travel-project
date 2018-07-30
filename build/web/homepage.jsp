<%@page import="java.sql.*;" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Vieras</title>
    </head>
    <body>
        
        
        <form action="explore.jsp"><% mm.Conn1 c1=new mm.Conn1();%>
    
   
    <div><select name="city" required="required">
    <option value="" disabled selected>Select Any City</option>
    <%
    ResultSet rs=c1.executeQuery("select * from cities");
    while(rs.next()){%>
    <option><%=rs.getString("city_name")%></option>
    <%}%>
        </select><select name="type" required="required"><option value="" disabled selected>Select Tour Type</option><option>Honeymoon</option><option>Family Tour</option><option>Adventure Tour</option><option>Any</option></select>
       
<input type="submit" value="Explore"></div></form>
    </body>
</html>
