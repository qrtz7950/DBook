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


/* 검색어 자동완성 */
$(document).ready(function() {
    $('#ui-active-menuitem').css('font-size', '10px');
    $("input#autoText").autocomplete({
        width: 300,
        max: 10,
        delay: 100,
        minLength: 1,
        autoFocus: true,
        cacheLength: 1,
        scroll: true,
        highlight: false,
        source: function(request, response) {
            $.ajax({
                url: "http://127.0.0.1:8000/DBook/resources/assets/jsp/autocompleteDB2.jsp",
                dataType: "json",
                type: "post",
                data: request,
                success: function(data) {
                    response(data);
                },
                error: function(status, error){
                     console.log( status +' / ' + error);
                }
            });
        }
 
    });
});