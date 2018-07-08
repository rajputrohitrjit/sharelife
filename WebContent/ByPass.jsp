<%@page import="Model.User"%>
<%@page import="Controller.OrganizationController"%>
<%@page import="Model.Organization"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Login Conform</title>
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
<script src='js/jquery-2.2.1.min.js'></script>
<script src="js/bybass.js"></script>
<link src="css/ByPass.css">
<link href="css/footer.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Bellefair"
	rel="stylesheet">
</head>
<body>
	<%
	String id = null;
	String email = null;
	String type = null;
	
	HttpSession ses = request.getSession();
	type = (String) ses.getValue("stype");
	if(type.equals("org")){
		Organization O = (Organization) ses.getValue("SORG");
		id = O.getOrganization_id();
		email = O.getEmail();
	}else if(type.equals("user")){
		User U = (User) ses.getValue("SUSER");
		id = U.getEmailid();
		email = U.getEmailid();
	}
	%>


	<div class="container be-detail-container">
		<div class="row">
			<div class="col-sm-6 col-sm-offset-3">
				<br> <img
					src="https://cdn2.iconfinder.com/data/icons/luchesa-part-3/128/SMS-512.png"
					class="img-responsive"
					style="width: 200px; height: 200px; margin: 0 auto;"><br>

				<h1 class="text-center">Verifing your Email ID</h1>
				<br>
				<p class="lead" style="align: center"></p>
				<p>
					Enter the OTP send to Email ID <font style="font-weight: bold;"><%=email %></font><br />OTP
					is valid only for 2 minutes
				</p>
				<p>This will serve as your id for Login</p>
				<br>

				<form id="veryfyotp" action="veryfyotp">
					<div class="row">
						<div class="form-group col-sm-8">
							<span style="color: red;"></span> <input type="text"
								class="form-control" name="userid" required value=<%=id%>>
							<input type="hidden" name="usertype" id="type"
								class="form-control" value=<%=type %>> <input
								type="hidden" name="useremail" id="email" class="form-control"
								value=<%=email %>>
						</div>
						<div class="form-group col-sm-8">
							<span style="color: red;"></span> <input type="text"
								class="form-control" name="userotp"
								placeholder="Enter your OTP number" required>
						</div>
						<div class="form-group col-sm-8">
							<a href="GenerateOTP?key = <%=email %>">Resend
								OTP</a>
						</div>
						<button type="submit" class="btn btn-primary  pull-right col-sm-3">Verify</button>
					</div>
				</form>
				<br>
				<br>
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