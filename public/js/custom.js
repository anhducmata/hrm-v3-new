$( document ).ready(function() {
    
	$('.empRel').on("click", function(){
		var i = $(this).data("id");
			name = $(this).attr("data-name");
			phone = $(this).attr("data-phone");
			depd = $(this).attr("data-depd");
			address = $(this).attr("data-address");
			rel = $(this).attr("data-rel");
		$('.emprel-contain').css('display','block');
		
		$('#emprel-form').attr("action", "profile/emprel/"+i);
		$("#rel-name").val(name);
		$("#rel-phone").val(phone);
		$("#rel-depd").val(depd);
		$("#rel-address").val(address);
		$("#rel-rel").val(rel);
	});

});