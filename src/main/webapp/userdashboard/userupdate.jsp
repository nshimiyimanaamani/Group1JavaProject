<%
response.setHeader("progma","no-cache");
    response.setHeader("Expires","0");
    
  
if(session.getAttribute("username")==null)
{
	response.sendRedirect("../Post.jsp");
}

%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Shaka | userdashboard</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="css/styles.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
        <link rel="shortcut icon" href="../images/marker.png">
    </head>
    <body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand" href="../indexEnglish.jsp"> <img src="../images/shaka_white.png"></a>
            <!-- Sidebar Toggle-->
            <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
            <!-- Navbar Search-->
            <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
                <div class="input-group">
                    
                </div>
            </form>
            <!-- Navbar-->
            <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="#!">Settings</a></li>
                        <li><a class="dropdown-item" href="#!">Activity Log</a></li>
                        <li><hr class="dropdown-divider" /></li>
                        <li><a class="dropdown-item" href="logout.jsp">Logout</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            
                            <a class="nav-link" href="home.jsp">
                                <div class="sb-nav-link-icon"><i class="fas fa-plus"></i></div>
                               ADD lost material
                            </a>
                           
                              <a class="nav-link" href="listofthem.jsp">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                View Posted materials
                            </a>
                         
                            <a class="nav-link" href="index.html">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Edit Profile
                            </a>
                            
                          
                        </div>
                    </div>
                    <div class="sb-sidenav-footer">
                        <div class="small">Logged in as:</div>
                       ${username}
                    </div>
                </nav>
            </div>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">welcome ,${username}</h1>
                       
                        <ol class="breadcrumb mb-4">
                           
                         
                        </ol>
               
                        <div class="card mb-4">
                            <div class="card-header">
                                
                            </div>
                            <div class="card-body">
                             <div class="container">
                             <div class="wrapper">
                          
                             <h3>Update your account</h3>
<p>With this for update your account here!</p>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import=" java.sql.Blob"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.ByteArrayOutputStream"%>
<%@page import="java.util.Base64"%>

<%
String id = request.getParameter("id");
String driver = "com.mysql.jdbc.Driver";
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
ResultSet resultSet = null;
%>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
int userId= (int)session.getAttribute("useid");;
String sql ="select * from users where id="+userId;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
	   
%>
  <form action="update_process2.jsp?userid=<%=userId %>" method="POST" >
 
    
   
    <label for="lname">Full names</label>
    <input type="text" id="lname" name="fullname" value="<%=resultSet.getString("full_name") %>" >
    <label for="lname">E-mail</label>
    <input type="text" id="lname" name="email" value="<%=resultSet.getString("email") %>" >
   <label for="lname">Phone</label>
    <input type="text" id="lname" name="phone" value="<%=resultSet.getString("phone") %>" >
     <label for="lname">Department</label>
    <input type="text" id="lname" name="department" value="<%=resultSet.getString("department") %>" >
     <label for="lname">Level</label>
    <input type="text" id="lname" name="level" value="<%=resultSet.getString("level")%>" >
 <label for="lname">password</label>
    <input type="text" id="lname" name="password" value="<%=resultSet.getString("password")%>" >
    
    <input type="submit" value="Submit">
  </form>
  <%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</div>
</div>
                             
                            </div>
                        </div>
                    </div>
                </main>
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Your Website 2021</div>
                            <div>
                                <a href="#">Privacy Policy</a>
                                &middot;
                                <a href="#">Terms &amp; Conditions</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="js/datatables-simple-demo.js"></script>
    </body>
    <style>
    
input[type=text], select ,textarea{
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  align-content: center;
}
input[type=date] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  align-content: center;
}

input[type=submit] {
  width: 100%;
  background-color: #04AA6D;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
 
}

input[type=submit]:hover {
  background-color: #45a049;
  width:100%;
}

div.container {
  border-radius: 10px;
  background-color: #f2f2f2;
  padding: 20px;
  width:60%;
  align-content: center;
}
.wrapper{

width:50%;
margin:auto;
}
</style>
    </style>
</html>