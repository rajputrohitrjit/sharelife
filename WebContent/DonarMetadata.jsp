<%@page import="Model.Organization"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>ShareLife</title>

<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">


<script src="js/jquery-2.2.1.min.js"></script>
<script src="js/city.js"></script>
<script src="js/DonarMetadata.js"></script>
</head>
<body>
	<%-- 
<%
	HttpSession ses = request.getSession();
	Organization O = (Organization)ses.getValue("SORG");
		try{
			O.getOrganization_id();
		}
	catch(Exception e){
		response.sendRedirect("Login.jsp");
	}
		
	%>
	--%>
	<%--////////////////////////////////////////////  NAVBAR ///////////////////////////////////// --%>

	<div id="navbarbody">
		<nav class="navbar navbar-inverse bg-faded fixed-top"
			style='width:100%;'>
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>

				<a class="navbar-brand">Search Options</a>
			</div>

			<div class="collapse navbar-collapse" id="myNavbar">
				<div class="navbar-form navbar-left" role="search">
					<div class="form-group">
						<select id="bloodgroup" class="form-control" style='width: 100%;'>
							<option value="any">Blood Group</option>
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

					<div class="form-group">
						<select id="state" class="form-control">
						</select>
					</div>

					<div class="form-group">
						<select id="city" class="form-control">
						</select>
					</div>

					<div class="form-group form-right">
						<button class="btn btn-default" style="width: 250px;"
							onclick="loadmeta();">Submit</button>
					</div>
				</div>

			</div>
		</div>
		</nav>
	</div>







	<%-- ///////////////////////////////////////////   Here is the data ////////////////////////////// --%>

	<div class="container" id="content"></div>

</body>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
</html>