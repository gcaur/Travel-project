

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="java.sql.*;" %>
<!DOCTYPE html>
<html lang="en">
    <!--<![endif]-->
    <head>
        <!-- Title -->
        <title>Vieras</title>
        <!-- Meta -->
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <meta name="description" content="">
        <meta name="author" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
        <!-- Favicon -->
        <link href="favicon.ico" rel="shortcut icon">
        <!-- Bootstrap Core CSS -->
        <link rel="stylesheet" href="assets/css/bootstrap.css" rel="stylesheet">
        <!-- Template CSS -->
        <link rel="stylesheet" href="assets/css/animate.css" rel="stylesheet">
        <link rel="stylesheet" href="assets/css/font-awesome.css" rel="stylesheet">
        <link rel="stylesheet" href="assets/css/nexus.css" rel="stylesheet">
        <link rel="stylesheet" href="assets/css/responsive.css" rel="stylesheet">
        <link rel="stylesheet" href="assets/css/custom.css" rel="stylesheet">
        <!-- Google Fonts-->
        <link href="http://fonts.googleapis.com/css?family=Roboto+Condensed:400,300" rel="stylesheet" type="text/css">
        <link href="http://fonts.googleapis.com/css?family=PT+Sans" type="text/css" rel="stylesheet">
        <link href="http://fonts.googleapis.com/css?family=Roboto:400,300" rel="stylesheet" type="text/css">
    </head>
    
<script src="css/google.js?v=3.exp&sensor=false&libraries=places"></script>
  <body>
        <div id="body-bg">
            <ul class="social-icons pull-right hidden-xs">
                <li class="social-rss">
                    <a href="#" target="_blank" title="RSS"></a>
                </li>
                <li class="social-twitter">
                    <a href="#" target="_blank" title="Twitter"></a>
                </li>
                <li class="social-facebook">
                    <a href="#" target="_blank" title="Facebook"></a>
                </li>
                <li class="social-googleplus">
                    <a href="#" target="_blank" title="GooglePlus"></a>
                </li>
            </ul>
            <div id="pre-header" class="container" style="height: 40px">
                <!-- Spacing above header -->
            </div>
            <div id="header">
                <div class="container">
                    <div class="row">
                        <!-- Logo -->
                        <div class="logo">
                            <a href="index.html" title="">
                                <img src="assets/img/logo.png" alt="Logo" />
                            </a>
                        </div>
                        <!-- End Logo -->
                    </div>
                </div>
            </div>
            <!-- Top Menu -->
            <div id="hornav" class="container no-padding">
                <div class="row">
                    <div class="col-md-12 no-padding">
                        <div class="text-center visible-lg">
                            <ul id="hornavmenu" class="nav navbar-nav">
                                <li>
                                    <a href="homepage1.jsp" class="fa-home">Home</a>
                                </li>
                                <li><a href="in_explore.jsp" class="fa-th">Offered Tour</a></li>
                                <li>
                                    <a href="contact.jsp" class="fa-comment">Contact</a>
                                </li>
                                <li>
                                    <a href="logout.jsp" class="fa-comment">Log Out</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Top Menu -->
            <div id="post_header" class="container" style="height: 40px">
                <!-- Spacing below header -->
            </div>
            <div id="content-top-border" class="container">
            </div>
            <!-- === END HEADER === -->
            <!-- === BEGIN CONTENT === -->
           <div id="content">
                <div class="container background-white">
                    <div class="row margin-vert-30">
