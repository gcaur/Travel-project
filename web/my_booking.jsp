<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*;" %>
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
                                <li>
                                    <a href="my_account.jsp" class="fa-gears">My Account</a>
                                </li>
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
<div class='success'>
    
    <center>   <h2>MY BOOKING</h2></center><hr>
    <br><center>
    <table cellspacing="20" cellpadding="30"><tr><th>To</th><th>Package Name</th><th>Duration</th><th>Total Person</th><th>Price(per person)</th><th>Total Price</th><th>Action</th></tr>
        <% String uid=session.getAttribute("uid").toString();
        mm.Conn1 c1=new mm.Conn1();
        ResultSet rs=c1.executeQuery("select * from booking where user_id='"+uid+"' and status='Booked'");
     
            while(rs.next()){
            %>
        
        <tr><th><%=rs.getString("city")%></th><th><%=rs.getString("package_name")%></th><th><%=rs.getString("duration")%></th><th><%=rs.getString("total_person")%></th><th><%=rs.getString("price")%></th><th><%=rs.getString("total_price")%></th><th><a href="cancel_package.jsp?id=<%=rs.getString("package_id")%>">Cancel  Tour/Package</a></th></tr>
        
        
        
        <%
        }%></table></center><br>
</div>
</div>
</div>
</div>
<div id="content-bottom-border" class="container">
            </div>
            <div id="base">
                <div class="container padding-vert-30 margin-top-60">
                    <div class="row">
                        <!-- Contact Details -->
                        <div class="col-md-4 margin-bottom-20">
                            <h3 class="margin-bottom-10">Contact Details</h3>
                            <p>
                                <span class="fa-phone">Telephone:</span>+919882919964
                                <br>
                                <span class="fa-envelope">Email:</span>
                                <a href="mailto:pundirs0019@gmail.com">pundirs0019@gmail.com</a>
                                <br>
                                <span class="fa-link">Website:</span>
                                <a href="#">www.vieras.com</a>
                            </p>
                            <p>sector 71, Mohali,
                            <br>Punjab, India</p>
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
