<%@ Page Language="C#" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link href='css/bootstrap.css' rel='stylesheet' />
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>About ZitoeX University</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <link href="css/ZitoeXCustom.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="css/style.css"/>
        <link href="https://fonts.googleapis.com/css?family=Quicksand:500" rel="stylesheet"/>
        <script src="https://code.jquery.com/jquery-3.2.1.js"></script>
        <script type="text/javascript">
            $(window).on('scroll', function(){
                if($(window).scrollTop()){
                    $('nav').addClass('black');
                }
                else{
                    $('nav').removeClass('black');
                }
            })
        </script>

    
</head>
<body>
   <form>
    <div class="wrapper">
        <nav>
            <div class="logo"></div>
                <ul>
                    <li><a href="Default.aspx">Home</a></li>
                    <li><a class="active" href="About.aspx">The Journey</a></li>
                    <li><a href="Login.aspx">Student ITS</a></li>
                    <li><a href="SignUp.aspx">Register</a></li>
               
                </ul>        
        </nav>
    <section class="sec1"></section>
    <section class="content">
        <p> ZitoeX has worked competively againts giants like Google and Amazon in their Artificial Intelligence Program. It has grown to be top AI bot developer in Africa. Since 2006 we have sold over 3 million products to defence, manufacture, automation industry and Engineering. At ZitoeX we have student division which helps students from various Universities in Africa to complete their research and bring their Mechatronic dreams to reality. All this is done for free and we offer our pre custom build tech to those student who cannot write code from scratch. This means that all our API's are open sourced, you can play with the code and make extensions to part of the code you think is lacking functionality you want to use.</p>
        
        <p>The languages we specialize in are C# and Java at enterprise level. It is important that our students grasp JavaScript, CSS 3 and HTML5 before they touch the code to avoid getting heart attack. Yes you've read that correctly, we mean it, you might get a heart attack if you push to use our code without the core knowledge of the above mentioned languages.</p>
        
      
    </section>
    </div>
        <hr />
    <!-- Footer -->
        <footer >
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
