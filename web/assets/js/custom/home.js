$(document).ready(function(){
//	alert("USERS");
	var ias = jQuery.ias({
		container: '#timeline .box-content',
		item: '.publication-item',
		pagination: '#timeline .pagination',
		next: '#timeline .pagination .next_link',
		triggetPageThreshold: 5
	});
	
	ias.extension(new IASTriggerExtension({
		text: 'Ver más publicaciones',
		offset: 3
	}));
	
	ias.extension(new IASSpinnerExtension({
		src: URL+'/../assets/images/ajax-loader.gif'
	}));
	
	ias.extension(new IASNoneLeftExtension({
		text: 'No hay mas publicaciones'
	}));
	
	ias.on('ready', function(event){
		buttons();
	});
	ias.on('rendered', function(event){
		buttons();
	});
});

function buttons(){
	
}


