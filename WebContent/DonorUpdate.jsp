<%@page import="Model.User"%>
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

<link href="css/orgupdate.css">
<script src="js/DonorUpdate.js"></script>
<title>Donor/Update</title>

<style>
</style>
</head>
<body>

	<%
		HttpSession ses = request.getSession(false);
		User U = null;
		if (ses != null) {
			U = (User) ses.getValue("SUSER");
		} else {
			response.sendRedirect("Login.jsp");
		}
	%>


	<form action="DonorUpdate" autocomplete="off" method="post">
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
						<h2>Donor Details</h2>
					</div>
				</div>
				<div class="row" style="margin-top: 8px;">
					<div class="col-sm-6 col-md-6">
						<label for="example-tel-input" class="col-form-label">Name:</label>
					</div>
					<div class="col-sm-6 col-md-6">
						<input class="form-control" type="text" id="example-text-input"
							name=username style="width: 250px;" value='<%=U.getUsername()%>'>
					</div>
				</div>
				<div class="row" style="margin-top: 8px;">
					<div class="col-sm-6 col-md-6">
						<label for="example-tel-input" class="col-form-label">Email
							ID:</label>
					</div>
					<div class="col-sm-6 col-md-6">
						<div class="row">
							<div class="col-sm-6 col-md-6">
								<input class="form-control" type="email" id="example-text-input"
									name=email style="width: 250px;" value='<%=U.getEmailid()%>'>
							</div>
						</div>
					</div>
				</div>
				<div class="row" style="margin-top: 8px;">
					<div class="col-sm-6 col-md-6">
						<label for="example-tel-input" class="col-form-label">Date
							of Birth:</label>
					</div>
					<div class="col-sm-6 col-md-6">
						<input class="form-control" type="date" id="example-text-input"
							name=dob style="width: 250px;" value=<%=U.getDob()%>>
					</div>
				</div>
				<div class="row" style="margin-top: 8px;">
					<div class="col-sm-6 col-md-6">
						<label for="example-tel-input" class="col-form-label">Gender:</label>
					</div>
					<div class="col-sm-6 col-md-6">
						<input type="hidden" id="gderinfo" value="<%=U.getGender()%>">
						<select class="form-control" required id="gder" name="gder"
							style="width: 250px;">
							<option value="male">Male</option>
							<option value="female">Female</option>
							<option value="other">Other</option>
						</select>
					</div>
				</div>
				<div class="row" style="margin-top: 8px;">
					<div class="col-sm-6 col-md-6">
						<label for="example-tel-input" class="col-form-label">Blood
							Group:</label>
					</div>
					<div class="col-sm-6 col-md-6">
						<input type="hidden" id="bgroupinfo"
							value="<%=U.getBloodgroup()%>"> <select
							class="form-control" required id="bgroup" name="bgroup"
							style="width: 250px;">
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
				<div class="row" style="margin-top: 8px;">
					<div class="col-sm-6 col-md-6">
						<label for="example-tel-input" class="col-form-label">Weight:</label>
					</div>
					<div class="col-sm-6 col-md-6">
						<input class="form-control" required type="number"
							id="example-text-input" name="wght" value="<%=U.getWeight()%>"
							style="width: 250px;">
					</div>
				</div>
				<div class="row" style="margin-top: 8px;">
					<div class="col-sm-6 col-md-6">
						<label for="example-tel-input" class="col-form-label">Residence
							Phone:</label>
					</div>
					<div class="col-sm-6 col-md-6">
						<input class="form-control" type="number" id="example-tel-input"
							name="rphone" value="<%=U.getResidencephone()%>"
							style="width: 250px;">
					</div>
				</div>
				<div class="row" style="margin-top: 8px;">
					<div class="col-sm-6 col-md-6">
						<label for="example-tel-input" class="col-form-label">Mobile
							No:</label>
					</div>
					<div class="col-sm-6 col-md-6">
						<input class="form-control" type="tel" id="example-tel-input"
							name="mno" value="<%=U.getMobileno()%>" style="width: 250px;">
					</div>
				</div>
				<div class="row" style="margin-top: 8px;">
					<div class="col-sm-6 col-md-6">
						<label for="example-tel-input" class="col-form-label">Address:</label>
					</div>
					<div class="col-sm-6 col-md-6">
						<input class="form-control" required type="text"
							id="example-text-input" name="adress" value="<%=U.getAddress()%>"
							style="width: 250px;">
					</div>
				</div>
				<div class="row" style="margin-top: 8px;">
					<div class="col-sm-6 col-md-6">
						<label for="example-tel-input" class="col-form-label">State:</label>
					</div>
					<div class="col-sm-6 col-md-6">
						<input type="hidden" id="stateinfo" value="<%=U.getState()%>">
						<select class="form-control" required id="state" name="state"
							style="width: 250px;"></select>
					</div>
				</div>
				<div class="row" style="margin-top: 8px;">
					<div class="col-sm-6 col-md-6">
						<input type="hidden" id="cityinfo" value="<%=U.getCity()%>">
						<label for="example-tel-input" class="col-form-label">City:</label>
					</div>
					<div class="col-sm-6 col-md-6">
						<select class="form-control" required id="city" name="city"
							style="width: 250px;"></select>
					</div>
				</div>
				<div class="row" style="margin-top: 8px;">
					<div class="col-sm-6 col-md-6"></div>
					<div class="col-sm-6 col-md-6">
						<button type="submit" class="form-control btn btn-success"
							style='width: 250px;'>Update Details</button>
					</div>
				</div>
			</div>
		</div>
	</form>


</body>
</html>