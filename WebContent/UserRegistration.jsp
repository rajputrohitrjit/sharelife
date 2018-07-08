<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>User Registration</title>
<link href="images/logo.png" rel="icon">
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
				<li><a href="About.html">About</a></li>
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



	<div id="container-form">
		<form action='UserSubmit' method='post' enctype='multipart/form-data'>
			<center>
				<div class="form-group row">
					<label for="example-text-input" class="col-12 col-form-label"><h1>Donor
							Registration</h1></label>
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
						class="fa fa-linkedin"></i></a> <a href="#"><i
						class="fa fa-github"></i></a>
				</div>
			</div>
		</div>
	</center>
	</footer>
</body>

</html>