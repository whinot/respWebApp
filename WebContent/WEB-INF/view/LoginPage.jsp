<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>

<style type="text/css">
.failed {
	color: red;
}
</style>
	
	<!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<!-- Jquery -->
    <script src="http://code.jquery.com/jquery-3.2.1.js" integrity="sha256-DZAnKJ/6XZ9si04Hgrsxu/8s717jcIzLy3oi35EouyE=" crossorigin="anonymous">
  	</script>
</head>
<body>

<div class="container">    
<!-- Login form -->

    <div class="row">
    	<div class="col-md-4 col-md-offset-4">
    		<div class="panel panel-default">
			  	<div class="panel-heading">
			    	<h3 class="panel-title">Welcome</h3>
			 	</div>
			  	<div class="panel-body">
			    	<form:form action="${pageContext.request.contextPath}/authenticateUser" method="POST" accept-charset="UTF-8" role="form">
			    	
			    	<c:if test="${param.error != null}">
						<div class="alert alert-danger">
							Invalid username and password.
						</div>
					</c:if>
					
					<c:if test="${param.logout != null}">
										            
						<div class="alert alert-success">
							You have been logged out.
						</div>		    
					</c:if>
					
                    <fieldset>
			    	  	<div class="form-group" >
			    	  		<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span> 
			    		    <input class="form-control" placeholder="username or mail" name="username" type="text">
			    		</div>
			    		<div class="form-group">
			    			<span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span> 
			    			<input class="form-control" placeholder="Password" name="password" type="password" value="">
			    		</div>
			    		<div class="checkbox">
			    	    	<label>
			    	    		<input name="remember" type="checkbox" value="Remember Me"> Remember Me
			    	    	</label>
			    	    </div>
			    		<input class="btn btn-lg btn-success btn-block" type="submit" value="Login">
			    	</fieldset>
			      	</form:form>
                 <hr/>
			    </div>
			</div>
		</div>
	</div>
</div>
</body>
</html>