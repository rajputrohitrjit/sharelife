$(document).ready(function() {
	$("form").submit(function() {
		$("form :input").prop("disabled", true);
	});
});