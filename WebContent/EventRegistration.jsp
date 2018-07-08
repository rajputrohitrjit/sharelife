<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>EventRegistration</title>
<style type="text/css">
.main_div {
	background-color: #d9d9d9;
	height: 900px;
	width: 800px;
	opacity: 0.8;
	border-radius: 25px;
}

.main_table {
	width: 600px;
}

.main_table input {
	border-radius: 10px;
	height: 35px;
	width: 350px;
	font-size: 16px;
}

select {
	border-radius: 10px;
	height: 35px;
	font-size: 16px;
}

td {
	padding-top: 12px;
}

textarea {
	background-color: white;
	font-size: 15px;
	border-radius: 10px;
}

.submit {
	border-radius: 10px;
	height: 35px;
	width: 170px;
	font-size: 16px;
	float: right;
	margin-right: 10%;
	margin-top: 8%;
	background-color: #4d94ff;
}
</style>
<script src="js/jquery-2.2.1.min.js"></script>
<script src="js/city.js"></script>
</head>
<body>
	<form action="EventSubmit" method=post>
		<center>
			<div class="main_div">
				<table class=main_table>
					<br>
					<caption>
						<font size=20px;>Event Registration</font><br>
						<br>
						<br>
						<br>
					</caption>
					<tr>
						<td><font size=5px>Event Name</font></td>
						<td><input type=text name="eventname"
							placeholder="Blood Donation Camp" size="40"></td>
					</tr>
					<tr>
						<td><font size=5px>Date</font></td>
						<td><input type=date name="date" size="40"></td>
					</tr>
					<tr>
						<td><font size=5px>Time</font></td>
						<td><input type=time name="time" size="40"></td>
					</tr>
					<tr>
						<td><font size=5px>State</font></td>
						<td><select name=state id="state" style="min-width: 20%;"></select></td>
					</tr>
					<tr>
						<td><font size=5px>City</font></td>
						<td><select name=city id="city"></select></td>
					</tr>
					<tr>
						<td><font size=5px>Address</font></td>
						<td><input type=text name="address" size="40"></td>
					</tr>
					<tr>
						<td><font size=5px>Message</font></td>
						<td><textarea name="message" rows="15" cols="55"></textarea></td>
					</tr>
				</table>
				<input type=submit class="btn btn-success" value="Submit">
			</div>
		</center>
	</form>
</body>
</html>