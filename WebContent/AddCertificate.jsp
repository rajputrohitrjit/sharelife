<%@page import="Model.Organization"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
<script src="js/jquery-2.2.1.min.js"></script>
<script src="js/AddCertificatejs.js"></script>
</head>
<body>
	<%
		HttpSession ses = request.getSession();
		Organization O = (Organization) ses.getValue("SORG");
		try {
			O.getOrganization_id();
		} catch (Exception e) {
			response.sendRedirect("Login");
		}
	%>
	<form action="AddCertificate" method="post"
		enctype="multipart/form-data">
		<div class="form-group row"
			style="padding-left: 5%; padding-right: 5%;">
			<div class="row" style="margin-top: 20px;">
				<div class="col-sm-6 col-md-6">
					<label for="example-tel-input" class="col-form-label"><h2>Certificates</h2></label>
				</div>
				<div class="col-sm-6 col-md-6 ">
					<input class="form-control btn-success" type="button"
						id="example-text-input cncer" style="width: 50%; margin-top: 2%;"
						value="Add Certificates" onclick="newcertificate();">
				</div>
			</div>
			<ul style="margin-top: 2%;">
				<div id="certificatediv"></div>
			</ul>
			<div id=btnaction></div>
		</div>
	</form>
</body>
</html>