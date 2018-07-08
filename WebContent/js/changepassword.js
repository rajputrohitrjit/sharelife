$(document).ready(function(){
    // To check the strength of the password
	$('#password').keyup(function() {
		var pswd = $('#password').val().trim();
		var judge = 0;
		//validate the length
		if ( pswd.length < 8 ) {
			$('#13').html('<span style="color:red; font-size:18px;">&#215;</span>&nbsp;Be at least 8 characters');
			judge +=1;
		} else {
			$('#13').html('<span style="color:green; font-size:18px;">&#10003;</span>&nbsp;Be at least 8 characters');
		}
		
		//validate letter
		if ( !pswd.match('[a-z]') ) {
		    $('#10').html('<span style="color:red; font-size:18px;">&#215;</span>&nbsp;At least one lower case letter');
		    judge +=1;
		} else {
			$('#10').html('<span style="color:green; font-size:18px;">&#10003;</span>&nbsp;At least one lower case letter');
		}

		//validate capital letter
		if ( !pswd.match('[A-Z]') ) {
		    $('#11').html('<span style="color:red; font-size:18px;">&#215;</span>&nbsp;At least one upper case letter');
		    judge +=1;
		} else {
			$('#11').html('<span style="color:green; font-size:18px;">&#10003;</span>&nbsp;At least one upper case letter');
		}

		//validate number
		if ( !pswd.match('[0-9]') ) {
		    $('#12').html('<span style="color:red; font-size:18px;">&#215;</span>&nbsp;At least one number');
		    judge +=1;
		} else {
			$('#12').html('<span style="color:green; font-size:18px;">&#10003;</span>&nbsp;At least one number');
		}
		
		if(judge == 0){
			$('#con_password').prop('disabled',false);
		}else{
			$('#con_password').prop('disabled',true);
		}
	});	
// To check weather password is correct or not	
$('#con_password').keyup(function(){
	var password = $('#password').val();
	var confirm = $('#con_password').val();
	if(password == confirm){
        $('#sendform').prop('disabled',false);
		$('#con_message').html('<p style="color:green;">Correct Password</p>');
	}else{
        $('#sendform').prop('disabled',true);
		$('#con_message').html('<p style="color:red;">Password Mismatch</p>');
	}
});
    
});