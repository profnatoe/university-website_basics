﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ITSAdmin.aspx.cs" Inherits="ITSAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link href='css/bootstrap.css' rel='stylesheet' />
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Admin | ITS System</title>

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
                          
                         <li ><a href="SignUp.aspx">Register</a></li>
                         <li>
                             <asp:Button ID="btnSignOutt" runat="server" Class="btn btn-default navbar-btn"  Text="Sign Out" OnClick="SignOut_Click"/>
                         </li>
 
                     </ul>
                 </div>
             </div>
    </div>
        
    <div class="container">
     
    <h2 class="title2">View Botswana and Honours Data Table</h2>
    </div>
        <hr />
     
        <!-- Panel and Table for Botswana Students -->
        <div class="panel panel-default ">
            <!-- panel contents-->
            
            <div class="panel-heading title2"><strong>Botswana Students Enrolment Data</strong></div>
            <!--Table-->
           
            <asp:Repeater ID="rpterBotswana" runat="server">
                <HeaderTemplate>
                 <table class="table table-hover table-bordered ">
                <thead>
                    <tr>
                        <th>Student Number</th>
                        <th>Level Of Study</th>
                        <th>Performance: Marks</th>
                        <th>Admission Status</th>
                    </tr>
                </thead>
                <tbody>
                </HeaderTemplate>
                
                <ItemTemplate>
                     <tr>
                        <th><%# Eval("Id") %></th>
                        <td><%# Eval("LevelOfStudy") %></td>
                        <td class="text-success"><%# Eval("marks") %></td>
                        <th class="text-danger"><%# Eval("status") %></th>
                    </tr>
                </ItemTemplate>

                <FooterTemplate>
                       
                </tbody>
            </table>
                </FooterTemplate>
            </asp:Repeater>
        </div>
      
        <hr />
        <br />
        <br />
        <!-- Panel and Table for Honours Students -->
        <div class="panel panel-default">
            <!-- panel contents-->
            
            <div class="panel-heading title2 text-justify"><strong>Honours Students Enrolment Data</strong></div>
            <!--Table-->
           
            <asp:Repeater ID="rpterHonours" runat="server">
                <HeaderTemplate>
                 <table class="table table-bordered table-hover table-responsive">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>ID No.</th>
                        <th>Home Language</th>
                        <th>Email ID</th>
                        <th>Degree</th>
                        <th>Level of Study</th>
                        <th>Current Place of Study</th>
                        <th >Marks</th>
                        <th >Admission Status</th>
                    </tr>
                </thead>
                <tbody>
                </HeaderTemplate>
                
                <ItemTemplate>
                     <tr>
                        <th><%# Eval("Id") %></th>
                        <td><%# Eval("FirstName") %></td>
                        <td><%# Eval("LastName") %></td>
                        <td><%# Eval("IDNO") %></td>
                        <td><%# Eval("HomeLanguage") %></td>
                        <td><%# Eval("EmailID") %></td>
                        <td><%# Eval("Degree") %></td>
                        <td><%# Eval("LevelOfStudy") %></td>
                        <td><%# Eval("WhereStudying") %></td>
                        <td class="text-danger"><%# Eval("marks") %></td>
                        <th class="text-success"><%# Eval("status") %></th>
                    </tr>
                </ItemTemplate>

                <FooterTemplate>
                       
                </tbody>
            </table>
                </FooterTemplate>
            </asp:Repeater>
        </div>
    
    </div>
       <hr/>
     <!-- Footer -->
        <footer >
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
