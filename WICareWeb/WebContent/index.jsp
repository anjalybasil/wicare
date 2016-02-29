
<html>
<head>
<script>

	//var mine = window.open('','','width=1,height=1,left=0,top=0,scrollbars=no');
	
	var result = window.open('http://localhost:8080/WICareWeb/jsp/home.jsp','','toolbar=no,menubar=no,resizable=yes,status=yes')			 	
 	if(result) {		
		window.opener = window
		window.close();
	} else {
		alert("We have detected that you are using popup blocking software.")
	}   		
	
</script>
</head>

</html>