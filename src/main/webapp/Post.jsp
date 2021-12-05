 
<%
response.setHeader("progma","no-cache");
    response.setHeader("Expires","0");
    
  
if(session.getAttribute("username")!=null)
{
	response.sendRedirect("userdashboard/home.jsp");
}

%>
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

    
        
     
        


		<div class="wrapper fadeInDown">
  <div id="formContent">
    <!-- Tabs Titles -->

    <!-- Icon -->
    <div class="fadeIn first">
      <img src="images/marker.png" id="icon" alt="User Icon"  />
      <h1>Shaka</h1>
    </div>
<p> Login Here!</p>
<%if(request.getAttribute("status1")==null)
	{%>
	<p class="text-danger"><p>
	<%
		}
else
{
		%>
<p class="text-danger"><%=request.getAttribute("status1") %><p>
<%} %>
    <!-- Login Form -->
   <form action="login" method="POST" >
      <input type="text" id="login" class="fadeIn second" name="email" placeholder="email">
      <input type="password" id="password" class="fadeIn third" name="password" placeholder="password">
      <input type="submit" class="fadeIn fourth" value="Log In">
    </form>

    <!-- Remind Passowrd -->
    <div id="formFooter">
      <a class="underlineHover" href="signup.jsp">Sign up</a>
    </div>

  </div>
</div>
       
        
          
         

 
    
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


body {
  font-family: "Poppins", sans-serif;
  height: 100vh;
}

a {
  color: #92badd;
  display:inline-block;
  text-decoration: none;
  font-weight: 400;
}

h2 {
  text-align: center;
  font-size: 16px;
  font-weight: 600;
  text-transform: uppercase;
  display:inline-block;
  margin: 40px 8px 10px 8px; 
  color: #cccccc;
}


#icon {

width:20%;
height:20%;

}
/* STRUCTURE */

.wrapper {
  display: flex;
  align-items: center;
  flex-direction: column; 
  justify-content: center;
  width: 100%;
  min-height: 100%;
  padding: 20px;
  margin-top:2%;
}

#formContent {
  -webkit-border-radius: 10px 10px 10px 10px;
  border-radius: 10px 10px 10px 10px;
  background: #fff;
  padding: 30px;
  width: 90%;
  max-width: 450px;
  position: relative;
  padding: 0px;
  -webkit-box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3);
  box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3);
  text-align: center;
}

#formFooter {
  background-color: #f6f6f6;
  border-top: 1px solid #dce8f1;
  padding: 25px;
  text-align: center;
  -webkit-border-radius: 0 0 10px 10px;
  border-radius: 0 0 10px 10px;
}



/* TABS */

h2.inactive {
  color: black;
}

h2.active {
  color: black;
  border-bottom: 2px solid #5fbae9;
}



/* FORM TYPOGRAPHY*/

input[type=button], input[type=submit], input[type=reset]  {
  background-color: #03a84e;
  border: none;
  color: white;
  padding: 15px 80px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  text-transform: uppercase;
  font-size: 13px;
  -webkit-box-shadow: 0 10px 30px 0 rgba(95,186,233,0.4);
  box-shadow: 0 10px 30px 0 rgba(95,186,233,0.4);
  -webkit-border-radius: 5px 5px 5px 5px;
  border-radius: 5px 5px 5px 5px;
  margin: 5px 20px 40px 20px;
  -webkit-transition: all 0.3s ease-in-out;
  -moz-transition: all 0.3s ease-in-out;
  -ms-transition: all 0.3s ease-in-out;
  -o-transition: all 0.3s ease-in-out;
  transition: all 0.3s ease-in-out;
}

input[type=button]:hover, input[type=submit]:hover, input[type=reset]:hover  {
  background-color: #03a84e;
}

input[type=button]:active, input[type=submit]:active, input[type=reset]:active  {
  -moz-transform: scale(0.95);
  -webkit-transform: scale(0.95);
  -o-transform: scale(0.95);
  -ms-transform: scale(0.95);
  transform: scale(0.95);
}

