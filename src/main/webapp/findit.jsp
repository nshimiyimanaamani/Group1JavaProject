 



<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from shaka.rw/index.php?lang=English by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 28 Nov 2021 12:39:56 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Know where you can find your lost National identification documents like National ID card, passports, land documents and driving licences.">
    <meta name="keywords" content="nikaoltd ,nikao, shaka, lost documents, irangamuntu, Passports, dealting, brokarage, company, Rwanda, Lost, National Documents, ID card,cards ">

    <title>Home | Shaka</title>
   
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/pe-icons.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <!--<link href="css/animate.css" rel="stylesheet">-->
    <link href="css/style.css" rel="stylesheet">
    <link href="assets/docs.css" rel="stylesheet">
    <link href="css/flag-icon.css" rel="stylesheet">
    <script src="js/jquery.js"></script>
    
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
    <!-- <link rel="shortcut icon" href="images/ico/favicon.ico"> -->


<!-- Anti-flicker snippet (recommended)  -->
<style>.async-hide { opacity: 0 !important} </style>
<script>(function(a,s,y,n,c,h,i,d,e){s.className+=' '+y;h.start=1*new Date;
h.end=i=function(){s.className=s.className.replace(RegExp(' ?'+y),'')};
(a[n]=a[n]||[]).hide=h;setTimeout(function(){i();h.end=null},c);h.timeout=c;
})(window,document.documentElement,'async-hide','dataLayer',4000,
{'OPT-557CSFD':true});</script>

<script src="../www.googleoptimize.com/optimize843a.js?id=OPT-557CSFD" onerror="dataLayer.hide.end && dataLayer.hide.end()"></script>
<script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>

<link rel="shortcut icon" href="images/marker.png">
    <link rel="apple-touch-icon" sizes="144x144" href="images/passport.jpg">
   

   
</head><!--/head-->
<body oncontextmenu="return false;">
<div id="preloader"></div>

    <header class="navbar navbar-inverse navbar-fixed-top opaqued" role="banner">
    <div id="search-wrapper">
        <div class="container">
            <input id="search-box" placeholder="Search">
        </div>
    </div>
       <!--
        <div class="container">
          <div style="float:left;padding:0 5% 0 0;">
            <a href="index70d8.html?lang=English"><span class="flag-icon flag-icon-gb"></span> </a><br>
            <a href="index5fc5.html?lang=French"><span class="flag-icon flag-icon-fr"></span> </a><br>
            <a href="index7c3b.html?lang=Kinyarwanda"><span class="flag-icon flag-icon-rw"></span> </a>
            
          </div>
          -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand" href="indexEnglish.jsp"> <img src="images/shaka_white.png"></a>
            </div>
            <div class="collapse navbar-collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li class="active"><a href="indexEnglish.jsp">Home</a></li>
                    <li><a href="#what-we-do">Services</a></li>
                    <li><a href="#stats">Our progress</a></li>
                  <li><a href="#pricing">Pricing</a></li> 
                    <li><a href="#contact">Contact</a></li>
                   <li><a href="Post.jsp">Post it now</a></li>
                	<li><a href="findit.jsp">Find it Now</a></li>
                	
                   
                </ul>
            </div>
        </div>
    </header><!--/header-->
<!--/#main-slider-->

    
        
      <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@page import=" java.sql.Blob"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.ByteArrayOutputStream"%>
<%@page import="java.util.Base64"%>
   <%
String id = request.getParameter("userid");
String driver = "com.mysql.cj.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "shakaur";
String userid = "root";
String password = "";

try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
PreparedStatement psmnt = null;
ResultSet resultSet = null;
Blob image = null;
ResultSet resultSet2 = null;
byte[ ] imgData = null ;
String username="";
int phone=0;
String department="";
String level="";

%>
<!-- details card section starts from here -->
<section class="details-card">
    <div class="container">
        <div class="row">
         <% try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();

PreparedStatement ps =null;
PreparedStatement ps2 =null;
String sql ="select *  from lostsitems  ";
try
{
	 ps=connection.prepareStatement(sql);

	
	 resultSet=ps.executeQuery();
}
catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}

