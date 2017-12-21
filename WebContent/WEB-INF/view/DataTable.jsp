<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec"  uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Datatable demo</title>
	
	<!-- Jquery -->
	<script src="http://code.jquery.com/jquery-3.2.1.js" integrity="sha256-DZAnKJ/6XZ9si04Hgrsxu/8s717jcIzLy3oi35EouyE="crossorigin="anonymous"></script>

	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

	<!-- Optional theme -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
  	
	<!-- Latest compiled and minified JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
	
	<spring:url value="/resources/css/footable.bootstrap.css" var="footableCss" />
	<spring:url value="/resources/js/footable.js" var="footableJs" />
	<spring:url value="/resources/js/customTable.js" var="customTableJs" />
	<spring:url value="/resources/js/navbar.js" var="navBarJs" />
   
	<link href="${footableCss}" rel="stylesheet" />
    <script src="${footableJs}"></script>
	<script src="${customTableJs}"></script>
	
</head>
<body>
<script src="${navBarJs}"></script>
  
   <div class = "container">
    <div class="jumbotron">
    	<div class = "container">
  		<h1 class="display-3">Esempio data table</h1>
  		<p class="lead">Questa è una dimostrazione di una datatable, utilizzando un plugin per jquery chiamato footable</p>
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
</div> 
</div>

</body>
</html>