<%@page import="java.sql.*;" %>
<% mm.Conn1 c1 = new mm.Conn1();
    String id = request.getParameter("id");
    String pname = request.getParameter("pname");
    int price = Integer.parseInt(request.getParameter("price"));
    String sdate = request.getParameter("sdate");
    int person = Integer.parseInt(request.getParameter("person"));
    String uid = session.getAttribute("uid").toString();
    String uname = session.getAttribute("uname").toString();
    String city = request.getParameter("city");
    String email = session.getAttribute("email").toString();
    String type = request.getParameter("type");
    String duration = request.getParameter("duration");
    int total_price = 0;
    for (int i = 0; i < person; i++) {
        total_price = total_price + price;
    }
    session.setAttribute("pid", id);
%>
<input type="hidden" name="uid" value="<%=uid%>">
<input type="hidden" name="pid" value="<%=id%>">
<%int a = c1.executeUpdate("insert into booking(package_id,package_name,user_id,username,user_email,price,start_date,total_person,total_price,type,duration,status,city) values('" + id + "','" + pname + "','" + uid + "','" + uname + "','" + email + "','" + price + "','" + sdate + "','" + person + "','" + total_price + "','" + type + "','" + duration + "','Booked','" + city + "')");
    if (a > 0) {
        // out.print("case 1");
        String s = "Available";
        System.out.println(city);
        System.out.println(s);
        //ResultSet r=c1.executeQuery("select * from guides where city_name='"+city+"' and status='"+s+"'");
        Connection con = DriverManager.getConnection("jdbc:mysql:///tourandtravel", "root", "123");
        PreparedStatement pss = con.prepareStatement("update guides set status=? where city_name=?");
        pss.setString(1, "Available");
        pss.setString(2, city);
        pss.execute();
        PreparedStatement ps = con.prepareStatement("select * from guides where city_name=? and status=?");
        ps.setString(1, city);
        ps.setString(2, s);
        ResultSet r = ps.executeQuery();

        System.out.println(r);
        // out.print("case 2");
        if (r.next()) {
            String gid = r.getString("guide_id");
            String gname = r.getString("guide_name");
            String gcontact = r.getString("contact_no");
            String gmail = r.getString("email");
            System.out.print(gid);
            System.out.print(gname);
            System.out.print(gcontact);
            System.out.print(gmail);
            int nn = c1.executeUpdate("update booking set guide_id='" + gid + "',guide_name='" + gname + "',guide_email='" + gmail + "' where package_id='" + id + "' and user_id='" + uid + "'");
            //  out.print("case 4");
            if (nn > 0) {
                int nnn = c1.executeUpdate("update guides set status='Booked' where guide_id='" + gid + "'");
                if (nnn > 0) {
                    //  out.print("case 5");
                    response.sendRedirect("send_mail.jsp");
                    // out.print("helloo");
                    // response.sendRedirect("booking_success.jsp");
                }
            } else {
                out.print("hello");
            }

        } else {
            System.out.println("abcjkneekj");
        }

    } else {
        out.print("hello");
    }
%>