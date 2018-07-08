var $ = jQuery;
$(document).ready(function(){
	$('#state').append($('<option>').text("State").val("0"));
	$('#city').append($('<option>').text("Select City").val("0"));
	$.getJSON("StateJSON",{ajax:true},function(data){
		$.each(data,function(i,item){
			$('#state').append($('<option>').val(item.STATEID).text(item.STATENAME));
		});
	});
	
	$('#state').change(function(){
		$.getJSON("CityJSON",{ajax:true,stateid:$("#state").val()},function(data){
			$("#city").empty();
			$("#city").append($('<option>').text("Select City").val("0"));
			$.each(data,function(i,item){
				$("#city").append($('<option>').val(item.CITYID).text(item.CITYNAME));
			});
		});
	});
});