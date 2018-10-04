/* MenuButton */
$(document).ready(function() {
	menuButton();
});

$(window).resize(function(){
	menuButton();
	
});


function menuButton(){
	
	if($(window).width()>660){
		$("#showTop").hide();
		$("#cbp-spmenu-s3").hide();								
		$(".topMenu-left").show();
		$("#showLeft").show();
		$("#cbp-spmenu-s1").show();
		$("#topMenu-search").show();
    }
	else if($(window).width()>450){
		$("#showTop").hide();
		$("#cbp-spmenu-s3").hide();								
		$("#topMenu-search").hide();
		$(".topMenu-left").show();
		$("#showLeft").show();
		$("#cbp-spmenu-s1").show();
	}
	else{
		$(".topMenu-left").hide();
		$("#showLeft").hide();
        $("#cbp-spmenu-s1").hide();
        $("#topMenu-search").hide();
		$("#showTop").show();
		$("#cbp-spmenu-s3").show();							
    }
}