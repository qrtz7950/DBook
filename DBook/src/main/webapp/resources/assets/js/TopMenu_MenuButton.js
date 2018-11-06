/* MenuButton *//*
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
}*/

$(document).ready(function() {
	depend_on_login();
});

function depend_on_login(){
	if(b_check_login){
		$('#btn-login').css('display', 'none');
		$('#btn-logout').css('display', 'block');
		$('#user-nickname').css('display', 'block');
	}else{
		$('#btn-login').css('display', 'block');
		$('#btn-logout').css('display', 'none');
		$('#user-nickname').css('display', 'none');
	}
}