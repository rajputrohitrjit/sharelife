<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
<link href="images/logo.png" rel="icon">
<link href="images/logo.png" rel="icon">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
<link href="https://fonts.googleapis.com/css?family=Bellefair"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
<title>ShareLife/Registration</title>
<script src='js/jquery-2.2.1.min.js'></script>
<script src='js/organizationjsp.js'></script>

<link href="css/organizatinRegistration.css">
<link href="css/footer.css" rel="stylesheet">
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
        

	<div class="container-fluid">
		<form action='organization_register' method='post'
			enctype='multipart/form-data' autofill="no">
			<div>
				<div class="form-group row">
					<div class="col-sm-12 col-md-12">
						<center>
							<h1>Organization Registration</h1>
						</center>
					</div>
					<div class="col-sm-12 col-md-6">
						<div class="row">
							<div class="col-sm-12 col-md-12">
								<h2>Organization Details</h2>
							</div>
						</div>

						<div class="row" style="margin-top: 8px;">
							<div class="col-sm-6 col-md-6">
								<label for="example-tel-input" class="col-form-label">Organization
									Name:</label>
							</div>
							<div class="col-sm-6 col-md-6">
								<input class="form-control" required type="text"
									id="example-text-input" name=organization_name
									style="width: 300px;">
							</div>
						</div>
						<div class="row" style="margin-top: 8px;">
							<div class="col-sm-6 col-md-6">
								<label for="example-tel-input" class="col-form-label">Organization
									Logo:</label>
							</div>
							<div class="col-sm-6 col-md-6">
								<input class="form-control" required type="file"
									id="example-text-input" name=organization_logo
									style="width: 300px;">
							</div>
						</div>
						<div class="row" style="margin-top: 8px;">
							<div class="col-sm-6 col-md-6">
								<label for="example-tel-input" class="col-form-label">Central
									Office Address:</label>
							</div>
							<div class="col-sm-6 col-md-6">
								<input class="form-control" required type="text"
									id="example-text-input" name=central_office_address
									style="width: 300px;">
							</div>
						</div>
						<div class="row" style="margin-top: 8px;">
							<div class="col-sm-6 col-md-6">
								<label for="example-tel-input" class="col-form-label">Email:</label>
							</div>
							<div class="col-sm-6 col-md-6">
								<input class="form-control" required type="email"
									id="example-text-input" name=email style="width: 300px;">
							</div>
						</div>
						<div class="row" style="margin-top: 8px;">
							<div class="col-sm-6 col-md-6">
								<label for="example-tel-input" class="col-form-label">Organization
									Website:</label>
							</div>
							<div class="col-sm-6 col-md-6">
								<input class="form-control" required type="link"
									id="example-text-input" name=website style="width: 300px;">
							</div>
						</div>
						<div class="row" style="margin-top: 8px;">
							<div class="col-sm-6 col-md-6">
								<label for="example-tel-input" class="col-form-label">Organization
									Type:</label>
							</div>
							<div class="col-sm-6 col-md-6">
								<input class="form-control" required type="text"
									id="example-text-input" name=type style="width: 300px;">
							</div>
						</div>

						<div class="row">
							<div class="col-sm-12 col-md-12">
								<h2>Administrative Details</h2>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-12 col-md-12">
								<h4>Administrative Head</h4>
							</div>
						</div>
						<div class="row" style="margin-top: 8px;">
							<div class="col-sm-6 col-md-6">
								<label for="example-tel-input" class="col-form-label">First
									Name:</label>
							</div>
							<div class="col-sm-6 col-md-6">
								<input class="form-control" required type="text"
									id="example-text-input" name=administrative_head_first_name
									style="width: 300px;">
							</div>
						</div>
						<div class="row" style="margin-top: 8px;">
							<div class="col-sm-6 col-md-6">
								<label for="example-tel-input" class="col-form-label">Last
									Name:</label>
							</div>
							<div class="col-sm-6 col-md-6">
								<input class="form-control" required type="text"
									id="example-text-input" name=administrative_head_last_name
									style="width: 300px;">
							</div>
						</div>
						<div class="row" style="margin-top: 8px;">
							<div class="col-sm-6 col-md-6">
								<label for="example-tel-input" class="col-form-label">Address:</label>
							</div>
							<div class="col-sm-6 col-md-6">
								<input class="form-control" required type="text"
									id="example-text-input" name=administrative_address
									style="width: 300px;">
							</div>
						</div>
						<div class="row" style="margin-top: 8px;">
							<div class="col-sm-6 col-md-6">
								<label for="example-tel-input" class="col-form-label">Email
									ID:</label>
							</div>
							<div class="col-sm-6 col-md-6">
								<input class="form-control" required type="email"
									id="example-text-input" name=administrative_email
									style="width: 300px;">
							</div>
						</div>
						<div class="row" style="margin-top: 8px;">
							<div class="col-sm-6 col-md-6">
								<label for="example-tel-input" class="col-form-label">Contact
									No:</label>
							</div>
							<div class="col-sm-6 col-md-6">
								<input class="form-control" required type="number"
									id="example-text-input" name=administrative_phoneno
									style="width: 300px;">
							</div>
						</div>
						<div class="row" style="margin-top: 8px;">
							<div class="cdol-sm-6 col-md-6">
								<label for="example-tel-input" class="col-form-label">Fax
									No:</label>
							</div>
							<div class="col-sm-6 col-md-6">
								<input class="form-control" required type="number"
									id="example-text-input" name=administrative_fax
									style="width: 300px;">
							</div>
						</div>
					</div>

					<div class="col-sm-12 col-md-6">
						<div class="row" style="margin-top: 10%;">
							<div class="col-sm-6 col-md-6">
								<div class="row" style="margin-top: 8px;">
									<div class="col-sm-6 col-md-6">
										<label for="example-tel-input" class="col-form-label">Add
											Certificate:</label>
									</div>
									<div class="col-sm-6 col-md-6">
										<input class="form-control btn-success" type="button"
											id=add_certificate value="Add" style="width: 300px;">
										<input type="hidden" id=certificatecount value=0
											name=certificateno>
									</div>
								</div>
								<div class="row" style="margin-top: 8px;">
									<div class="col-sm-6 col-md-6"></div>
									<div class="col-sm-6 col-md-6">
										<div id=certificate></div>
									</div>
								</div>
								<div class="row" style="margin-top: 8px;">
									<div class="col-sm-6 col-md-6">
										<label for="example-tel-input" class="col-form-label">Password:</label>
									</div>
									<div class="col-sm-6 col-md-6">
										<input class="form-control" required type="password"
											id="password" name=password style="width: 300px;">
										<h5 style="width: 300px;">Must fulfill following
											requirements:</h5>
										<ul
											style="font-size: 12px; width: 300px; list-style-type: none;"
											class="10">
											<li id="10"><span style="color: red; font-size: 18px;">&#215;</span>&nbsp;At
												least one lower case letter</li>
											<li id="11"><span style="color: red; font-size: 18px;">&#215;</span>&nbsp;At
												least one upper case letter</li>
											<li id="12"><span style="color: red; font-size: 18px;">&#215;</span>&nbsp;At
												least one number</li>
											<li id="13"><span style="color: red; font-size: 18px;">&#215;</span>&nbsp;Be
												at least 8 characters</li>
										</ul>
									</div>
								</div>
								<div class="row" style="margin-top: 8px;">
									<div class="col-sm-6 col-md-6">
										<label for="example-tel-input" class="col-form-label">Confirm
											Password:</label>
									</div>
									<div class="col-sm-6 col-md-6">
										<input class="form-control" required type="password"
											id="con_password" name=con_password style="width: 300px;">
										<div id="con_message" style="width: 300px;"></div>
									</div>
								</div>
								<div class="row" style="margin-top: 50px;">
									<div class="col-sm-6 col-md-6"></div>
									<div class="col-sm-6 col-md-6">
										<input class="form-control btn-success" type="submit"
											id="sendform" style="width: 300px;" value="Submit">
									</div>
								</div>
							</div>
							<div class="col-sm-6 col-md-6"></div>
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>


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