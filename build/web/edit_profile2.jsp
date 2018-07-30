<%@page import="java.sql.*;" %>
<style>
    input[type=text] {
    border: 2px solid red;
    border-radius: 4px;
}
</style>

<style>
input[type=password] {
    border: 2px solid red;
    border-radius: 4px;
    height: 10%
}
</style>
<style>
.button {
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
}
</style>
<style>
.button2:hover {
    box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
}
</style>
  <style>
.button {
  display: inline-block;
  border-radius: 4px;
  background-color: #f4511e;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 1em;
  padding: 2.5px;
  width: 65px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 0px;
}

.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -10px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 20px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}
</style>
<style>
.button1 {
	border-radius:5px;
    position: relative;
    background-color: #4CAF50;
    border: none;
    font-size: 1em;
    color: #FFFFFF;
    padding: 3px;
    width: 75px;
    text-align: center;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
    text-decoration: none;
    overflow: hidden;
    cursor: pointer;
}

.button1:after {
    content: "";
    background: #f1f1f1;
    display: block;
    position: absolute;
    padding-top: 300%;
    padding-left: 350%;
    margin-left: -20px !important;
    margin-top: -120%;
    opacity: 0;
    transition: all 0.8s
}

.button1:active:after {
    padding: 0;
    margin: 0;
    opacity: 1;
    transition: 0s
}
</style>


<script src="css/google.js?v=3.exp&sensor=false&libraries=places"></script>
<script type="text/javascript">
        function initialize() {
        var address = (document.getElementById('my-address'));
		
        var autocomplete = new google.maps.places.Autocomplete(address);
        autocomplete.setTypes(['geocode']);
        google.maps.event.addListener(autocomplete, 'place_changed', function() {
            var place = autocomplete.getPlace();
            if (!place.geometry) {
                return;
            }

        var address = '';
        if (place.address_components) {
            address = [
                (place.address_components[0] && place.address_components[0].short_name || ''),
                (place.address_components[1] && place.address_components[1].short_name || ''),
                (place.address_components[2] && place.address_components[2].short_name || '')
                ].join(' ');
        }
      });
}

google.maps.event.addDomListener(window, 'load', initialize);
</script>
 

<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/bootstrap-theme.min.css" />



	
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<title>Tour & Travel</title>
	<meta name="description" content="HTML template for multiple tour agency, local agency, traveller, tour hosting based on Twitter Bootstrap 3.x.x">
	<meta name="keywords" content="tour agency, tour guide, travel, trip, holiday, vocation, relax, adventure, virtual tour, tour planner">
	<meta name="author" content="crenoveative">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	

	<link rel="apple-touch-icon" sizes="144x144" href="">
	<link rel="apple-touch-icon" sizes="114x114" href="">
	<link rel="apple-touch-icon" sizes="72x72" href="">
	<link rel="apple-touch-icon" href="">
	<link rel="shortcut icon" href="">

	<!-- CSS Plugins -->
	<link rel="stylesheet" type="text/css" href="pics/bootstrap.min.css" media="screen">	
	<link href="pics/main.css" rel="stylesheet">
	<link href="pics/plugin.css" rel="stylesheet">

	<!-- CSS Custom -->
	<link href="pics/style.css" rel="stylesheet">
	
	<!-- Add your style -->
	<link href="pics/your-style.css" rel="stylesheet">

	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
	
</head>

<body class="home transparent-header" bgcolor="#E6E6FA">

	<div id="introLoader" class="introLoading introLoader gifLoader theme-dark bubble" style="display: none;"><div id="introLoaderSpinner" class="gifLoaderInner" style=""></div></div>

	<!-- start Container Wrapper -->
	
<div class="container-wrapper">

		<!-- start Header -->
		
<header id="header">

			<!-- start Navbar (Header) -->
<nav class="navbar navbar-default navbar-fixed-top navbar-sticky-function navbar-arrow navbar-sticky">

<div class="container">
					

    
    
    
  <div style="float:left">Need Help?  <a href="contact.jsp">Contact Us</a></div>  
    
       

<form>
        <div style="float:right">

        
        <a href="logout.jsp" style="float:right;height:2%;clear:both;font-size:15px">Logout</a>
        </div>
</form>
 <br />
  

    
    
   <div class="logo-wrapper">
