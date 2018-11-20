$(document).ready(function() {
	depend_on_login();
});

function depend_on_login(){
	if(b_check_login){
		$('#btn-login').css('display', 'none');
		$('#btn-logout').css('display', 'block');
		$('#user-nickname').css('display', 'block');
		$('#new-rating').css('display', 'block');
	}else{
		$('#btn-login').css('display', 'block');
		$('#btn-logout').css('display', 'none');
		$('#user-nickname').css('display', 'none');
		$('#new-rating').css('display', 'none');
	}
}