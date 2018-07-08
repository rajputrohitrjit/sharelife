<%@page import="Model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<title>Sharelife</title>
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

<script type="text/javascript" src="js/Eventfetch.js"></script>
<%
            	HttpSession ses = request.getSession();
            	User U = (User) ses.getAttribute("SUSER");
            	String logintime = (String) ses.getAttribute("STIME");
            %>
</head>

<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-12 col-xs-12 col-md-12 cd-xl-12">
				<p>Welcome</p>
			</div>
			<div class="col-12 col-xs-12 col-md-12 cd-xl-12">
				<div class="row">
					<div class="col-6 col-xs-6 col-md-6 cd-xl-6">
						<p><%=U.getUsername() %></p>
					</div>
					<div class="col-6 col-xs-6 col-md-6 cd-xl-6"
						style="text-align: right;"><%=logintime %></div>
				</div>
			</div>
			<div class="row">
				<div class="col-12 col-xs-12 col-md-12 cd-xl-12">
					<hr style="width: 100%;">
				</div>
			</div>
		</div>
		<br>
		<br>
		<div class="container-fluid">
			<center>
				<h2>Upcomming Events</h2>
			</center>
		</div>
		<br>
		<br>
		<br>
		<div id="content" class="container"></div>
	</div>
</body>

</html>