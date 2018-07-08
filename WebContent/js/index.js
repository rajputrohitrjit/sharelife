


$(document).ready(function(){
	
	var out = "";
	$.getJSON("EventFetchJSON",{ajax:true},function(data){
		$.each(data,function(i,item){
			out ="<div class='row' style='padding-top:5px;padding-bottom:5px;border: 1px solid black; border-radius:10px;margin-bottom:5px;'><div class='col-xs-3 col-sm-2 col-md-1 col-xl-1'><img src='organization_logo/"+item.LOGO+"' class='img-thumbnail' style='width:70px;height:70px'></div>"
			    +"<div class='col-xs-9 col-sm-10 col-md-4 col-xl-4'><p style='font-size:2em;font-family: 'Bellefair', serif;'>"+item.NAME+"</p><p>"+item.ORGANIZATION_NAME+"</p></div>"
			    +"<div class='col-xs-12 col-sm-12 col-md-5 col-xl-5' id='details'>"
			        +"<div class='row'><div class='col-xs-2 col-sm-2 col-md-12 col-xl-12'><p style='font-weight:bold;'>Details:</p></div><div class='col-xs-10 col-sm-10 col-md-12 col-xl-12'><div class='row'><div class='col-xs-12 col-sm-12 col-md-12 col-xl-12'><p>"+item.ADDRESS+",&nbsp;"+item.CITY+",&nbsp;"+item.STATE+"</p></div><div class='col-xs-12 col-sm-12 col-md-12 col-xl-12'><input type='date' readonly value='"+item.DATE+"' style='boder:bone;border-color:transparent;'><input type='time' readonly value='"+item.TIME+"' style='boder:bone;border-color:transparent;'></div></div></div></div></div>"
			    +"<div class='col-xs-12 col-sm-12 col-md-1 col-xl-1' id='vdetails'><a href='EventDetails?101="+item.ID+"' style='float:right;'>View&nbsp;Details</></div>"
			    +"</div><br/>"; 
			    $('#content').append(out);
		});
	});	
 
	
	

	
	
  // Add smooth scrolling to all links
  $("#aevents").on('click', function(event) {

    // Make sure this.hash has a value before overriding default behavior
    if (this.hash !== "") {
      // Prevent default anchor click behavior
      event.preventDefault();

      // Store hash
      var hash = this.hash;

      // Using jQuery's animate() method to add smooth page scroll
      // The optional number (800) specifies the number of milliseconds it takes to scroll to the specified area
      $('html, body').animate({
        scrollTop: $(hash).offset().top
      }, 1000, function(){
   
        // Add hash (#) to URL when done scrolling (default click behavior)
        window.location.hash = hash;
      });
    } // End if
  });
    
    

	
	//Check to see if the window is top if not then display button
	$(window).scroll(function(){
		if ($(this).scrollTop() > 100) {
			$('.scrollToTop').fadeIn();
		} else {
			$('.scrollToTop').fadeOut();
		}
	});
	
	//Click event to scroll to top
	$('.scrollToTop').click(function(){
		$('html, body').animate({scrollTop : 0},800);
		return false;
	});
	
    
    
    
    
});