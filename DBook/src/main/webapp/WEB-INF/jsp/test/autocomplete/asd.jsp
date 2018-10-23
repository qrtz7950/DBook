<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

걍 에이작스 <input id="serch" type="text"><br>
제이쿼리 오토컴플리트<input id="autoText" type="text">

<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"></script>
<script type="text/javascript">

$(document).ready(function() {
	
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
                url: "../DBook/asdf.json",
                dataType: "json",
                type: "get",
                data: {
        			keyword:$("#serch").val()
        		},
                success: function(data, url) {
                	console.log(url);
                	console.log(data);
                },
                error: function(status, error){
                     console.log( status +' / ' + error);
                }
            });
        }
 
    });
    
    $("#serch").keyup(function(){

    	$.ajax({
    		delay: 500,
    		type:"get",
    		url : "../DBook/asdf.json",
    		data : {
    			keyword:$("#serch").val()
    		},
    		dataType : "json",
    		success : function(data) {
    			console.log(data);
    		}
    	});
    });
    
    
}); 



</script>
</body>
</html>