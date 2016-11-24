
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script src="https://use.fontawesome.com/5dfa548964.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<title>Trabalho final</title>
</head>
<body>

	<div id="wrapper">
	
		<div class="container">
			<h1>TRABALHO FINAL</h1>
			<div class="row">
				<div class="col-md-6">
					<a href="<c:url value='/quarto'/>" class="btn btn-default btn-block">
						<h2>QUARTOS</h2><br>
						<i class="fa fa-5x fa-bed"></i>
					</a>
				</div>
				<div class="col-md-6">
					<a href="<c:url value='/categoria'/>" class="btn btn-default btn-block">
						<h2>CATEGORIAS</h2><br>
						<i class="fa fa-5x fa-folder-open"></i>
					</a>
				</div>
			</div>										
		
		</div>
	
	</div>
</body>
</html>