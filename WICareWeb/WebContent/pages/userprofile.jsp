<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Signin Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="../../assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/bootstrap/css/signin.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>

   


   
  </head>

<body>

 <div class="container">

      <form class="form-signin" action="${pageContext.request.contextPath}/user.do" method="post" id="profile" role="form">
        <h2 class="form-signin-heading">Profile</h2>
        <input type="hidden" id="searchAction" name="action" value="userprofile">       
        
       
          
        
        	First Name: <input type="text" name="firstName" ><br> 
			Last Name: <input type="text" name="lastName"><br> 
			Email: <input type="text" name="email"><br>          
        
      


         
       
      
       
        
         
       
         <button class="btn btn-lg btn-primary btn-block" type="submit" >Next</button>
        

          
      </form>

    </div> <!-- /container -->
       <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>