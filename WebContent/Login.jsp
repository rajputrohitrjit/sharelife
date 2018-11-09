<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
	try{
		String S101 = null;
		String S102 = null;
		String S103 = null;
		String S104 = null;
		Cookie cookies[] = request.getCookies();
		for(Cookie cookie : cookies){
			if(cookie.getName().equals("Loggedin1")){
				S101 = cookie.getValue();
			}
			if(cookie.getName().equals("Loggedin2")){
				S102 = cookie.getValue();
			}
			if(cookie.getName().equals("Loggedin3")){
				S103 = cookie.getValue();
			}
			if(cookie.getName().equals("Loggedin4")){
				S104 = cookie.getValue();
			}
		}
		
		if((S101 != null) && (S102 != null) && (S103 != null) && (S103 != null)){
			response.sendRedirect("Login?userid="+S101+"&password="+S102+"&type="+S103+"&source="+S104+"");
		}
	}catch(Exception e){
		e.printStackTrace();
	}
%>
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
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Login</title>
<link href="images/logo.png" rel="icon">


<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>

<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
<link href="https://fonts.googleapis.com/css?family=Bellefair"
	rel="stylesheet">
<script type="text/javascript" src="js/password.js"></script>
<script src='js/jquery-2.2.1.min.js'></script>
<script src='js/usertype.js'></script>
<link href="css/footer.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Bellefair"
	rel="stylesheet">
<script>
$('document').ready(function(){
	$( ".select" ).change(function() {
		var myValue = $( ".select" ).val();
		if(myValue == "organization"){
			$('#type4').attr('value', 'organization');
		}else if(myValue == "user"){
			$('#type4').attr('value', 'user');
		}
	});
});
</script>


<style type="text/css">
.navbar-brand>span {
	text-decoration: underline;
	underline-color: white;
}

.form-control {
	min-width: 200px;
}

<%--
//////////////////////////////////////////////////////////////////////////////////////////////////--%>
#login {
	padding-top: 50px
}

#login .form-wrap {
	width: 30%;
	margin: 0 auto;
}

#login h1 {
	color: #1fa67b;
	font-size: 18px;
	text-align: center;
	font-weight: bold;
	padding-bottom: 8%;
}

#login .form-group {
	margin-bottom: 8%;
}

#login .checkbox {
	margin-bottom: 20px;
	position: relative;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	-o-user-select: none;
	user-select: none;
}

#login .checkbox.show:before {
	content: '\e013';
	color: #1fa67b;
	font-size: 17px;
	margin: 1px 0 0 3px;
	position: absolute;
	pointer-events: none;
	font-family: 'Glyphicons Halflings';
}

#login .checkbox .character-checkbox {
	width: 25px;
	height: 25px;
	cursor: pointer;
	border-radius: 3px;
	border: 1px solid #ccc;
	vertical-align: middle;
	display: inline-block;
}

#login .checkbox .label {
	color: #6d6d6d;
	font-size: 13px;
	font-weight: normal;
}

#login .btn.btn-custom {
	font-size: 14px;
	margin-bottom: 20px;
}

#login .forget {
	font-size: 13px;
	text-align: center;
	display: block;
}

.form-control {
	color: #212121;
}

.btn-custom {
	color: #fff;
	background-color: #1fa67b;
}

.btn-custom:hover, .btn-custom:focus {
	color: #fff;
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












	<%---------------------------------Main Login Section                        Tanmay Pathak --%>
	<div class="container-fluid">
		<section id="login">
		<div class="container-fluid logincontainer">
			<div class="row">
				<div class="col-xs-12 col-md-12 col-sm-12">
					<div class="form-wrap">
						<h1>Login</h1>
						<form role="form" action="Login" id="login-form"
							autocomplete="off">
							<input type="hidden" name="source" class="form-control"
								value='login'>
							<div class="form-group">
								<label for="email" class="sr-only">Login As:</label> <select
									name="type" class="form-control select"><option
										value="user">Donor</option>
									<option value="organization">Organization</option></select>
							</div>
							<div class="form-group">
								<label for="email" class="sr-only">Email / ID</label>
								<div class="utype">
									<input type="email" name="userid" id="email"
										class="form-control" placeholder="somebody@example.com"
										required>
								</div>
							</div>
							<div class="form-group">
								<label for="key" class="sr-only">Password</label> <input
									type="password" name="password" id="key" class="form-control"
									placeholder="Password" required>
							</div>
							<div class="checkbox">
								<span class="character-checkbox" onclick="showPassword()"></span>
								<span class="label" display="inline">Show password</span>
							</div>
							<input type="submit" id="btn-login"
								class="btn btn-custom btn-lg btn-block" value="Log in">
						</form>

						<%--to recover the password --%>
						<a href="javascript:;" class="forget" data-toggle="modal"
							data-target=".forget-modal">Forgot your password?</a>
						<hr>
					</div>
				</div>
				<!-- /.col-xs-12 -->
			</div>
			<!-- /.row -->
		</div>
		<!-- /.container --> </section>
	</div>

	<form role="form" action="RecoverPassword">
		<div class="myrecovery">
			<input type="hidden" name="type4" id="type4" value="user">
		</div>
		<div class="modal fade forget-modal" tabindex="-1" role="dialog"
			aria-labelledby="myForgetModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-sm">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true">×</span> <span class="sr-only">Close</span>
						</button>
						<h4 class="modal-title">Recovery password</h4>
					</div>
					<div class="modal-body" id="main-body">
						<div class="utype3">
							<p>Type your email account</p>
						</div>
						<div class="utype2">
							<input type="email" name="recovery" id="recovery-email"
								class="form-control" autocomplete="off"
								placeholder="somebody@example.com">
						</div>
						<%--<input name="recovery-type" type="hidden" value="user" id="utype4" > --%>

					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>

						<input type=submit class="btn btn-custom" name="recovery"
							value="Recovery" data-target=".forget-modal" id="otp-generate">
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal-dialog -->
		</div>
		<!-- /.modal -->
	</form>

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