<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
    <head>  
    		<title>Change Password</title>
    		<link href="images/logo.png" rel="icon">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
 
            <!-- Optional theme -->
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

            <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script> 
            <!-- Latest compiled and minified JavaScript -->
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
        
            <!-- custom made js -->
            <script src="js/changepassword.js"></script>
            <!-- custom made css -->
            <link rel="stylesheet" href="css/changepassword.css">
        
            <!--  google fonts -->
            <link href="https://fonts.googleapis.com/css?family=Bellefair" rel="stylesheet">
            
            
    </head>
    
    <body>
        
        <div class="card" id="card">
          <div class="card-body">
            <center><h4 class="card-title">Change Password</h4></center>
            <form action="Changepassword" method="post">
              <div class="form-group">
                <label>Password:</label>
                <input type="password" class="form-control" id="password" name="password">
                <h5 style="width:300px;">Must fulfill following requirements:</h5>
					<ul style="font-size:12px; width:300px; list-style-type: none;" class="10">
				        <li id="10"><span style="color:red; font-size:18px;">&#215;</span>&nbsp;At least one lower case letter</li>
						<li id="11"><span style="color:red; font-size:18px;">&#215;</span>&nbsp;At least one upper case letter</li>
						<li id="12"><span style="color:red; font-size:18px;">&#215;</span>&nbsp;At least one number</li>
						<li id="13"><span style="color:red; font-size:18px;">&#215;</span>&nbsp;Be at least 8 characters</li>
                  </ul>	
              </div>
              <div class="form-group">
                <label for="pwd">Conform Password:</label>
                <input type="password" class="form-control" id="con_password">
                <div id="con_message" style="width:300px;"></div>
              </div>
              <div class="form-group">
                
              </div>
              <center><button type="submit" class="btn btn-success" id="sendform">Submit</button></center>
            </form>
          </div>
        </div>
    </body>
</html>