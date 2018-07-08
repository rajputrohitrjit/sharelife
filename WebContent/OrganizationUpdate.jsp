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
<script src="js/city.js"></script>
<script src="js/OrgUpdatejs.js"></script>
<link href="css/orgupdate.css">
<title>OrganizationUpdate</title>

<style>
</style>
</head>
<body>

	<%
		HttpSession ses = request.getSession();
		Organization O = (Organization) ses.getValue("SORG");
		try {
			O.getOrganization_id();
		} catch (Exception e) {
			System.out.println("errot " + e);
			response.sendRedirect("Login.jsp");
		}
	%>


	<form id="orgform" autocomplete="off">
		<input type=hidden id=111 value='<%=O.getOrganization_id()%>'>
		<div class="form-group row"
			style="padding-left: 5%; padding-right: 5%;">
			<div class="col-sm-12 col-md-12">
				<center>
					<h1>Details Update</h1>
				</center>
			</div>
			<div class="col-sm-12 col-md-12">
				<div class="row" style="margin-top: 8px;">
					<div class="col-sm-12 col-md-12">
						<br>
					</div>
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
						<input class="form-control" type="text" id="example-text-input"
							name=orgname style="width: 250px;"
							value='<%=O.getOrganization_name()%>'>
					</div>
				</div>
				<div class="row" style="margin-top: 8px;">
					<div class="col-sm-6 col-md-6">
						<label for="example-tel-input" class="col-form-label">Organization
							Logo:</label>
					</div>
					<div class="col-sm-6 col-md-6">
						<div class="row">
							<div class="col-sm-6 col-md-6">
								<div class="embed-responsive embed-responsive-4by3">
									<img id="logoimg" src="organization_logo/<%=O.getLogo()%>"
										class="img-thumbnail" alt="'+<%=O.getOrganization_name()%>+'"
										style="height: 70px; width: 90px;"><br>
									<br> <input id="logoholo" name="logoholo" type=hidden
										value='organization_logo/<%=O.getLogo()%>'> <input
										type='file' value='organization_logo/<%=O.getLogo()%>'
										id=orglogo name=orglogo style='display: none;'> <input
										class="form-control btn-success" type="button"
										value="Change Logo" id="cnglogo" name="orglogo"
										style="max-width: 200px; width: 135px;">
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row" style="margin-top: 8px;">
					<div class="col-sm-6 col-md-6">
						<label for="example-tel-input" class="col-form-label">Central
							Office Address:</label>
					</div>
					<div class="col-sm-6 col-md-6">
						<input class="form-control" type="text" id="example-text-input"
							name=officeadd style="width: 250px;"
							value=<%=O.getCentral_office_address()%>>
					</div>
				</div>
				<div class="row" style="margin-top: 8px;">
					<div class="col-sm-6 col-md-6">
						<label for="example-tel-input" class="col-form-label">Email
							Address:</label>
					</div>
					<div class="col-sm-6 col-md-6">
						<input class="form-control" type="email" id="example-text-input"
							name=orgemail style="width: 250px;" value=<%=O.getEmail()%>>
					</div>
				</div>
				<div class="row" style="margin-top: 8px;">
					<div class="col-sm-6 col-md-6">
						<label for="example-tel-input" class="col-form-label">Organization
							Website:</label>
					</div>
					<div class="col-sm-6 col-md-6">
						<input class="form-control" type="text" id="example-text-input"
							name=orgwebsite style="width: 250px;" value=<%=O.getWebsite()%>>
					</div>
				</div>
				<%-- <div class="row" style="margin-top:8px;">
				<div class="col-sm-6 col-md-6">
					<label for="example-tel-input" class="col-form-label" >Organization Type:</label>	
				</div>
				<div class="col-sm-6 col-md-6">
					<input class="form-control" type="text"  id="example-text-input"  name=orgtype style="width:250px;" value=<%=O.getType() %>>
				</div>
			</div> --%>
				<div class="row" style="margin-top: 8px;">
					<div class="col-sm-12 col-md-12">
						<br>
					</div>
					<div class="col-sm-12 col-md-12">
						<h2>Administrative Head Details</h2>
					</div>
				</div>
				<div class="row" style="margin-top: 8px;">
					<div class="col-sm-6 col-md-6">
						<label for="example-tel-input" class="col-form-label">First
							Name:</label>
					</div>
					<div class="col-sm-6 col-md-6">
						<input class="form-control" type="text" id="example-text-input"
							name=hfname style="width: 250px;" value=<%=O.getFristname()%>>
					</div>
				</div>
				<div class="row" style="margin-top: 8px;">
					<div class="col-sm-6 col-md-6">
						<label for="example-tel-input" class="col-form-label">Last
							Name:</label>
					</div>
					<div class="col-sm-6 col-md-6">
						<input class="form-control" type="text" id="example-text-input"
							name=hlname style="width: 250px;" value=<%=O.getLastname()%>>
					</div>
				</div>
				<div class="row" style="margin-top: 8px;">
					<div class="col-sm-6 col-md-6">
						<label for="example-tel-input" class="col-form-label">Address:</label>
					</div>
					<div class="col-sm-6 col-md-6">
						<input class="form-control" type="text" id="example-text-input"
							name=add style="width: 250px;"
							value=<%=O.getAdministrative_address()%>>
					</div>
				</div>
				<div class="row" style="margin-top: 8px;">
					<div class="col-sm-6 col-md-6">
						<label for="example-tel-input" class="col-form-label">Email
							ID:</label>
					</div>
					<div class="col-sm-6 col-md-6">
						<input class="form-control" type="text" id="example-text-input"
							name=emailid style="width: 250px;"
							value=<%=O.getAdministrative_email()%>>
					</div>
				</div>
				<div class="row" style="margin-top: 8px;">
					<div class="col-sm-6 col-md-6">
						<label for="example-tel-input" class="col-form-label">Contact
							No:</label>
					</div>
					<div class="col-sm-6 col-md-6">
						<input class="form-control" type="text" id="example-text-input"
							name=contactno style="width: 250px;"
							value=<%=O.getAdministrative_phone()%>>
					</div>
				</div>
				<div class="row" style="margin-top: 8px;">
					<div class="col-sm-6 col-md-6">
						<label for="example-tel-input" class="col-form-label">Fax
							No:</label>
					</div>
					<div class="col-sm-6 col-md-6">
						<input class="form-control" type="text" id="example-text-input"
							name=faxno style="width: 250px;"
							value=<%=O.getAdministrative_fax()%>>
					</div>
				</div>
				<div class="row" style="margin-top: 8px;">
					<div class="col-sm-12 col-md-12">
						<hr style="width: 100%;">
					</div>
				</div>
				<div class="row" style="margin-top: 8px;">
					<div class="col-sm-6 col-md-6"></div>
					<div class="col-sm-6 col-md-6">
						<button id="sendform" class="form-control btn btn-success"
							style='width: 250px;'>Update Details</button>
					</div>
				</div>



			</div>
		</div>
	</form>


</body>
</html>