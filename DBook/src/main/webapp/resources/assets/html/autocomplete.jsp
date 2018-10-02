<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>jQuery 자동 완성</title>
<link rel = "stylesheet" href="../css/jquery.autocomplete.css"/>
<script type="text/javascript" src="../js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="../js/jquery.autocomplete.js"></script>
<script type="text/javascript">

	$(function(){
		$("#keyword").autocomplete("../jsp/autocompleteDB.jsp"); //한줄. 서버에서 키워드 리스 가져오기
		
	});
</script>
</head>
<body>
	<input type="text" id="keyword" size="20" name="keyword" />
</body>
</html>