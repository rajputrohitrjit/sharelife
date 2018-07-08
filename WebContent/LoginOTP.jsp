<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%-- Cookie management --%>



<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>LoginByOTP</title>
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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
<link href="css/footer.css" rel="stylesheet">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
<link href="https://fonts.googleapis.com/css?family=Bellefair"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Bellefair"
	rel="stylesheet">
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
	<%
	HttpSession ses = request.getSession();
	String key = String.valueOf(ses.getValue("email-otp"));
	String type = String.valueOf(ses.getValue("usertype"));
%>
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
		<section id="login">
		<div class="container-fluid logincontainer">
			<div class="row">
				<div class="col-xs-12 col-md-12 col-sm-12">
					<div class="form-wrap">
						<h1>Enter the OTP</h1>
						<form role="form" action="OTPCheck" id="login-form"
							autocomplete="off">
							<div class="form-group">
								<label for="email" class="sr-only">User:</label>
								<div class="utype">
									<input type="text" name="userid" id="email"
										class="form-control" value=<%=key %>> <input
										type="hidden" name="usertype" id="email" class="form-control"
										value=<%=type %>>
								</div>
							</div>
							<div class="form-group">
								<label class="sr-only">OTP:</label>
								<div class="utype">
									<input type="number" name="userotp" id="email"
										class="form-control">
								</div>
							</div>
							<input type="submit" id="btn-login"
								class="btn btn-custom btn-lg btn-block" value="Log in">
						</form>

						<%--to recover the password --%>

						<hr>
					</div>
				</div>
				<!-- /.col-xs-12 -->
			</div>
			<!-- /.row -->
		</div>
		<!-- /.container --> </section>
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