<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Datatable demo</title>
<script
  src="https://code.jquery.com/jquery-3.2.1.js"
  integrity="sha256-DZAnKJ/6XZ9si04Hgrsxu/8s717jcIzLy3oi35EouyE="
  crossorigin="anonymous"></script>
  
	<spring:url value="/resources/css/footable.bootstrap.css" var="footableCss" />
	<spring:url value="/resources/js/footable.js" var="footableJs" />
	<spring:url value="/resources/js/customTable.js" var="customTableJs" />

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<link href="${footableCss}" rel="stylesheet" />
    <script src="${footableJs}"></script>
	<script src="${customTableJs}"></script>
	
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
      <a class="navbar-brand" href="loginPage">Sign Out</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li ><a  class="navbar-brand" href="#" >Prompt2</a></li>
		<li > <span class="navbar-text">Welcome user XXXXXX</span></li >
      </ul>
      </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
    </nav>
    
    <div class="jumbotron">
    	<div class = "container">
  		<h1 class="display-3">Demo webapp</h1>
  		<p class="lead">Questa è una dimostrazione di una datatable, utilizzando jquery e spring mvc</p>
  		</div>
  		<hr class="my-4">
  		<div class="container">
 <table class="table" data-filtering="true" data-paging="true">
	<thead>
	<tr>
		<th data-breakpoints="xs">ID</th>
		<th>First Name</th>
		<th>Last Name</th>
		<th>Job Title</th>
		<th data-breakpoints="xs">Status</th>
	</tr>
	</thead>
	<tbody>
	<c:forEach var="queryUsers" items="${query}">
	<tr>
		<td>${queryUsers.id}</td>
		<td>${queryUsers.firstName}</td>
		<td>${queryUsers.lastName}</td>
		<td>${queryUsers.jobTitle}</td>
		<td>${queryUsers.status}</td>
	</tr>
	</c:forEach>
	</tbody>
	</table>
</div>
  		<p class="lead">
    <a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a>
  </p>
</div>

</body>
</html>