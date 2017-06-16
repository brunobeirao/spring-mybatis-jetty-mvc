<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>WPattern Spring MVC</title>
</head>
<body>

	<nav class="navbar navbar-inverse">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">Spring Boot</a>
			</div>
			<div id="navbar" class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li> <a href="/">Listagem</a></li>
					<li class="active"><a href="/search">Buscar</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="container">

		<div class="starter-template">
			<h1>Spring Boot - Listagem de Clientes</h1>
			<h3>(JSP + Spring-Boot + Spring Mybatis + MySQL)</h3>
		</div>
		
		<form action="${formAction}" method="POST">
		  <div class="small-3 columns">
	        	<input type="text" id="txt" name="word">
	      </div>
	
	       <div class="small-5 columns end">
	         <button id="button-id" type="submit">Search Teams</button>
	       </div>
		</form>
	</div>

	<script type="text/javascript"
		src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>
