<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

 <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="icon" href="img/favicon.png" type="image/png">
        <title>ShareLife</title>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="vendors/linericon/style.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="vendors/owl-carousel/owl.carousel.min.css">
        <link rel="stylesheet" href="vendors/lightbox/simpleLightbox.css">
        <link rel="stylesheet" href="vendors/nice-select/css/nice-select.css">
        <link rel="stylesheet" href="vendors/animate-css/animate.css">
        <link rel="stylesheet" href="vendors/popup/magnific-popup.css">
        <!-- main css -->
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/responsive.css">

        
        <script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<!-- Latest compiled and minified JavaScript -->

	
	
<link href="images/logo.png" rel="icon">

<script src="js/index.js"></script>
<!-- custom made css -->
<link rel="stylesheet" href="css/index.css">
<!--  google fonts -->
<link href="https://fonts.googleapis.com/css?family=Bellefair"
	rel="stylesheet">

</head>

<body>

	
        <!--================Header Menu Area =================-->
        <header class="header_area">
           	<div class="top_menu row m0">
           		<div class="container">
					<div class="float-left">
						<ul class="list header_social">
							<li><a href="#"><i class="fa fa-facebook"></i></a></li>
							<li><a href="#"><i class="fa fa-twitter"></i></a></li>
							<li><a href="#"><i class="fa fa-dribbble"></i></a></li>
							<li><a href="#"><i class="fa fa-behance"></i></a></li>
						</ul>
					</div>
					<div class="float-right">
						<a class="dn_btn" href="sharelifesupport@gmail.com">sharelifesupport@gmail.com</a>
					</div>
           		</div>	
           	</div>	
            <div class="main_menu">
            	<nav class="navbar navbar-expand-lg navbar-light">
					<div class="container">
						<!-- Brand and toggle get grouped for better mobile display -->
						<a class="navbar-brand logo_h" href="index.html"><img src="img/mainlogo.jpg" alt="" style="height: 70px; width: 150px;"></a>
						<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse offset" id="navbarSupportedContent">
							<ul class="nav navbar-nav menu_nav ml-auto">
								<li class="nav-item active"><a class="nav-link" href="index.html">Home</a></li> 
								<li class="nav-item"><a class="nav-link" href="About.html">About</a></li> 
								<li class="nav-item"><a class="nav-link" href="#events">Events</a></li> 
								<li class="nav-item"><a class="nav-link" href="Registration.jsp">Register</a></li> 
								<li class="nav-item"><a class="nav-link" href="Login.jsp">Login</a></li> 
								<li class="nav-item"><a class="nav-link" href="Information.html">Guidelines</a></li>
							</ul>
						</div> 
					</div>
            	</nav>
            </div>
        </header>
        <!--================Header Menu Area =================-->


<br><br><br><br>


	<center>
		<div
			style="border: 2px solid black; max-width: 50%; margin-bottom: 5%; margin-top: 5%;">
			<form action="Registration">

				<div class="form-group row"
					style="margin-top: 5%; margin-bottom: 5%;">
					<label for="example-tel-input" class="col-12 col-form-label"><h1>
							<hr>
							Registration As
							<hr>
						</h1></label>
					<div class="col-12 col-md-12">

						<select class="form-control" id="sel1" name="as"
							style="width: 300px; margin-top: 25px;">
							<option>Donor</option>
							<option>Organization</option>
						</select>

						<%-- submit button--%>
						<div class="form-group row" style="margin-top: 20px;">
							<div class="col-12 col-md-12">
								<button type="submit" class="btn btn-success"
									style="width: 300px;">Submit</button>
							</div>
						</div>

					</div>

				</div>

			</form>
		</div>
	</center>


        <!--================ start footer Area  =================-->	
        <footer class="footer-area p_120">
            <div class="container">
                <div class="row">
                    <div class="col-lg-2  col-md-6 col-sm-6">
                        <div class="single-footer-widget tp_widgets">
                           <h6 class="footer_title">Top Links</h6>
                            <ul class="list">
                            	<li><a href="#">About</a></li>
                            	<li><a href="#">Registration</a></li>
                            	<li><a href="#">Guidelines</a></li>
                            	
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-2  col-md-6 col-sm-6">
                        <div class="single-footer-widget tp_widgets">
                           <h6 class="footer_title">Quick Links</h6>
                            <ul class="list">
                            	<li><a href="#">Registration</a></li>
                            	<li><a href="#">Login</a></li>
                            	<li><a href="#">Events</a></li>
                            	<li><a href="#">Terms of Service</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-2  col-md-6 col-sm-6">
                        <div class="single-footer-widget tp_widgets">
                           <h6 class="footer_title">Features</h6>
                            <ul class="list">
                            	<li><a href="#">Jobs</a></li>
                            	<li><a href="#">Brand Assets</a></li>
                            	<li><a href="#">Investor Relations</a></li>
                            	<li><a href="#">Terms of Service</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-2  col-md-6 col-sm-6">
                        <div class="single-footer-widget tp_widgets">
                           <h6 class="footer_title">Resources</h6>
                            <ul class="list">
                            	<li><a href="#">Guides</a></li>
                            	<li><a href="#">Research</a></li>
                            	<li><a href="#">Experts</a></li>
                            	<li><a href="#">Agencies</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6">
                        <aside class="f_widget news_widget">
        					<div class="f_title">
        						<h3 class="footer_title">Newsletter</h3>
        					</div>
        					<p>Stay updated with our latest trends</p>
        					<div id="mc_embed_signup">
                                <form target="_blank" action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01" method="get" class="subscribe_form relative">
                                	<div class="input-group d-flex flex-row">
                                        <input name="EMAIL" placeholder="Enter email address" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Email Address '" required="" type="email">
                                        <button class="btn sub-btn"><span class="lnr lnr-arrow-right"></span></button>		
                                    </div>				
                                    <div class="mt-10 info"></div>
                                </form>
                            </div>
        				</aside>
                    </div>
                </div>
                <div class="row footer-bottom d-flex justify-content-between align-items-center">
                    <p class="col-lg-8 col-md-8 footer-text m-0">
Copyright @Sharelife 2018</p>
                    <div class="col-lg-4 col-md-4 footer-social">
                        <a href="#"><i class="fa fa-facebook"></i></a>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-dribbble"></i></a>
                        <a href="#"><i class="fa fa-behance"></i></a>
                    </div>
                </div>
            </div>
        </footer>
		<!--================ End footer Area  =================-->
        
</body>

</html>