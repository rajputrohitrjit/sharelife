<%@page import="Model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>ShareLife</title>
<link href="images/logo.png" rel="icon">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
<link href="https://fonts.googleapis.com/css?family=Bellefair"
	rel="stylesheet">
<!-- Bootstrap CSS CDN -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- Our Custom CSS -->
<link rel="stylesheet" href="css/style4.css">
<link href="css/footer.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Bellefair"
	rel="stylesheet">

<%-- Resize the frame according to contenct load in it --%>
<script>
	  function resizeIframe(obj) {
	    obj.style.height = obj.contentWindow.document.body.scrollHeight +600 + 'px';
	  }
</script>


</head>

<body>
	<%-- Fetch the data from the session  --%>
	<%
		HttpSession ses = request.getSession(false);
		User U = null;
		if(ses != null){
			U  = (User) ses.getValue("SUSER");
		}else{
			response.sendRedirect("Login.jsp");
		}
%>


	<%-- Navbar body START --%>
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
					<li class="active"><a href="Logout">Home</a></li>
					<li><a href="About.html" target="_blank">About</a></li>
					<li><a href="Information.html" target="_blank">Guidelines</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href='#'><div id="sidebarCollapse">
								<span class="glyphicon glyphicon-user"></span>Account Details
							</div></a></li>
					<li><a href="Logout"><span
							class="glyphicon glyphicon-log-in"></span> Logout</a></li>
				</ul>
			</div>
		</div>
		</nav>
	</div>
	<%-- Navbar body END --%>

	<div class="wrapper">
		<!-- Sidebar Holder -->
		<nav id="sidebar">
		<div class="sidebar-header">
			<center>
				<div>
					<img src="images/user.png"
						class="img-circle img-thumbnail img-responsive"
						style='height: 4em; width: 4em;'>
				</div>
				<h3 font='20px'><%=U.getUsername() %></h3>
				<strong></strong>
			</center>
		</div>

		<ul class="list-unstyled components">
			<li class="active"><a href="Donorhomelink.jsp"
				onclick='sidebarcollapse();' target='iframe'> <i
					class="glyphicon glyphicon-home"></i> Home
			</a></li>
			<li><a href="DonorUpdate.jsp" target='iframe'
				onclick='sidebarcollapse();'> <i
					class="glyphicon glyphicon-briefcase"></i> Update Details
			</a></li>
			<li><a href="Resetpassword.jsp" target='iframe'
				onclick='sidebarcollapse();'> <i
					class="glyphicon glyphicon-briefcase"></i> Reset Password
			</a></li>
		</ul>
		</nav>

		<div class="container-fluid" style="height: 100%; width: 100%;">
			<iframe src="Donorhomelink.jsp" name="iframe" frameBorder="0"
				style="width: 100%;" onload="resizeIframe(this)" scrolling="yes"></iframe>
		</div>

	</div>





	<!-- jQuery CDN -->
	<script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
	<!-- Bootstrap Js CDN -->
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

	<script type="text/javascript">
             $(document).ready(function () {
                 $('#sidebarCollapse').on('click', function () {
                     $('#sidebar').toggleClass('active');
                 });
             });
             function sidebarcollapse(){
            	 if(!$('#sidebar').hasClass('active')){
            		 $('#sidebar').toggleClass('active'); 
            	 }
             }
         </script>
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










