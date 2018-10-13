<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StaffMembers.aspx.cs" Inherits="StaffMembers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href='css/bootstrap.css' rel='stylesheet' />
    <link href='css/rotating-card.css' rel='stylesheet' />

    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />

    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">

    <script src="https://google-code-prettify.googlecode.com/svn/loader/run_prettify.js"></script>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <link href="css/ZitoeXCustom.css" rel="stylesheet" />

    
</head>
<body>
    <form id="form1" runat="server">
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
    <div class="container">
    <div class="row">
        <h2 class="title">
            Meet Computer Science Staff Members
        </h2>
        <div class="col-sm-10 col-sm-offset-1">
         <div class="col-md-4 col-sm-6">
             <div class="card-container">
                <div class="card">
                    <div class="front">
                        <div class="cover">
                            <img src="images/rotating_card_thumb2.png"/>
                        </div>
                        <div class="user">
                            <img class="img-circle" src="images/rotating_card_profile3.png"/>
                        </div>
                        <div class="content">
                            <div class="main">
                                <h3 class="name">Dr. Collins Chibaya</h3>
                                <p class="profession">Senior Lecturer</p>
                                <p class="text-center">"That int not doing it for you? <br />Let's design our own data structure"</p>
                            </div>
                            <div class="footer">
                                <i class="fa fa-mail-forward"></i> Auto Rotation
                            </div>
                        </div>
                    </div> <!-- end front panel -->
                    <div class="back">
                        <div class="header">
                            <h5 class="motto">"To be or not to be, this is my awesome motto!"</h5>
                        </div>
                        <div class="content">
                            <div class="main">
                                <h4 class="text-center">Job Description</h4>
                                <p class="text-center">Java | Data Structures | Software Engineering </p>

                                <div class="stats-container">
                                    <div class="stats">
                                        <h4>235</h4>
                                        <p>
                                            Followers
                                        </p>
                                    </div>
                                    <div class="stats">
                                        <h4>114</h4>
                                        <p>
                                            Following
                                        </p>
                                    </div>
                                    <div class="stats">
                                        <h4>35</h4>
                                        <p>
                                            Projects
                                        </p>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <div class="footer">
                            <div class="social-links text-center">
                                <a href="#" class="facebook"><i class="fa fa-facebook fa-fw"></i></a>
                                <a href="#" class="google"><i class="fa fa-google-plus fa-fw"></i></a>
                                <a href="#" class="twitter"><i class="fa fa-twitter fa-fw"></i></a>
                            </div>
                        </div>
                    </div> <!-- end back panel -->
                </div> <!-- end card -->
            </div> <!-- end card-container -->
        </div> <!-- end col sm 3 -->
<!--         <div class="col-sm-1"></div> -->
        <div class="col-md-4 col-sm-6">
             <div class="card-container">
                <div class="card">
                    <div class="front">
                        <div class="cover">
                            <img src="images/rotating_card_thumb.png"/>
                        </div>
                        <div class="user">
                            <img class="img-circle" src="images/rotating_card_profile2.png"/>
                        </div>
                        <div class="content">
                            <div class="main">
                                <h3 class="name">Madzima K</h3>
                                <p class="profession">Lecturer</p>
                                <p class="text-center">"Bits moving slower? <br\>I'm in that two seat Lambo"</p>
                            </div>
                            <div class="footer">
                                <i class="fa fa-mail-forward"></i> Auto Rotation
                            </div>
                        </div>
                    </div> <!-- end front panel -->
                    <div class="back">
                        <div class="header">
                            <h5 class="motto">"Put those dreams in Action"</h5>
                        </div>
                        <div class="content">
                            <div class="main">
                                <h4 class="text-center">Job Description</h4>
                                <p class="text-center">Digital Architecture Design <br />Network Engineering</p>

                                <div class="stats-container">
                                    <div class="stats">
                                        <h4>200</h4>
                                        <p>
                                            Followers
                                        </p>
                                    </div>
                                    <div class="stats">
                                        <h4>67</h4>
                                        <p>
                                            Following
                                        </p>
                                    </div>
                                    <div class="stats">
                                        <h4>103</h4>
                                        <p>
                                            Projects
                                        </p>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <div class="footer">
                            <button class="btn btn-simple" rel="tooltip" title="Flip Card" onclick="rotateCard(this)">
                                <i class="fa fa-reply"></i> Back
                            </button>
                            <div class="social-links text-center">
                                <a href="#" class="facebook"><i class="fa fa-facebook fa-fw"></i></a>
                                <a href="#" class="google"><i class="fa fa-google-plus fa-fw"></i></a>
                                <a href="#" class="twitter"><i class="fa fa-twitter fa-fw"></i></a>
                            </div>
                        </div>
                    </div> <!-- end back panel -->
                </div> <!-- end card -->
            </div> <!-- end card-container -->
        </div> <!-- end col sm 3 -->
