<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>ZitoeX University | Computer Science</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <link href="css/ZitoeXCustom.css" rel="stylesheet" />
    <style>
        .carousel-inner > .item > img,
        .carousel-inner > .tem > a > img{
            width: 100%;
            height: 700px;
            margin: auto;
        }

    </style>

</head>
<body>
    <form id="form1" runat="server">
    <div>
         <div class="navbar navbar-default navbar-fixed-top" role="navigation">
             <div class="container">
                 <div class="navbar-header">
                     <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                         <span class="sr-only">Toogle navigation</span>
                         <span class="icon-bar"></span>
                         <span class="icon-bar"></span>
                         <span class="icon-bar"></span>
                     </button>
                     <a class="navbar-brand" href="Default.aspx"> <span> <img alt="Logo" src="images/ZitoeXLogo_NoText.png" height="30"/> </span> ZitoeX University</a>
                 </div>
                 <div class="navbar-collapse collapse">
                     <ul class="nav navbar-nav navbar-right">
                         <li class="active"><a href="Default.aspx">Home</a></li>
                         <li ><a href="Login.aspx">Student ITS</a></li>
                         <li ><a href="SignUp.aspx">Register</a></li>
                         <li class="dropdown">
                             <a href="#" class="dropdown-toggle" data-toggle="dropdown">Online Applications<b class="caret"></b></a>
                             <ul class="dropdown-menu">
                                
                                 <li class="dropdown-header">2nd Yr Students</li>
                                 <li role="separator" class="divider"></li>
                                 <li><a href="BotswanaStudExchange.aspx">Botswana Student Exchange Programme</a></li>
                                 <li role="separator" class="divider"></li>
                                 <li class="dropdown-header">3rd Yr Students</li>
                                 <li role="separator" class="divider"></li>
                                 <li><a href="HonoursApplication.aspx">Honours level Application</a></li>
                             </ul>
                         </li>
                     </ul>
                 </div>
             </div>
         </div>
        
    <!-- carousel -->
    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="images/DoubleExposure.jpg"   width="100%" height="100%"/>
      <div class="carousel-caption">
       <h3>Meet The Creator</h3>
          <p>Suprice Nando Sitoe</p>
      </div>
    </div>
    <div class="item">
      <img src="images/Carousel 02.jpg"  width="100%" height="100%"/>
      <div class="carousel-caption">
          <h3>Computer Science Laboratory</h3>
          <p>One of the finest Labs at the university. It is a dream come true for Artificial Intelligence Hungry Students.</p>
      </div>
    </div>
  
    <div class="item">
      <img src="images/maxresdefault.jpg"  width="100%" height="100%"/>
      <div class="carousel-caption">
       <h3>Conference Centre</h3>
          <p>A conference room driven by Augumented and Virtual Reality.</p>
      </div>
    </div>
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
    <!-- carousel -->
    </div>
    <br />
    <br />
     <!-- Middle Content -->
    <div class="container center">
     <div class="row">
         <div class="col-lg-4">
             <img class="img-circle" src="images/aboutUs.jpg" width="150" height="150"/>
             <h2>About </h2>
             <p>See The History</p>        
             <p><a class="btn btn-default" href="About.aspx" role="button">View &raquo;</a></p>
         </div>

         <div class="col-lg-4">
             <img class="img-circle" src="images/vision.jpg" width="150" height="150"/>
             <h2>Our Vision</h2>
             <p>Creating Future Leaders</p>
            <!-- <p><a class="btn btn-default" href="#" role="button">View &raquo;</a></p> -->
         </div>

         <div class="col-lg-4">
             <img class="img-circle" src="images/teamWork.png" width="150" height="150"/>
             <h2>Staff Issues</h2>
             <p>See the Profiles of our Awesome Lecturers</p>
             <p><a class="btn btn-default" href="StaffMembers.aspx" role="button">View &raquo;</a></p>
         </div>
         </div>
     </div>
     <!-- Middle Content -->
        <hr />
        <h2 class="title2">Meet The Students Of School Of Maths</h2>
        <br />
    <!-- Gallary Content -->
      <!-- carousel -->
    <div id="carousel-example-generic1" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic1" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic1" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic1" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="images/1.jpg" />
      <div class="carousel-caption">
       <h2 class="text-success">Chemistry Class</h2>
          <p class="text-danger" >We move beyond just HCI and HSO</p>
      </div>
    </div>
    <div class="item">
      <img src="images/5.jpg"  />
      <div class="carousel-caption">
          <h3 class="text-success">Focus</h3>
          <p class="text-danger">It is much harder than it seems, show some respect</p>
      </div>
    </div>
  
    <div class="item">
      <img src="images/9.jpg" />
      <div class="carousel-caption">
       <h3>After Algorithms Class</h3>
          <p>Students fight over confusion on recursion methods</p>
      </div>
    </div>
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic1" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic1" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
    <!-- carousel -->
    <br />
    <br />
    <!-- Gallery -->
     <!-- Footer -->
        <footer  >
            <div class="container">
             <p class="pull-right"><a href="#">Back to Top</a></p>
            <p>&copy 2018 ZitoeX &middot; <a href="Default.aspx">Home</a> &middot; <a href="About.aspx">About</a> &middot; <a href="Login.aspx">ITS Students</a></p>
        </div>
        </footer>
     <!-- Footer -->
    </form>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