<div class="logo">
<a href="#"><img src="pics/logo-white.png" alt="Logo"></a>
</div>
</div> 
    
    
					
<div id="navbar" class="navbar-nav-wrapper">
					
<ul class="nav navbar-nav" id="responsive-menu">						
<li><a href="homepage1.jsp">Home</a></li>
<li><a href="in_explore.jsp">Offered Tour</a></li>

<li><a href='my_account.jsp'>My Account</a></li>
<li><a href="contact.jsp">Contact Us</a></li>


</ul>
</div><!--/.nav-collapse -->

<div class="nav-mini-wrapper">
<ul class="nav-mini">
<li><a data-toggle="modal" href="#"><i class="icon-user-follow" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="sign up"></i></a></li>
<li><a data-toggle="modal" href="#"><i class="icon-login" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="login"></i> </a></li>
</ul>
</div>
</div>
</nav>
</header>

<div align="center" style="background:darkcyan; color:green; text-shadow: 0 0 5px #fff, 0 0 10px #fff, 0 0 15px #fff, 0 0 20px #ff2d95, 0 0 30px #ff2d95, 0 0 40px #ff2d95, 0 0 50px #ff2d95, 0 0 75px #ff2d95; letter-spacing: 2px; line-height: 25px; padding-top:9%; font-size: 1.5 em; ">
    <span style="text-decoartion: blink;">
       <strong>Travel makes one modest. You see what a tiny place you occupy in the world.  - Gustave Flaubert</strong>
    </span>
</div>
<style>
div { width: 100%; }
.success { background-color: #ccffcc; }
</style>
<div style="height:100%;" class='success'>

<jsp:useBean id="cn" scope="page" class="mm.Conn1" />
<%
  String uname=(String)session.getAttribute("uname");
  String pass=(String)session.getAttribute("password");
 
if((uname.equals("") || uname.equals(null)) && (pass.equals("") || pass.equals(null))){
    response.sendRedirect("Login_page.html");
}
else{
%>

    



		
		

<script>
function check()
{
    
    if(f1.username.value=="" || f1.username.value==null)
    {
        alert("Enter Username");
        return;
    }
    if(f1.password.value=="" || f1.password.value==null)
    {
        alert("Enter Password");
        return;
    }
   
    if(f1.email.value=="" || f1.email.value==null){
        alert("Enter a Valid E-mail id");
    }
    n=f1.email.value;//abc
    s=n.indexOf("@");
    if(s==-1)
    {
        alert("must  include @");
        return;
    } 
    s=n.indexOf(".com");
    if(s==-1)
    {
        alert("enter  email  properly");
        return;
    }
   
    /*if(f1.image.value="" || f1.image.value=null){
        alert("Please Select an Image");
    }*/
    f1.submit();

}

</script>
<br><br><div>
                    <center><h2>EDIT YOUR PROFILE</h2></center>
                   <br><form action="edit_profile21.jsp" method="post" name="f1">
       <%  
           String username=(String)session.getAttribute("uname");
           String password=(String)session.getAttribute("password");
            ResultSet rs=cn.executeQuery("select * from users where admin_name='"+uname+"' and admin_pass='"+pass+"' ");
          if(rs.next()){
           
           %>
           <h2><center> <table><tr><td>ID</td><td><input type="text" name="id" value="<%=rs.getInt("user_id")%>" required="true" readonly="readonly"></td></tr>
               <tr><td>Username</td><td><input type="text" name="username" value="<%=rs.getString("admin_name")%>" required="true"></td></tr>
               <tr><td>Password</td><td><input type="text" name="password" value="<%=rs.getString("admin_pass")%>" required="true"></td></tr>
               <tr><td>Email_id</td><td><input type="text" name="email" value="<%=rs.getString("email")%>" required="true"></td></tr>
              
           <%}else{
            %>
                  Something went Wrong ......  <%}%>
               <tr><td colspan="2"><center><input type="button" value="Update" onclick="check()"></center></td></tr>
           </table>    </center></h2>       
                    </form> 
    </body>
</html>
	
<%}%></div></div>
        <style>
    td {
    height: 50px;
    vertical-align: top;
}
    table {
    width: 50%;
    align:center;
}

th {
    height: 50px;
}


table, th, td {
   
}</style>