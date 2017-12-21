<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec"  uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Roles Manager</title>
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
	<spring:url value="/resources/js/roleTable.js" var="roleTableJs" />
   
	<link href="${footableCss}" rel="stylesheet" />
    <script src="${footableJs}"></script>
	<script src="${roleTableJs}"></script>
</head>
<body>
<!--  NAV BAR -->
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
      <a class="navbar-brand active" href="homePage">Home</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
     	<sec:authorize access="${functionBean.managerFunction}">
        <li ><a href="#">Manager Menu <span class="sr-only">(current)</span></a></li>
        </sec:authorize>
        <sec:authorize access="${functionBean.userFunction}">
        <li class="active"><a href="#">User Menu <span class="sr-only">(current)</span></a></li>
        </sec:authorize>
      </ul>
      <form class="navbar-form navbar-left">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="Search">
        </div>
        <button type="submit" class="btn btn-default">Submit</button>
      </form>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#">Link</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Opzioni <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Contattaci</a></li>
            <li><a href="#">Impostazioni</a></li>
            <li><a href="#">Modifica Ruoli</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="logout">Esci</a></li>
          </ul>
        </li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
<!-- END NAV BAR -->

<form class="form-horizontal">
<fieldset>
<!-- Form Name -->
<legend>Role Creation</legend>

<!-- Select Basic -->
<div class="form-group">
  <label class="col-md-4 control-label" for="selectbasic">Ruoli</label>
  <div class="col-md-4">
    <select id="selectbasic" name="selectbasic" class="form-control">
      <option value="1">Manager menu</option>
      <option value="2">User Menu</option>
    </select>
  </div>
</div>

</fieldset>
</form>

<!--  Role Table -->
<div class="container">
<table class="table" data-filtering="true" data-paging="true">
	<thead>
	<tr>
		<th data-breakpoints="xs">ID</th>
		<th>Ruolo</th>
		<th>Status</th>
	</tr>
	</thead>
	<tbody>
	<tr>
		<td>1</td>
		<td>Admin</td>
		<td>
				<div class="col-md-3">
    			<select id="selectbasic" name="selectbasic" class="form-control">
      			<option value="1">Attivo</option>
      			<option value="2">Disattivo</option>
    			</select>
    			</div>
		</td>
	</tr>
		<tr>
		<td>2</td>
		<td>User</td>
		<td>
				<div class="col-md-3">
    			<select id="selectbasic" name="selectbasic" class="form-control">
      			<option value="1">Attivo</option>
      			<option value="2">Disattivo</option>
    			</select>
    			</div>
		</td>
	</tr>
		<tr>
		<td>3</td>
		<td>Manager</td>
		<td>
			  <div class="col-md-3">
    			<select id="selectbasic" name="selectbasic" class="form-control">
      			<option value="1">Attivo</option>
      			<option value="2">Disattivo</option>
    			</select>
    			</div>
      	</td>
    	
	</tr>
	</tbody>
</table>
</div>
</body>
</html>