while(resultSet.next()){
	Blob blob = resultSet.getBlob("image");
    
    InputStream inputStream = blob.getBinaryStream();
    ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
    byte[] buffer = new byte[4096];
    int bytesRead = -1;
     
    while ((bytesRead = inputStream.read(buffer)) != -1) {
        outputStream.write(buffer, 0, bytesRead);                  
    }
     
    byte[] imageBytes = outputStream.toByteArray();
    String base64Image = Base64.getEncoder().encodeToString(imageBytes);
     
     
    inputStream.close();
    outputStream.close();
    String sql2 ="select *  from users where id="+resultSet.getString("posted_by");
    try
    {
    	 ps2=connection.prepareStatement(sql2);

    	
    	 resultSet2=ps2.executeQuery();
    }
    catch (SQLException e) {
    	// TODO Auto-generated catch block
    	e.printStackTrace();
    }
    while(resultSet2.next()){
    	
    	username=resultSet2.getString("full_name");
      	phone=Integer.parseInt(resultSet2.getString("phone"));
      	department=resultSet2.getString("department");
      	 level=resultSet2.getString("level");
    }
%>
            <div class="col-md-4">
                <div class="card-content">
                    <div class="card-img">
                        <img src="data:image/jpg;base64,<%=base64Image%>" alt="">
                        <span><h4><%=resultSet.getString("type") %></h4></span>
                    </div>
                    <div class="card-desc">
                        <h3><%=resultSet.getString("type") %></h3>
                        <p><b>Place found:</b><%=resultSet.getString("address") %> <br><b> found on :</b><%=resultSet.getString("date") %> <br><b>Posted By:</b><%=username %><br><b>From Department of:</b><%= department%><br><b>From level:</b><%=level %><br><b>current owner's location</b>:<%=resultSet.getString("currentLocation") %></p>
                        <a href="tel:<%=phone%>" class="btn-card">Call now:<%=phone%></a>
                              
                    </div>
                </div>
            </div>
                
  <%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
          
        </div>
    </div>
</section>
        


            <section id="contact" class="divider-section">
                <div class="container">
                
                    <div class="row">
                    
                    
                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 fade-up">
                            <h3>Contact Information</h3>
                            <p><span class="icon icon-home"></span>University of Rwanda Huye campus<br/>
                            	<span class="icon icon-home"></span>Koica Building<br/>
                                <span class="icon icon-phone"></span>+250782002755<br/>
                                <span class="icon icon-mobile"></span>xxxxx<br/>
                                <span class="icon icon-twitter"></span> <a href="#">Nshimiyimanaamani2@gmail.com</a> <br/>
                                <span class="icon icon-facebook"></span> <a href="https://www.nikao.rw/" target='blank'>  Powered by  <i>UR</i></a> <br/>
                            </p>
                        </div><!-- col -->
                    
                    	<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 fade-up">
                            <h5>Other Links</h5>
                            <p>
                                <span class="icon icon-twitter"></span> <a href="" target='blank'>Privacy policies</a> <br/>
                                <span class="icon icon-facebook"></span> <a href="" target='blank'>Terms & Conditions</a> <br/>
                            	<span class="icon icon-facebook"></span> <a href="" target='blank'>Frequently Asked Questions (FAQ)</a> <br/>
                            </p>
                        </div><!-- col -->
                    
                    
                    </div><!-- row -->
             
                </div>
            </section>    
    
        </div>




<!-- Footer -->




<style>
/* card details start  */

section{
    padding: 100px 0;
    margin-top:5%;]
}
.details-card {
	background: #ecf0f1;
}

.card-content {
	background: #ffffff;
	border: 4px;
	box-shadow: 0 2px 5px 0 rgba(0,0,0,.16), 0 2px 10px 0 rgba(0,0,0,.12);
}

.card-img {
	position: relative;
	overflow: hidden;
	border-radius: 0;
	z-index: 1;
}

.card-img img {
	width: 100%;
	height: auto;
	display: block;
}

.card-img span {
	position: absolute;
    top: 15%;
    left: 12%;
    background: #1ABC9C;
    padding: 6px;
    color: #fff;
    font-size: 12px;
    border-radius: 4px;
    -webkit-border-radius: 4px;
    -moz-border-radius: 4px;
    -ms-border-radius: 4px;
    -o-border-radius: 4px;
    transform: translate(-50%,-50%);
}
.card-img span h4{
        font-size: 12px;
        margin:0;
        padding:10px 5px;
         line-height: 0;
}
.card-desc {
	padding: 1.25rem;
}

.card-desc h3 {
	color: #000000;
    font-weight: 600;
    font-size: 1.5em;
    line-height: 1.3em;
    margin-top: 0;
    margin-bottom: 5px;
    padding: 0;
}

.card-desc p {
	color: #747373;
    font-size: 14px;
	font-weight: 400;
	font-size: 1em;
	line-height: 1.5;
	margin: 0px;
	margin-bottom: 20px;
	padding: 0;
	
}
.btn-card{
	background-color: #1ABC9C;
	color: #fff;
	box-shadow: 0 2px 5px 0 rgba(0,0,0,.16), 0 2px 10px 0 rgba(0,0,0,.12);
    padding: .84rem 2.14rem;
    font-size: .95rem;
    -webkit-transition: color .15s ease-in-out,background-color .15s ease-in-out,border-color .15s ease-in-out,-webkit-box-shadow .15s ease-in-out;
    transition: color .15s ease-in-out,background-color .15s ease-in-out,border-color .15s ease-in-out,-webkit-box-shadow .15s ease-in-out;
    -o-transition: color .15s ease-in-out,background-color .15s ease-in-out,border-color .15s ease-in-out,box-shadow .15s ease-in-out;
    transition: color .15s ease-in-out,background-color .15s ease-in-out,border-color .15s ease-in-out,box-shadow .15s ease-in-out;
    transition: color .15s ease-in-out,background-color .15s ease-in-out,border-color .15s ease-in-out,box-shadow .15s ease-in-out,-webkit-box-shadow .15s ease-in-out;
    margin: 0;
    border: 0;
    -webkit-border-radius: .125rem;
    border-radius: .125rem;
    cursor: pointer;
    text-transform: uppercase;
    white-space: normal;
    word-wrap: break-word;
    color: #fff;
}

a.btn-card {
    text-decoration: none;
    color: #fff;
}
/* End card section */
</style>


<!--Start of Tawk.to Script-->
<script type="text/javascript">
var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
(function(){
var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
s1.async=true;
s1.src='https://embed.tawk.to/5d83b4f4c22bdd393bb6bd6b/default';
s1.charset='UTF-8';
s1.setAttribute('crossorigin','*');
s0.parentNode.insertBefore(s1,s0);
})();
</script>
<!--End of Tawk.to Script-->
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-149280544-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'UA-149280544-1');
</script>
<!--<script src="https://www.googleoptimize.com/optimize.js?id=OPT-557CSFD"></script>-->

    <script src="js/plugins.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/init.js"></script>
	<script src="assets/docs.js"></script>
</body>

<!-- Mirrored from shaka.rw/index.php?lang=English by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 28 Nov 2021 12:39:56 GMT -->
</html>
