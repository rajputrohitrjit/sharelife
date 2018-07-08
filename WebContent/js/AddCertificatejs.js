function resizeIframe(obj) {
	    obj.style.height = obj.contentWindow.document.body.scrollHeight + 'px';
}

function certificate(){
	$.getJSON("OrganizationCertificationJSON",{ajax:true},function(data){
		$c = 1;
		$('#certificatediv').html('');
		$out = '';
		$.each(data,function(i,item){
				$out +='<li><a target="_blank" href="certificate/'+item.CERTIFICATE+'">'+item.CERTIFICATE+'</a></li>'
		});
		$('#certificatediv').html($out); 
		
	});
}

function newcertificate(){
	$('#btnaction').html('<hr style="width:100%;"><input class="form-control" type=file id=newcerti name="newcerti" style="width:250px; margin-top:15px;"><div style="display:inline;">One Document at a time</div>');
	$('#btnaction').append('<br><br><input class="form-control btn-success" type="submit"  id="example-text-input cncer"  style="width:200px;" value="Upload" >');
}

$(document).ready(function(){
	certificate();
});

