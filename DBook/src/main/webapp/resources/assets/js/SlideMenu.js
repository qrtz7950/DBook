var menuLeft = document.getElementById( 'cbp-spmenu-s1' ),
	menuTop = document.getElementById( 'cbp-spmenu-s3' ),
	showLeft = document.getElementById( 'showLeft' ),
	showTop = document.getElementById( 'showTop' ),
	body = document.body;

showLeft.onclick = function() {
	classie.toggle( this, 'active' );
	classie.toggle( menuLeft, 'cbp-spmenu-open' );
	disableOther( 'showLeft' );
};

showTop.onclick = function() {
	classie.toggle( this, 'active' );
	classie.toggle( menuTop, 'cbp-spmenu-open' );
	disableOther( 'showTop' );
};

function disableOther( button ) {
	if( button !== 'showLeft' ) {
		classie.toggle( showLeft, 'disabled' );
	}
	if( button !== 'showTop' ) {
		classie.toggle( showTop, 'disabled' );
	}
}