<div style="height:800%;" class='success'>
<%mm.Conn1 c1=new mm.Conn1();
    String city=request.getParameter("city");
    String type=request.getParameter("type");
    if(!type.equals("Any")){
         
    
    ResultSet rrs=c1.executeQuery("select * from package where city_name='"+city+"' and type='"+type+"'");
    if(rrs.next()){
    
     if(city.equals("KASHMIR")){

%>

    <center><h1>PACKAGES FOR <%out.print(city);%></h1></center>
    <%
    String c_id;
   
    ResultSet rs=c1.executeQuery("select * from cities where city_name='"+city+"'");
    if(rs.next()){%>
    <input type="hidden" name='city' value='<%=rs.getString("city_id")%>'>
    <div> <img src="images/delhi.jpg height="250" width="100%"> </div>
    
     <%  c_id=rs.getString("city_id");
        
        
    }
 if(type.equals("Any")){
      %> <hr>
    
    
      <center> <table cellspacing="10" cellpadding="10">
            <% ResultSet r1=c1.executeQuery("select * from package where city_name='"+city+"' ");
            while(r1.next()){
            %> <tr><th><img src=images/<%=r1.getString("image")%> width="300" height="300"></th><td>PACKAGE DETAILS :<BR>Name :<%=r1.getString("package_name")%><br>Starting From : Rs. <%=r1.getString("price")%> (single person only)<br>
                        Package Type : <%=r1.getString("type")%> <br> Tour Duration : <%=r1.getString("duration")%></td></tr><tr><th colspan="2"><a href="book_tour.jsp?id=<%=r1.getString("package_no")%>">Book This Tour</a> | <a href="explore_tour.jsp?id=<%=r1.getString("package_no")%>">Explore This Tour</a></th></tr>
                <%}%>
          </table></center>
        <%
    }else if(type.equals("Honeymoon") || type.equals("Family Tour") || type.equals("Adventure Tour")){
    %>
    <hr>
    
    
    <center> <table>
            <% ResultSet r=c1.executeQuery("select * from package where city_name='"+city+"' and type='"+type+"' ");
            while(r.next()){
            %> <tr><th><img src=images/<%=r.getString("image")%> width="300" height="300"></th><td>PACKAGE DEATILS :<BR>Name :<%=r.getString("package_name")%><br>Starting From : Rs. <%=r.getString("price")%> (single person only)<br>
                        Package Type : <%=r.getString("type")%> <br> Tour Duration : <%=r.getString("duration")%></td></tr><tr><th colspan="2"><a href="book_tour.jsp?id=<%=r.getString("package_no")%>">Book This Tour</a> | <a href="explore_tour.jsp?id=<%=r.getString("package_no")%>">Explore This Tour</a></th></tr>
                <%}}else{
                        %><center><h1>No Package Available</h1></center><%
}%>
        </table></center>
       <%} else if(city.equals("HIMACHAL")){%>
<center><h1>PACKAGES FOR <%out.print(city);%></h1></center>
    <%
    String c_id;
   
    ResultSet rs=c1.executeQuery("select * from cities where city_name='"+city+"'");
    if(rs.next()){%>
<input type="hidden" name='city' value='<%=rs.getString("city_id")%>'>
    <div> <img src=images/himachal.jpg height="250" width="100%"> </div>
    
     <%  c_id=rs.getString("city_id");
        
        
    }
 if(type.equals("Any")){
      %> <hr>
    
      <center>
        <table cellspacing="10" cellpadding="10">
            <% ResultSet r1=c1.executeQuery("select * from package where city_name='"+city+"' ");
            while(r1.next()){
            %> <tr><th><img src=images/<%=r1.getString("image")%> width="300" height="300"></th><td>PACKAGE DETAILS :<BR>Name :<%=r1.getString("package_name")%><br>Starting From : Rs. <%=r1.getString("price")%> (single person only)<br>
                        Package Type : <%=r1.getString("type")%> <br> Tour Duration : <%=r1.getString("duration")%></td></tr><tr><th colspan="2"><a href="book_tour.jsp?id=<%=r1.getString("package_no")%>">Book This Tour</a> | <a href="explore_tour.jsp?id=<%=r1.getString("package_no")%>">Explore This Tour</a></th></tr>
                <%}%>
        </table></center>
        <%
    }else if(type.equals("Honeymoon") || type.equals("Family Tour") || type.equals("Adventure Tour")){
    %>
    <hr>
    
    <center>
        <table>
            <% ResultSet r=c1.executeQuery("select * from package where city_name='"+city+"' and type='"+type+"' ");
            while(r.next()){
            %> <tr><th><img src=images/<%=r.getString("image")%> width="300" height="300"></th><td>PACKAGE DEATILS :<BR>Name :<%=r.getString("package_name")%><br>Starting From : Rs. <%=r.getString("price")%> (single person only)<br>
                        Package Type : <%=r.getString("type")%> <br> Tour Duration : <%=r.getString("duration")%></td></tr><tr><th colspan="2"><a href="book_tour.jsp?id=<%=r.getString("package_no")%>">Book This Tour</a> | <a href="explore_tour.jsp?id=<%=r.getString("package_no")%>">Explore This Tour</a></th></tr>
                <%}}else{
                        %><center><h1>No Package Available</h1></center><%
}%>
        </table></center>
       <%} else if(city.equals("DELHI")){%>
       <center><h1>PACKAGES FOR <%out.print(city);%></h1></center>
    <%
    String c_id;
   
    ResultSet rs=c1.executeQuery("select * from cities where city_name='"+city+"'");
    if(rs.next()){%>
       <input type="hidden" name='city' value='<%=rs.getString("city_id")%>'>
       <div> <img src=images/redfor.jpg height="200" width="100%"> </div>
    
     <%  c_id=rs.getString("city_id");
        
        
    }
 if(type.equals("Any")){
      %> <hr>
    
      <center>
        <table cellspacing="10" cellpadding="10">
            <% ResultSet r1=c1.executeQuery("select * from package where city_name='"+city+"' ");
            while(r1.next()){
            %> <tr><th><img src=images/<%=r1.getString("image")%> width="300" height="300"></th>
                <td>PACKAGE DETAILS :<BR>Name :<%=r1.getString("package_name")%><br>Starting From : Rs. <%=r1.getString("price")%> (single person only)<br>
                        Package Type : <%=r1.getString("type")%> <br> Tour Duration : <%=r1.getString("duration")%></td></tr><tr><th colspan="2"><a href="book_tour.jsp?id=<%=r1.getString("package_no")%>">Book This Tour</a> | <a href="explore_tour.jsp?id=<%=r1.getString("package_no")%>">Explore This Tour</a></th></tr>
                <%}%>
        </table></center>
        <%
    }else if(type.equals("Honeymoon") || type.equals("Family Tour") || type.equals("Adventure Tour")){
    %>
    <hr>
    
    <center>
        <table>
            <% ResultSet r=c1.executeQuery("select * from package where city_name='"+city+"' and type='"+type+"' ");
            while(r.next()){
            %> <tr><th><img src=images/<%=r.getString("image")%> width="300" height="300"></th><td>PACKAGE DEATILS :<BR>Name :<%=r.getString("package_name")%><br>Starting From : Rs. <%=r.getString("price")%> (single person only)<br>
                        Package Type : <%=r.getString("type")%> <br> Tour Duration : <%=r.getString("duration")%></td></tr><tr><th colspan="2"><a href="book_tour.jsp?id=<%=r.getString("package_no")%>">Book This Tour</a> | <a href="explore_tour.jsp?id=<%=r.getString("package_no")%>">Explore This Tour</a></th></tr>
                <%}}else{
                        %><center><h1>No Package Available</h1></center><%
}%>
        </table></center>
       <%} else{%>
       <center><h1>PACKAGES FOR <%out.print(city);%></h1></center>
    <%
    String c_id;
   
    ResultSet rs=c1.executeQuery("select * from cities where city_name='"+city+"'");
    if(rs.next()){%>
       <input type="hidden" name='city' value='<%=rs.getString("city_id")%>'>
    <div> <img src=images/chandigarh.jpg height="250" width="100%"> </div>
    
     <%  c_id=rs.getString("city_id");
        
        
    }
 if(type.equals("Any")){
      %> <hr>
    
      <center>
        <table cellspacing="10" cellpadding="10">
            <% ResultSet r1=c1.executeQuery("select * from package where city_name='"+city+"' ");
            while(r1.next()){
            %> <tr><th><img src=images/<%=r1.getString("image")%> width="300" height="300"></th><td>PACKAGE DETAILS :<BR>Name :<%=r1.getString("package_name")%><br>Starting From : Rs. <%=r1.getString("price")%> (single person only)<br>
                        Package Type : <%=r1.getString("type")%> <br> Tour Duration : <%=r1.getString("duration")%></td></tr><tr><th colspan="2"><a href="book_tour.jsp?id=<%=r1.getString("package_no")%>">Book This Tour</a> | <a href="explore_tour.jsp?id=<%=r1.getString("package_no")%>">Explore This Tour</a></th></tr>
                <%}%>
        </table></center>
        <%
    }else if(type.equals("Honeymoon") || type.equals("Family Tour") || type.equals("Adventure Tour")){
    %>
    <hr>
    
    <center>
        <table>
            <% ResultSet r=c1.executeQuery("select * from package where city_name='"+city+"' and type='"+type+"' ");
            while(r.next()){
            %> <tr><th><img src=images/<%=r.getString("image")%> width="300" height="300"></th><td>PACKAGE DEATILS :<BR>Name :<%=r.getString("package_name")%><br>Starting From : Rs. <%=r.getString("price")%> (single person only)<br>
                        Package Type : <%=r.getString("type")%> <br> Tour Duration : <%=r.getString("duration")%></td></tr><tr><th colspan="2"><a href="book_tour.jsp?id=<%=r.getString("package_no")%>">Book This Tour</a> | <a href="explore_tour.jsp?id=<%=r.getString("package_no")%>">Explore This Tour</a></th></tr>
                <%}}else{
                        %><center><h1>No Package Available</h1></center><%
}%>
        </table></center>
        
<%}}else{%><center><h1>No Package Available. Please Search Other Options  </h1></center><br>
<center><a href='homepage1.jsp'>Return To Homepage</a></center>
<%
}}else{%>
 <center><h1>PACKAGES FOR <%out.print(city);%></h1></center>
    <%
    String c_id;
   
    ResultSet rs=c1.executeQuery("select * from cities where city_name='"+city+"'");
    if(rs.next()){
 if(city.equals("KASHMIR")){   
%>
 <div> <img src=images/kashmir.jpg height="250" width="100%"> </div><br><br>
    <%}else if(city.equals("HIMACHAL")){%>
 <div> <img src=images/himachal.jpg height="250" width="100%"> </div><br><br>
 <%}else if(city.equals("DELHI")){%>
 <div> <img src=images/redfor.jpg height="250" width="100%"> </div><br><br><%}else{%>
 <div> <img src=images/chandigarh.jpg height="250" width="100%"> </div><br><br><%}%>
 
 
            <% ResultSet r1=c1.executeQuery("select * from package where city_name='"+city+"' ");
            while(r1.next()){
            %><center><table cellspacing="10" cellpadding="10"> <tr><th><img src=images/<%=r1.getString("image")%> width="500" height="500"></th><td><h3>PACKAGE DETAILS :<BR>Name :</h3><h4><%=r1.getString("package_name")%></h4><br><h3>Starting From :</h3><h4> Rs. <%=r1.getString("price")%> (single person only)</h4><br>
                            <h3>  Package Type : </h3><h4><%=r1.getString("type")%> </h4><br> <h3>Tour Duration : </h3><h4><%=r1.getString("duration")%></h4></td></tr><tr><th colspan="2"><center><a href="book_tour.jsp?id=<%=r1.getString("package_no")%>">Book This Tour</a> | <a href="explore_tour.jsp?id=<%=r1.getString("package_no")%>">Explore This Tour</a></center></th></tr>
                </table></center><br><br>  <%}%>
                
                <center><h3><a href='homepage1.jsp'>Return To Homepage</a></h3></center><br>
<%
}}%></body></div>

 <div id="content-bottom-border" class="container">
            </div>
            <div id="base">
                <div class="container padding-vert-30 margin-top-60">
                    <div class="row">
                        <!-- Contact Details -->
                        <div class="col-md-4 margin-bottom-20">
                            <h3 class="margin-bottom-10">Contact Details</h3>
                            <p>
                                <span class="fa-phone">Telephone:</span>(212)888-77-88
                                <br>
                                <span class="fa-envelope">Email:</span>
                                <a href="mailto:info@joomla51.com">info@joomla51.com</a>
                                <br>
                                <span class="fa-link">Website:</span>
                                <a href="http://www.joomla51.com">www.joomla51.com</a>
                            </p>
                            <p>The Dunes, Top Road,
                                <br>Strandhill,
                                <br>Co. Sligo,
                                <br>Ireland</p>
                        </div>
                        <!-- End Contact Details -->
                        <!-- Sample Menu -->
                        <div class="col-md-3 margin-bottom-20">
                            <h3 class="margin-bottom-10">Sample Menu</h3>
                            <ul class="menu">
                                <li>
                                    <a class="fa-tasks" href="#">Placerat facer possim</a>
                                </li>
                                <li>
                                    <a class="fa-users" href="#">Quam nunc putamus</a>
                                </li>
                                <li>
                                    <a class="fa-signal" href="#">Velit esse molestie</a>
                                </li>
                                <li>
                                    <a class="fa-coffee" href="#">Nam liber tempor</a>
                                </li>
                            </ul>
                            <div class="clearfix"></div>
                        </div>
                        <!-- End Sample Menu -->
                        <div class="col-md-1"></div>
                        <!-- Disclaimer -->
                        <div class="col-md-3 margin-bottom-20 padding-vert-30 text-center">
                            <h3 class="color-gray margin-bottom-10">Join our Newsletter</h3>
                            <p>
                                Sign up for our newsletter for all the
                                <br>latest news and information
                            </p>
                            <input type="email">
                            <br>
                            <button class="btn btn-primary btn-lg margin-top-20" type="button">Subscribe</button>
                        </div>
                        <!-- End Disclaimer -->
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
            <!-- Footer Menu -->
            <div id="footer">
                <div class="container">
                    <div class="row">
                        <div id="footermenu" class="col-md-8">
                            <ul class="list-unstyled list-inline">
                                <li>
                                    <a href="#" target="_blank">Sample Link</a>
                                </li>
                                <li>
                                    <a href="#" target="_blank">Sample Link</a>
                                </li>
                                <li>
                                    <a href="#" target="_blank">Sample Link</a>
                                </li>
                                <li>
                                    <a href="#" target="_blank">Sample Link</a>
                                </li>
                            </ul>
                        </div>
                        <div id="copyright" class="col-md-4">
                            <p class="pull-right">(c) 2014 Your Copyright Info</p>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Footer Menu -->
            <!-- JS -->
            <script type="text/javascript" src="assets/js/jquery.min.js" type="text/javascript"></script>
            <script type="text/javascript" src="assets/js/bootstrap.min.js" type="text/javascript"></script>
            <script type="text/javascript" src="assets/js/scripts.js"></script>
            <!-- Isotope - Portfolio Sorting -->
            <script type="text/javascript" src="assets/js/jquery.isotope.js" type="text/javascript"></script>
            <!-- Mobile Menu - Slicknav -->
            <script type="text/javascript" src="assets/js/jquery.slicknav.js" type="text/javascript"></script>
            <!-- Animate on Scroll-->
            <script type="text/javascript" src="assets/js/jquery.visible.js" charset="utf-8"></script>
            <!-- Sticky Div -->
            <script type="text/javascript" src="assets/js/jquery.sticky.js" charset="utf-8"></script>
            <!-- Slimbox2-->
            <script type="text/javascript" src="assets/js/slimbox2.js" charset="utf-8"></script>
            <!-- Modernizr -->
            <script src="assets/js/modernizr.custom.js" type="text/javascript"></script>
            <!-- End JS -->
    </body>
</html>
<!-- === END FOOTER === -->