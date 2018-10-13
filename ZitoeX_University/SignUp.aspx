﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Register</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <link href="css/ZitoeXCustom.css" rel="stylesheet" />
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
                         <li ><a href="Default.aspx">Home</a></li>
                         <li ><a href="Login.aspx">Student ITS</a></li>
                         <li class="active"><a href="SignUp.aspx">Register</a></li>
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
             <!--Sign Up -->
            <div class="container">
             <div class="center-page" id="successMessage">
                 <label class=" col-xs-11">Username</label>
                 <div class="col-xs-11 ">
                     <asp:TextBox ID="tbname" runat="server" Class="form-control" placeholder="Username"></asp:TextBox>
                 </div>
          
                 <label class=" col-xs-11 ">Password</label>
                 <div class="col-xs-11 ">
                     <asp:TextBox ID="tbPass" runat="server" Class="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
                 </div>

                 <label class=" col-xs-11 ">Confirm Password</label>
                 <div class="col-xs-11 ">
                     <asp:TextBox ID="tbCPass" runat="server" Class="form-control" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
                 </div>

                  <label class=" col-xs-11  ">First Name</label>
                 <div class="col-xs-11 ">
                     <asp:TextBox ID="tbFName" runat="server" Class="form-control" placeholder="First name"></asp:TextBox>
                 </div>

                  <label class=" col-xs-11 ">Last Name</label>
                 <div class="col-xs-11 ">
                     <asp:TextBox ID="tbLName" runat="server" Class="form-control" placeholder="Last name"></asp:TextBox>
                 </div>

                  <label class=" col-xs-11 ">Email</label>
                 <div class="col-xs-11 ">
                     <asp:TextBox ID="tbEmail" runat="server" Class="form-control" placeholder="Email" TextMode="Email"></asp:TextBox>
                 </div>
                 <div class="col-xs-11 space-vert">
                     <asp:Button ID="btnSignUp" runat="server" Class="btn btn-success" Text="Register" OnClick="btnSignUp_Click" />
                     <asp:Label ID="lblMsg" runat="server"></asp:Label>
                     
                 </div>
                 <br />
                 <div class="col-xs-11">
                     <asp:Label ID="lblStdNo" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="Large"></asp:Label>
                 </div>
             </div>
            </div>
           
        
        </div>
             <!--Sign Up -->
        <hr class="sep" />
             <!-- Footer -->
        <footer class="footer-pos">
            <div class="container footer">
             <p class="pull-right"><a href="#">Back to Top</a></p>
            <p>&copy 2018 ZitoeX &middot; <a href="Default.aspx">Home</a> &middot; <a href="#">About</a> &middot; <a href="#">Contact</a></p>
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
