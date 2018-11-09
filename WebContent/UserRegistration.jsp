<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>User Registration</title>
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




<script src='js/jquery-2.2.1.min.js'></script>
<script src='js/city.js'></script>
<script src="js/userregistration.js"></script>
<link href="css/footer.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Bellefair"
	rel="stylesheet">

<style type="text/css">
.table-borderless>tbody>tr>td, .table-borderless>tbody>tr>th,
	.table-borderless>tfoot>tr>td, .table-borderless>tfoot>tr>th,
	.table-borderless>thead>tr>td, .table-borderless>thead>tr>th {
	border: none;
	font-size: 18px;
}

input[type=text] {
	width: 300px;
}

input[type=tel] {
	width: 300px;
}

input[type=number] {
	width: 300px;
}

input[type=password] {
	width: 300px;
}

input[type=email] {
	width: 300px;
}

input[type=date] {
	width: 300px;
}

input[type=submit] {
	margin-top: 50px;
	width: 300px;
	maring-bottom: 50px;
}

#sel1 {
	max-width: 300px;
}

#state {
	max-width: 300px;
}

#city {
	max-width: 300px;
}

#container-form {
	padding-left: 5%;
}

label {
	text-align: left;
}

select {
	width: 200px;
}
</style>
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



	<div id="container-form">
		<form action='UserSubmit' method='post' enctype='multipart/form-data'>
			<center>
				<div class="form-group row">
					<label for="example-text-input" class="col-12 col-form-label"><h1><center>Donor
							Registration</center></h1></label>
				</div>
				<div class="form-group row">
					<label for="example-text-input" class="col-sm-12 col-form-label"><h1>Donor
							Details</h1></label>
				</div>
			</center>
			<div class="form-group row">
				<label for="example-text-input"
					class="col-sm-6 col-md-6 col-form-label">First Name</label>
				<div class="col-sm-6 col-md-6">
					<input class="form-control" required type="text"
						id="example-text-input" name="fname">
				</div>
			</div>
			<div class="form-group row">
				<label for="example-search-input"
					class="col-sm-6 col-md-6 col-form-label">Last Name</label>
				<div class="col-sm-6 col-md-6">
					<input class="form-control" required type="text"
						id="example-search-input" name="lname">
				</div>
			</div>
			<div class="form-group row">
				<label for="example-email-input"
					class="col-sm-6 col-md-6 col-form-label">Email ID:</label>
				<div class="col-sm-6 col-md-6">
					<input class="form-control" required type="email"
						placeholder="some@example.com" id="example-email-input" name="eid">
					<label><p>Serve as Username</p></label>
				</div>
			</div>
			<div class="form-group row">
				<label for="example-url-input"
					class="col-sm-6 col-md-6 col-form-label">Date Of Birth</label>
				<div class="col-sm-6 col-md-6">
					<input class="form-control" required type="date"
						id="example-url-input" name="dob">
				</div>
			</div>
			<div class="form-group row">
				<label for="example-tel-input"
					class="col-sm-6 col-md-6 col-form-label">Blood Group</label>
				<div class="col-sm-6 col-md-6">
					<select class="form-control" required id="sel1" name="bgroup"
						style="max-width: 300px;">
						<option value="A+">A+</option>
						<option value="A-">A-</option>
						<option value="B+">B+</option>
						<option value="B-">B-</option>
						<option value="O+">O+</option>
						<option value="O-">O-</option>
						<option value="AB+">AB+</option>
						<option value="AB-">AB-</option>
					</select>
				</div>
			</div>
			<div class="form-group row">
				<label for="example-password-input"
					class="col-sm-6 col-md-6 col-form-label">Gender</label>
				<div class="col-sm-6 col-md-6">
					<select class="form-control" required id="sel1" name="gder">
						<option value="male">Male</option>
						<option value="female">Female</option>
						<option value="other">Other</option>
					</select>
				</div>
			</div>
			<div class="form-group row">
				<label for="example-text-input"
					class="col-sm-6 col-md-6 col-form-label">Weight (in Kg's)</label>
				<div class="col-sm-6 col-md-6">
					<input class="form-control" required type="text"
						id="example-text-input" name="wght">
				</div>
			</div>
			<div class="form-group row">
				<label for="example-text-input"
					class="col-sm-6 col-md-6 col-form-label"><h2>Contact
						Details</h2></label>
			</div>
			<div class="form-group row">
				<label for="example-tel-input"
					class="col-sm-6 col-md-6 col-form-label">Residence Phone</label>
				<div class="col-sm-6 col-md-6">
					<input class="form-control" type="number" id="example-tel-input"
						name="rphone">
				</div>
			</div>
			<div class="form-group row">
				<label for="example-tel-input"
					class="col-sm-6 col-md-6 col-form-label">Mobile No:</label>
				<div class="col-sm-6 col-md-6">
					<input class="form-control" type="tel" id="example-tel-input"
						name="mno">
				</div>
			</div>
			<div class="form-group row">
				<label for="example-text-input"
					class="col-sm-6 col-md-6 col-form-label">Address:</label>
				<div class="col-sm-6 col-md-6">
					<input class="form-control" required type="text"
						id="example-text-input" name="aress">
				</div>
			</div>
			<div class="form-group row">
				<label for="example-password-input"
					class="col-sm-6 col-md-6 col-form-label">State</label>
				<div class="col-sm-6 col-md-6">
					<select class="form-control" required id="state" name="state">

					</select>
				</div>
			</div>
			<div class="form-group row">
				<label for="example-password-input"
					class="col-sm-6 col-md-6 col-form-label">City</label>
				<div class="col-sm-6 col-md-6">
					<select class="form-control" required id="city" name="city">

					</select>
				</div>
			</div>
			<div class="form-group row">
				<label for="example-password-input"
					class="col-sm-6 col-md-6 col-form-label">Password</label>
				<div class="col-sm-6 col-md-6">
					<input class="form-control" required type="password" id="password"
						name="pword">
					<h5 style="width: 300px;">Must fulfill following requirements:</h5>
					<ul style="font-size: 12px; width: 300px; list-style-type: none;">
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
			<div class="form-group row">
				<label for="example-password-input"
					class="col-sm-6 col-md-6 col-form-label">Confirm Password</label>
				<div class="col-sm-6 col-md-6">
					<input class="form-control" required type="password"
						id="con_password">
					<div id="con_message" style="width: 300px;"></div>
				</div>
			</div>
			<div class="form-group row">
				<label for="example-password-input"
					class="col-sm-6 col-md-6 col-form-label"></label>
				<div class="col-sm-6 col-md-6">
					<input type="submit" class="btn btn-success" value="Register"
						id="sendform">
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