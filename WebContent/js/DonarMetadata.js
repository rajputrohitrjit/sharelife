function loadmeta(){
	//Load the cities
	$.getJSON("DonarMetaJSON",{ajax:true,bg:$('#bloodgroup').val(),st:$('#state').val(),ci:$('#city').val()},function(data){
		var out = "<table style='text-align: center;'><tr style='font-size:1.3em;'><td style='padding-top:5px;padding-bottom:5px;'>S No.</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td style='padding-top:5px;padding-bottom:5px;'>City</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td style='padding-top:5px;padding-bottom:5px;'>Total Donors</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>";
		var count = 1;
		$.each(data,function(i,item){
			out +="<tr><td style='padding-top:5px;padding-bottom:5px;'>"+count+"</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td style='padding-top:5px;padding-bottom:5px;'>"+item.CITYNAME+"&nbsp;&nbsp;</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td style='padding-top:5px;padding-bottom:5px;'>"+item.TOTAL+"</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td style='padding-top:5px;padding-bottom:5px;'><button type='button' class='btn btn-dark btndetails' cid='"+item.CITYID+"' bg='"+$('#bloodgroup').val()+"' style='width:100px;display:inline;'>View Details</button></td></tr>";
			count +=1;
		});
		out +="</table>";
		$('#content').html(out);
	});
}
$(document).ready(function(){
	$.getJSON("DonarMetaJSON",{ajax:true,bg:'any',st:'0',ci:'0'},function(data){
		var out = "<table style='text-align: center;'><tr style='font-size:1.3em;'><td style='padding-top:5px;padding-bottom:5px;'>S No.</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td style='padding-top:5px;padding-bottom:5px;'>City</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td style='padding-top:5px;padding-bottom:5px;'>Total Donors</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>";
		var count = 1;
		$.each(data,function(i,item){
			out +="<tr><td style='padding-top:5px;padding-bottom:5px;'>"+count+"</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td style='padding-top:5px;padding-bottom:5px;'>"+item.CITYNAME+"&nbsp;&nbsp;</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td style='padding-top:5px;padding-bottom:5px;'>"+item.TOTAL+"</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td style='padding-top:5px;padding-bottom:5px;'><button type='button' class='btn btn-dark btndetails' cid='"+item.CITYID+"' bg='"+$('#bloodgroup').val()+"' style='width:100px;display:inline;'>View Details</button></td></tr>";
			count +=1;
		});
		out +="</table>";
		$('#content').html(out);
	});
	
	
	
	$('#content').on('click','.btndetails',function(){
		var count = 1;
		$.getJSON("CityDonarMetaJSON",{ajax:true,city:$(this).attr('cid'),bg:$(this).attr('bg')},function(data){
			var out = "<table style='text-align: center;'><tr style='font-size:1.3em;'><td style='padding-top:5px;padding-bottom:5px;'>S No.</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td style='padding-top:5px;padding-bottom:5px;'>Donar Name</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td style='padding-top:5px;padding-bottom:5px;'>Gender</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td style='padding-top:5px;padding-bottom:5px;'>Blood Group</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td style='padding-top:5px;padding-bottom:5px;'>Weight</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td style='padding-top:5px;padding-bottom:5px;'>Age</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>";
			var count = 1;
			var today = new Date();
			$.each(data,function(i,item){
				    var birthDate = new Date(item.DOB);
				    var age = today.getFullYear() - birthDate.getFullYear();
				    var m = today.getMonth() - birthDate.getMonth();
				    if (m < 0 || (m === 0 && today.getDate() < birthDate.getDate())) {
				        age--;
				    }
				  
				out +="<tr><td style='padding-top:5px;padding-bottom:5px;'>"+count+"</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td style='padding-top:5px;padding-bottom:5px;'>"+item.USERNAME+"</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td style='padding-top:5px;padding-bottom:5px;'>"+item.GENDER+"</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td style='padding-top:5px;padding-bottom:5px;'>"+item.BLOODGROUP+"</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td style='padding-top:5px;padding-bottom:5px;'>"+item.WEIGHT+"</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td style='padding-top:5px;padding-bottom:5px;'>"+age+"</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>";
				count +=1;
			});
			out +="<tr><td><button type='button' class='btn btn-dark' style='width:100px;display:inline;' onclick='loadmeta();'>Back</button></td></tr>";
			out +="</table>";
			$('#content').html(out);
		});
	});
});