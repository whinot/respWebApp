<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec"  uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home</title>
<!-- Jquery -->
<script src="http://code.jquery.com/jquery-3.2.1.js" integrity="sha256-DZAnKJ/6XZ9si04Hgrsxu/8s717jcIzLy3oi35EouyE="crossorigin="anonymous"></script>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

	
</head>
<body>

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
        <li><a href="user">User Menu <span class="sr-only">(current)</span></a></li>
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
            <sec:authorize access="${functionBean.roleManagerFunction}">
            <li><a href="roleManager">Modifica Ruoli</a></li>
            </sec:authorize>
            <li role="separator" class="divider"></li>
            <li><a href="logout">Esci</a></li>
          </ul>
        </li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
  
    
<div class = "container">     
  <div class="jumbotron">
    	<div class = "container">
  		<h1 class="display-3">Demo webapp</h1>
  		<p class="lead">Questa app è stata sviluppata usando Java 8, Spring (Mvc, Security), Hibernate , Bootstrap, HTML5 e Jquery</p>
  	</div>
  	<div class = "container">
  		<hr class="my-4">
  		<p class="well">
  		   Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam et rutrum nisi. Nulla ac tortor a ligula commodo scelerisque. Mauris vulputate vulputate nisi id ullamcorper. Aliquam fringilla urna sit amet eleifend pharetra. Aliquam erat volutpat. Praesent quam purus, tincidunt eu consectetur eu, pharetra sed mauris. Vivamus scelerisque maximus nisl, a volutpat tellus finibus ut. Praesent maximus mauris nec ligula rutrum, ut auctor mi porttitor. Fusce dapibus diam id venenatis scelerisque.

		   In mauris neque, tempus at velit id, tincidunt dictum lectus. Duis eleifend lorem dolor, vulputate imperdiet ipsum vulputate et. Duis molestie consequat pulvinar. Praesent vulputate faucibus auctor. Etiam id varius orci, quis pretium dolor. Nullam consectetur, nisi eu ultrices sodales, urna nunc ultricies mauris, in convallis odio ligula tempus diam. Curabitur quis nisl at urna gravida hendrerit. In interdum eget quam at pellentesque.

		   Curabitur egestas ligula ac nisl facilisis, quis congue ex consequat. In ligula nisl, ornare sed placerat id, vulputate et tortor. Suspendisse potenti. Cras eget egestas urna. Donec pellentesque nibh vel nisi dapibus, euismod pharetra sem cursus. Cras in odio velit. Nullam et lorem vitae turpis finibus sollicitudin vel eget leo. Integer lacinia sollicitudin lorem, sed molestie enim viverra at.

		   Ut rutrum tortor ut turpis bibendum venenatis. Donec vulputate elementum viverra. Quisque augue enim, fringilla a auctor quis, rutrum suscipit tellus. Integer porta ullamcorper mauris, id eleifend enim tincidunt facilisis. Praesent sagittis facilisis tristique. Fusce nisi quam, sollicitudin non feugiat nec, laoreet sit amet nulla. Curabitur erat nulla, blandit vel justo rutrum, aliquet ornare ligula. Sed nisi ante, convallis ut elit id, tincidunt fermentum est. Aliquam ultrices convallis justo eget tristique. Pellentesque hendrerit turpis vitae dolor egestas elementum.

		  Quisque id condimentum ligula, quis tincidunt urna. Integer molestie gravida erat vel placerat. Nunc facilisis tortor vel lobortis posuere. Duis vestibulum, quam non venenatis pulvinar, arcu metus sagittis nisl, quis posuere leo urna non justo. Pellentesque semper volutpat ligula vel mattis. Donec nisi sem, hendrerit quis pharetra id, dignissim porta quam. Aliquam ut ultrices ipsum. Etiam quis ante mauris.
		 </p>
  </div>
  </div>				 
  </div>	
</body>
</html>