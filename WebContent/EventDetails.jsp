<%@page import="Controller.EventController"%>
<%@page import="Model.Organization"%>
<%@page import="Model.EventDetails"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%-- --%>

<html>
<head>
<title>ShareLife</title>
<link href="images/logo.png" rel="icon">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

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

<link href="https://fonts.googleapis.com/css?family=Roboto+Condensed"
	rel="stylesheet">

<!-- custom css -->
<link href="css/eventdetail.css" rel="stylesheet">
<link href="css/footer.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Bellefair"
	rel="stylesheet">
</head>
<body>
	<%
		HttpSession ses = request.getSession();
		EventDetails E = (EventDetails) ses.getValue("ED");
		Organization O = EventController.OrganizationByEvent(E);
	%>
	<div id="navbarbody">
		<nav class="navbar navbar-inverse bg-faded fixed-top">
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
							class="glyphicon glyphicon-user"></span> Registration</a></li>
					<li><a href="Login.jsp"><span
							class="glyphicon glyphicon-log-in"></span> Login</a></li>
				</ul>
			</div>
		</div>
		</nav>
	</div>

	<div class="container">
		<div class="row">
			<div class="col-xs-12 col-sm-6 col-md-6 col-xl-6">
				<p style='font-size: 1.4em;'>Name Of Event:</p>
			</div>
			<div class="col-xs-12 col-sm-6 col-md-6 col-xl-6">
				<p style="font-size: 1.4em;"><%=E.getENAME()%></p>
			</div>
		</div>
		<div class="row">
			<div class="col-xs-12 col-sm-12 col-md-12 col-xl-12">
				<hr style="width: 100%;">
			</div>
		</div>
		<div class="row">
			<div class="col-xs-12 col-sm-6 col-md-6 col-xl-6">
				<p id="heading">Location:</p>
			</div>
			<div class="col-xs-12 col-sm-6 col-md-6 col-xl-6">
				<p><%=E.getADDRESS()%></p>
			</div>
		</div>
		<div class="row">
			<div class="col-xs-12 col-sm-6 col-md-6 col-xl-6">
				<p id="heading">Date:</p>
			</div>
			<div class="col-xs-12 col-sm-6 col-md-6 col-xl-6">
				<input type="date" value="<%=E.getDATE()%>" readonly
					style="border: none; border-color: transparent;">
			</div>
		</div>
		<div class="row">
			<div class="col-xs-12 col-sm-6 col-md-6 col-xl-6">
				<p id="heading">Timing:</p>
			</div>
			<div class="col-xs-12 col-sm-6 col-md-6 col-xl-6">
				<input type="time" value="<%=E.getTIME()%>" readonly
					style="border: none; border-color: transparent">
			</div>
		</div>

		<div class="row">
			<div class="col-xs-12 col-sm-6 col-md-6 col-xl-6">
				<p id="heading">Event coordinator/contact person:</p>
			</div>
			<div class="col-xs-12 col-sm-6 col-md-6 col-xl-6">
				<p><%=E.getCOORDINATORNAME()%></p>
			</div>
		</div>
		<div class="row">
			<div class="col-xs-12 col-sm-6 col-md-6 col-xl-6">
				<p id="heading">Event coordinator contact No:</p>
			</div>
			<div class="col-xs-12 col-sm-6 col-md-6 col-xl-6">
				<p><%=E.getCOORDINATORPHONE()%></p>
			</div>
		</div>
		<div class="row">
			<div class="col-xs-12 col-sm-6 col-md-6 col-xl-6">
				<p id="heading">Event coordinator email-id:</p>
			</div>
			<div class="col-xs-12 col-sm-6 col-md-6 col-xl-6">
				<p><%=E.getCOORDINATOREMAIL()%></p>
			</div>
		</div>
		<div class="row" style="margin-top: 50px;">
			<div class="col-xs-12 col-sm-12 col-md-12 col-xl-12">
				<h2>Organizers:-</h2>
				<hr style="width: 100%;">
			</div>
		</div>
		<div class="row">
			<div class="col-xs-12 col-sm-6 col-md-6 col-xl-6">
				<p id="heading">Organized By:</p>
			</div>
			<div class="col-xs-12 col-sm-6 col-md-6 col-xl-6">
				<p><%=O.getOrganization_name()%></p>
			</div>
		</div>
		<div class="row">
			<div class="col-xs-12 col-sm-6 col-md-6 col-xl-6">
				<p id="heading">Email ID:</p>
			</div>
			<div class="col-xs-12 col-sm-6 col-md-6 col-xl-6">
				<p><%=O.getEmail()%></p>
			</div>
		</div>
		<div class="row">
			<div class="col-xs-12 col-sm-6 col-md-6 col-xl-6">
				<p id="heading">Website:</p>
			</div>
			<div class="col-xs-12 col-sm-6 col-md-6 col-xl-6">
				<a href="#" target="_blank"><%=O.getWebsite()%></a>
			</div>
		</div>
		<div class="row" style="margin-top: 50px;">
			<div class="col-xs-12 col-sm-12 col-md-12 col-xl-12">
				<h2>
					Administrative Details:-
					<hr style="width: 100%;">
				</h2>
			</div>
		</div>
		<div class="row">
			<div class="col-xs-12 col-sm-6 col-md-6 col-xl-6">
				<p id="heading">Administrative Head:</p>
			</div>
			<div class="col-xs-12 col-sm-6 col-md-6 col-xl-6">
				<p><%=O.getFristname()%>&nbsp;<%=O.getLastname()%></p>
			</div>
		</div>
		<div class="row">
			<div class="col-xs-12 col-sm-6 col-md-6 col-xl-6">
				<p id="heading">Email ID:</p>
			</div>
			<div class="col-xs-12 col-sm-6 col-md-6 col-xl-6">
				<p><%=O.getAdministrative_email()%></p>
			</div>
		</div>
		<div class="row">
			<div class="col-xs-12 col-sm-6 col-md-6 col-xl-6">
				<p id="heading">Contact No:</p>
			</div>
			<div class="col-xs-12 col-sm-6 col-md-6 col-xl-6">
				<p><%=O.getAdministrative_phone()%></p>
			</div>
		</div>
		<div class="row">
			<div class="col-xs-12 col-sm-6 col-md-6 col-xl-6">
				<p id="heading">Fax No:</p>
			</div>
			<div class="col-xs-12 col-sm-6 col-md-6 col-xl-6">
				<p><%=O.getAdministrative_fax()%></p>
			</div>
		</div>
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
				<p>
					<a href="sharelife@life.com">sharelife@life.com</a>
				</p>
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