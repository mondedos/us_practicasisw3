<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Generador de DNI, NIE y CIF</title>
<script type='text/javascript' src='/dwr/interface/Demo.js'></script>
  <script type='text/javascript' src='/dwr/engine.js'></script>
</head>
<body>
usar dwr para generar los dnis.


<script type="text/javascript">

Demo.getNIFs(4, {
	
	  callback:function(str) { 
	    alert(str); 
	  }
	});

</script>
</body>
</html>