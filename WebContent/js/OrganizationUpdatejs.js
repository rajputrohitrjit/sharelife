$(document).ready(function(){
	
	$.getJSON("OrganizationCertificationJSON",{ajax:true,orgid:$('#111').val()},function(data){
		$c = 1;
		$('#certificatediv').html('');
		$out = '<div class="row" style="margin-top:8px;">';
		$.each(data,function(i,item){
			if($c == 4){
				$out += '</div>';
				c$=1;
				$out += '<div class="row" style="margin-top:8px;">';
			}
			$out += '<div class="col-sm-12 col-md-4">'
				+ '<div class="embed-responsive embed-responsive-4by3">'
				+ '<object width="150" height="200" data="certificate/'+item.CERTIFICATE+'"></object>'
				+ '</div>';
			$c +=1;
		});
		$out = '</div>';
		alert($out);
		$('#certificatediv').html($out);
	});
});