input[type=text] {
  background-color: #f6f6f6;
  border: none;
  color: #0d0d0d;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 5px;
  width: 85%;
  border: 2px solid #f6f6f6;
  -webkit-transition: all 0.5s ease-in-out;
  -moz-transition: all 0.5s ease-in-out;
  -ms-transition: all 0.5s ease-in-out;
  -o-transition: all 0.5s ease-in-out;
  transition: all 0.5s ease-in-out;
  -webkit-border-radius: 5px 5px 5px 5px;
  border-radius: 5px 5px 5px 5px;
}

input[type=text]:focus {
  background-color: #fff;
  border-bottom: 2px solid #5fbae9;
}

input[type=text]:placeholder {
  color: #cccccc;
}


input[type=password] {
  background-color: #f6f6f6;
  border: none;
  color: #0d0d0d;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 5px;
  width: 85%;
  border: 2px solid #f6f6f6;
  -webkit-transition: all 0.5s ease-in-out;
  -moz-transition: all 0.5s ease-in-out;
  -ms-transition: all 0.5s ease-in-out;
  -o-transition: all 0.5s ease-in-out;
  transition: all 0.5s ease-in-out;
  -webkit-border-radius: 5px 5px 5px 5px;
  border-radius: 5px 5px 5px 5px;
}

input[type=password]:focus {
  background-color: #fff;
  border-bottom: 2px solid #5fbae9;
}

input[type=password]:placeholder {
  color: #cccccc;
}

/* ANIMATIONS */

/* Simple CSS3 Fade-in-down Animation */
.fadeInDown {
  -webkit-animation-name: fadeInDown;
  animation-name: fadeInDown;
  -webkit-animation-duration: 1s;
  animation-duration: 1s;
  -webkit-animation-fill-mode: both;
  animation-fill-mode: both;
}

@-webkit-keyframes fadeInDown {
  0% {
    opacity: 0;
    -webkit-transform: translate3d(0, -100%, 0);
    transform: translate3d(0, -100%, 0);
  }
  100% {
    opacity: 1;
    -webkit-transform: none;
    transform: none;
  }
}

@keyframes fadeInDown {
  0% {
    opacity: 0;
    -webkit-transform: translate3d(0, -100%, 0);
    transform: translate3d(0, -100%, 0);
  }
  100% {
    opacity: 1;
    -webkit-transform: none;
    transform: none;
  }
}

/* Simple CSS3 Fade-in Animation */
@-webkit-keyframes fadeIn { from { opacity:0; } to { opacity:1; } }
@-moz-keyframes fadeIn { from { opacity:0; } to { opacity:1; } }
@keyframes fadeIn { from { opacity:0; } to { opacity:1; } }

.fadeIn {
  opacity:0;
  -webkit-animation:fadeIn ease-in 1;
  -moz-animation:fadeIn ease-in 1;
  animation:fadeIn ease-in 1;

  -webkit-animation-fill-mode:forwards;
  -moz-animation-fill-mode:forwards;
  animation-fill-mode:forwards;

  -webkit-animation-duration:1s;
  -moz-animation-duration:1s;
  animation-duration:1s;
}

.fadeIn.first {
  -webkit-animation-delay: 0.4s;
  -moz-animation-delay: 0.4s;
  animation-delay: 0.4s;
}

.fadeIn.second {
  -webkit-animation-delay: 0.6s;
  -moz-animation-delay: 0.6s;
  animation-delay: 0.6s;
}

.fadeIn.third {
  -webkit-animation-delay: 0.8s;
  -moz-animation-delay: 0.8s;
  animation-delay: 0.8s;
}

.fadeIn.fourth {
  -webkit-animation-delay: 1s;
  -moz-animation-delay: 1s;
  animation-delay: 1s;
}

/* Simple CSS3 Fade-in Animation */
.underlineHover:after {
  display: block;
  left: 0;
  bottom: -10px;
  width: 0;
  height: 2px;
  background-color: #03a84e;
  content: "";
  transition: width 0.2s;
}

.underlineHover:hover {
  color: #0d0d0d;
}

.underlineHover:hover:after{
  width: 100%;
}

h1{
    color:black;
}

/* OTHERS */

*:focus {
    outline: none;
} 

#icon {
  width:20%;
}
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
