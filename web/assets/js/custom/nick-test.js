$(document).ready(function(){
	
	$(".nick-input").blur(function(){
		var nick =this.value;
		
		$.ajax({
			url: '/nick-test'
		});
	});
});


