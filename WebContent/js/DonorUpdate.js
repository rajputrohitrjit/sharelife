/**
 *  Donor update for DonorUpdate.jsp page 
 */

$(document).ready(function(){
	
	
	
	// To set the Gender
	var ftype = $('#gderinfo').val();
    $("#gder option[value='"+ftype+"']").attr('selected',true);
	
    // To set the Blood Group
    var ftype = $('#bgroupinfo').val();
    $("#bgroup option[value='"+ftype+"']").attr('selected',true);
    
    // To set the state 
    $('#state').append($('<option>').text("State").val("0"));
	$('#city').append($('<option>').text("Select City").val("0"));
	
	// Fetch the states
	$.getJSON("StateJSON",{ajax:true},function(data){
		$.each(data,function(i,item){
			$('#state').append($('<option>').val(item.STATEID).text(item.STATENAME));
		});
		// set the state
		var ftype = $('#stateinfo').val();
	    $("#state option[value='"+ftype+"']").attr('selected',true);
	    
	    // Fetch the cities of selected state
	    $.getJSON("CityJSON",{ajax:true,stateid:$("#stateinfo").val()},function(data){
			$("#city").empty();
			$("#city").append($('<option>').text("Select City").val("0"));
			$.each(data,function(i,item){
				$("#city").append($('<option>').val(item.CITYID).text(item.CITYNAME));
			});
			// set the city
			var ftype = $('#cityinfo').val();
		    $("#city option[value='"+ftype+"']").attr('selected',true);
		});
	});
	
	// fetch the cities on state change
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