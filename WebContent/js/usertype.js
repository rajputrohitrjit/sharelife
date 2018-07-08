$('document').ready(function(){
	$( ".select" ).change(function() {
		var myValue = $( ".select" ).val();
		if(myValue == "organization"){
			$('.utype').html('<input type="number" name="userid"  class="form-control">');
			$('.utype2').html('<input type="number" name="recovery" class="form-control" autocomplete="off">');
			$('.utype3').html('<p>Type your Account ID</p>');
			$('#type4').attr('value', 'organization');
			
		}else if(myValue == "user"){
			$('.utype').html('<input type="email" name="userid" id="email" class="form-control" placeholder="somebody@example.com">');
			$('.utype2').html('<input type="email" name="recovery" id="recovery-email" class="form-control" autocomplete="off" placeholder="somebody@example.com">');
			$('.utype3').html('<p>Type your email account</p>');
			$('#type4').attr('value', 'user');
			
		}
	});
	/*
	$("#otp-generate").click(function () {
        $('#otp-user').val($('.recovery-email').val());
     });
	*/
	
});