<!--         <div class="col-sm-1"></div> -->
        <div class="col-md-4 col-sm-6">
            <div class="card-container">
                <div class="card">
                    <div class="front">
                        <div class="cover">
                            <img src="images/rotating_card_thumb3.png"/>
                        </div>
                        <div class="user">
                            <img class="img-circle" src="images/rotating_card_profile.png"/>
                        </div>
                        <div class="content">
                            <div class="main">
                                <h3 class="name">Moyo Benson</h3>
                                <p class="profession">Lecturer</p>

                                <p class="text-center">"I'm the new Sinatra, and since I made it here I can make it anywhere, yeah, they love me everywhere"</p>
                            </div>
                            <div class="footer">
                                <div class="rating">
                                    <i class="fa fa-mail-forward"></i> Auto Rotation
                                </div>
                            </div>
                        </div>
                    </div> <!-- end front panel -->
                    <div class="back">
                        <div class="header">
                            <h5 class="motto">"To be or not to be, this is my awesome motto!"</h5>
                        </div>
                        <div class="content">
                            <div class="main">
                                <h4 class="text-center">Job Description</h4>
                                <p class="text-center">Artificial Intelligence <br />Cryptographby | Digital Forensics</p>

                                <div class="stats-container">
                                    <div class="stats">
                                        <h4>674</h4>
                                        <p>
                                            Followers
                                        </p>
                                    </div>
                                    <div class="stats">
                                        <h4>543</h4>
                                        <p>
                                            Following
                                        </p>
                                    </div>
                                    <div class="stats">
                                        <h4>85</h4>
                                        <p>
                                            Projects
                                        </p>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <div class="footer">
                            <div class="social-links text-center">
                                <a href="#" class="facebook"><i class="fa fa-facebook fa-fw"></i></a>
                                <a href="#" class="google"><i class="fa fa-google-plus fa-fw"></i></a>
                                <a href="#" class="twitter"><i class="fa fa-twitter fa-fw"></i></a>
                            </div>
                        </div>
                    </div> <!-- end back panel -->
                </div> <!-- end card -->
            </div> <!-- end card-container -->
        </div> <!-- end col-sm-3 -->
        </div> <!-- end col-sm-10 -->
    </div> <!-- end row -->
    
</div>
    
    <div class="space-50"></div>
    <p class="text-center">Copyright &copy; 2018 <a href="Default.aspx">ZitoeX</a>, made with love<i class="fa fa-heart ct-heart"></i> for a better web.</p>

<script src="js/bootstrap.js" type="text/javascript"></script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>

<script type="text/javascript">
    $().ready(function(){
        $('[rel="tooltip"]').tooltip();

    });

    function rotateCard(btn){
        var $card = $(btn).closest('.card-container');
        console.log($card);
        if($card.hasClass('hover')){
            $card.removeClass('hover');
        } else {
            $card.addClass('hover');
        }
    }
</script>
    </form>
     <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
