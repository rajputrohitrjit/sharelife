function changelogo(){
	$('#orglogo').click();
}



$(document).ready(function(){
	
	$.getJSON("OrganizationCertificationJSON",{ajax:true},function(data){
		$c = 1;
		$('#certificatediv').html('');
		$out = '';
		$.each(data,function(i,item){
				$out +='<li><a href="certificate/'+item.CERTIFICATE+'">'+item.CERTIFICATE+'</a></li>'
		});
		$('#certificatediv').html($out); 
		
	});
	
	
	
	
	// To change logo on click of button
	$('#cnglogo').click(function(){
		changelogo();
	});
	
	// giving preview on change of logo
	$('#orglogo').change(function(event){
		var tmppath = URL.createObjectURL(event.target.files[0]);
	    $("img").attr('src',tmppath);
	    $("#logoholo").attr('value',tmppath);
	});
	
	$('#sendform').click(function(event){
		
		// stop the default function
		event.preventDefault();
		
		// get the form
		var form = $('#orgform')[0];
		
		// create formdata object
		var data = new FormData(form);
		
		$('#cncer').prop('disabled',true);
		
		$.ajax({
			type: "post",
			enctype: "multipart/form-data",
			url: "OrganizationUpdate",
			data: data,
			processData: false,
			contentType:false,
			cache:false,
			success:function(response){
				parent.location.reload();
				$('html,body').scrollTop(0);
			}
		});
	});
	
	
	
	
	
	
});