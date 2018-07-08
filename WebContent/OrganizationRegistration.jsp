<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="images/logo.png" rel="icon">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

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

	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="index.html"><img
				src="images/footerlogo.jpg" class="img-responsive"
				style="width: 100px; height: 30px;"></a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
				<li class="active"><a href="index.html">Home</a></li>
				<li><a href="#">About</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="Registration.jsp"><span
						class="glyphicon glyphicon-user"></span>Registration</a></li>
				<li><a href="Login.jsp"><span
						class="glyphicon glyphicon-log-in"></span> Login</a></li>
			</ul>
		</div>
	</div>
	</nav>

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


</body>
<footer class="container-fluid" id="footer_body">
<center>
	<div class="row">
		<div class="col-xs-12 col-sm-4 col-md-4 col-xl-4 col-of-row">
			<div id="footer_logo">
				<img src="images/footerlogo.jpg" class="img-responsive">
			</div>
			<ul id="footer-left-material">
				<li><a href="index.html">Home</a></li>
				<li><a href="About.html">About</a></li>
				<li><a href="Information.html">Guidelines</a></li>
			</ul>
			<p id="footer-left-tag">ShareLife @ 2018</p>
		</div>
		<div
			class="col-xs-12 col-sm-4 col-md-4 col-xl-4 col-of-row align-middle">
			<div id="footer_middle_info">
				<i class="fa fa-map-marker"></i>
				<p>
					<span>RJIT, BSF ACADEMY</span> Tekanpur ,MP
				</p>
			</div>

			<div id="footer_middle_info">
				<i class="fa fa-phone"></i>
				<p>+91 9770699391 , +918770372158</p>
			</div>

			<div id="footer_middle_info">
				<i class="fa fa-envelope"></i>
				<p>sharelife29@life.com</p>
			</div>
		</div>

		<div class="col-xs-12 col-sm-4 col-md-4 col-xl-4 col-of-row">
			<div class="footer-company-about">
				<span>About the company</span><br />
				<p>Share Life is a new and innovative web application feature
					which will provide timely oppurtunities to the enthusiastic blood
					donors.</p>
			</div>
			<div class="footer-icons">
				<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
					class="fa fa-twitter"></i></a> <a href="#"><i
					class="fa fa-linkedin"></i></a> <a href="#"><i class="fa fa-github"></i></a>
			</div>
		</div>
	</div>
</center>
</footer>
</html>