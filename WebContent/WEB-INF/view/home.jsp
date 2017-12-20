<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec"  uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>

	<!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<link href="${mainCss}" rel="stylesheet" />
    <script src="${mainJs}"></script>
	<!-- Jquery -->
    <script src="http://code.jquery.com/jquery-3.2.1.js"
  	integrity="sha256-DZAnKJ/6XZ9si04Hgrsxu/8s717jcIzLy3oi35EouyE="
  	crossorigin="anonymous">
  	</script>

</head>
<body>
    <!-- NAVBAR  -->
 <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
      	<sec:authorize access="${functionBean.userFunction}">
    	<li ><a  class="navbar-brand" href="" >User Menu</a></li>
		</sec:authorize>
		
		<sec:authorize access="${functionBean.managerFunction}">
    	<li ><a  class="navbar-brand" href="processForm" >Manager Menu</a></li>
		</sec:authorize>
        
        <li><form:form action="${pageContext.request.contextPath}/logout" method="POST"> 
        	<input type="submit" value="Logout" class="btn btn-danger navbar-btn" />
        </form:form></li>
      </ul>
     </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
    
      

<div class="container">    
<!-- Login form -->

    <div class="row">
    	<div class="col-md-4 col-md-offset-4">
    		<div class="panel panel-default">
			  	<div class="panel-heading">
			    	<h3 class="panel-title">Welcome Back!</h3>
			 	</div>
			  	<div class="panel-body">
			    	<form:form action="processForm" accept-charset="UTF-8" role="form">
                    <fieldset>
			    		<input class="btn btn-lg btn-success btn-block" type="submit" value="GOOOO!!!">
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