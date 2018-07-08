<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>ShareLife/OgranizationHome/EventRegistration</title>

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

<style type="text/css">
</style>
</head>
<body>

	<form action="EventSubmit" method=post autofill='off'>
		<div class="form-group row"
			style="padding-left: 5%; padding-right: 5%;">
			<div class="col-sm-12 col-md-12">
				<center>
					<h1>Event Registration</h1>
				</center>
			</div>
			<div class="col-sm-12 col-md-12">

				<div class="row" style="margin-top: 8px;">
					<div class="col-sm-6 col-md-6">
						<label for="example-tel-input" class="col-form-label">Event
							Name:</label>
					</div>
					<div class="col-sm-6 col-md-6">
						<input class="form-control" type="text" id="example-text-input"
							name=eventname style="width: 300px;" required>
					</div>
				</div>
				<div class="row" style="margin-top: 8px;">
					<div class="col-sm-6 col-md-6">
						<label for="example-tel-input" class="col-form-label">Date:</label>
					</div>
					<div class="col-sm-6 col-md-6">
						<input class="form-control" type="date" name=date
							style="width: 300px;" required>
					</div>
				</div>
				<div class="row" style="margin-top: 8px;">
					<div class="col-sm-6 col-md-6">
						<label for="example-tel-input" class="col-form-label">Timing:</label>
					</div>
					<div class="col-sm-6 col-md-6">
						<input class="form-control" type="time" name=time
							style="width: 300px;" required>
					</div>
				</div>
				<div class="row" style="margin-top: 8px;">
					<div class="col-sm-6 col-md-6">
						<label for="example-tel-input" class="col-form-label">State:</label>
					</div>
					<div class="col-sm-6 col-md-6">
						<select name=state id="state" style="width: 300px;"
							class="form-control" required></select>
					</div>
				</div>
				<div class="row" style="margin-top: 8px;">
					<div class="col-sm-6 col-md-6">
						<label for="example-tel-input" class="col-form-label">City:</label>
					</div>
					<div class="col-sm-6 col-md-6">
						<select name=city id="city" style="width: 300px;"
							class="form-control" required></select>
					</div>
				</div>
				<div class="row" style="margin-top: 8px;">
					<div class="col-sm-6 col-md-6">
						<label for="example-tel-input" class="col-form-label">Address:</label>
					</div>
					<div class="col-sm-6 col-md-6">
						<input class="form-control" type="text" id="example-text-input"
							name=address style="width: 300px;" required>
					</div>
				</div>
				<div class="row" style="margin-top: 8px;">
					<div class="col-sm-6 col-md-6">
						<label for="example-tel-input" class="col-form-label">Event
							Coordinator:</label>
					</div>
					<div class="col-sm-6 col-md-6">
						<input class="form-control" type="text" id="example-text-input"
							name='coordinator_name' style="width: 300px;" required>
					</div>
				</div>
				<div class="row" style="margin-top: 8px;">
					<div class="col-sm-6 col-md-6">
						<label for="example-tel-input" class="col-form-label">Event
							Coordinator Phone no.:</label>
					</div>
					<div class="col-sm-6 col-md-6">
						<input class="form-control" type="number" id="example-text-input"
							name='coordinator_phone' style="width: 300px;" required>
					</div>
				</div>
				<div class="row" style="margin-top: 8px;">
					<div class="col-sm-6 col-md-6">
						<label for="example-tel-input" class="col-form-label">Event
							Coordinator Email-id:</label>
					</div>
					<div class="col-sm-6 col-md-6">
						<input class="form-control" type="text" id="example-text-input"
							name='coordinator_emailid' style="width: 300px;" required>
					</div>
				</div>
				<div class="row" style="margin-top: 8px;">
					<div class="col-sm-6 col-md-6">
						<label for="example-tel-input" class="col-form-label">Message:</label>
					</div>
					<div class="col-sm-6 col-md-6">
						<textarea rows="15" cols="55" name=message class="form-control"></textarea>
					</div>
				</div>
				<div class="row" style="margin-top: 8px;">
					<div class="col-sm-6 col-md-6"></div>
					<div class="col-sm-6 col-md-6">
						<input class="form-control btn-success" type="submit"
							style="width: 300px;">
					</div>
				</div>

			</div>
		</div>
	</form>
</body>
</html>