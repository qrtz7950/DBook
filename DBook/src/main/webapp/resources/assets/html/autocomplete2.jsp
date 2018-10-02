<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>jQuery Autocomplete</title>
<script src="http://code.jquery.com/jquery-1.7.js"
    type="text/javascript"></script>
<script
    src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"
    type="text/javascript"></script>
<link
    href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css"
    rel="stylesheet" type="text/css" />
<STYLE TYPE="text/css" media="all">
.ui-autocomplete {  
    position: absolute; 
    cursor: default; 
    height: 230px; 
    overflow-y: hidden; 
    overflow-x: hidden;}
.ui-widget{
     font-size: 12px;
}
</STYLE>
 
<script type="text/javascript">
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
                url: "../jsp/autocompleteDB2.jsp",
                dataType: "json",
                type: "post",
                data: request,
                success: function( data) {
                    response(data);
                },
                error: function(status, error){
                     console.log( status +' / ' + error);
                }
            });
        }
 
    });
});
</script>
</head>
<body>
       <table>
            <tr>
                <td><input id="autoText" maxlength="20" />
                </td>
            </tr>
        </table>
</body>
</html>