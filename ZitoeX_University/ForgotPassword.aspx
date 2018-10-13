<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ForgotPassword.aspx.cs" Inherits="ForgotPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Forgot Password</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries-->
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
                         <li ><a href="#">About</a></li>
                         <li class="active"><a href="Login.aspx">Student ITS</a></li>
                         
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
    </div>
        <!--Content-->
        <div class="container">
            <div class="form-horizontal">
                <h2>Recover your Password</h2>
                <hr />
                <h4>Please enter your email address instructions will follow thereafter.</h4>
                <br />
                <div class="form-group">
                    <asp:Label ID="LlbEID" runat="server" CssClass="col-md-2 control-label"  Text="Email ID"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="emailID" cssClass="form-control" runat="server" TextMode="Email"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Email ID is required" ControlToValidate="emailID"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-6">
                        <asp:Button ID="Reset" cssClass="btn btn-default" runat="server" Text="Send Reset Link" OnClick="Reset_Click" />
                        <asp:Label ID="lblPassReset" runat="server"></asp:Label>
                    </div>
                </div>
            </div>
        </div>
        <!--Content-->
     <hr />
     <!-- Footer -->
        <footer>
            <div class="container">
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
