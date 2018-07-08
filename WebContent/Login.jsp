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
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Login</title>
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