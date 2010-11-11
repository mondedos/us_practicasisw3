<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Generador de DNI, NIE y CIF</title>
<script type='text/javascript' src='/dwr/interface/Demo.js'></script>
  <script type='text/javascript' src='/dwr/engine.js'></script>
  <style type="text/css">
  
  #pie {
  text-align: center;
  }
  </style>
</head>
<body>
<div id="cabezera"></div>
<div id="contenido">
	<div class="numeroDocumentos">
	<label for="numDoc">Número de documentos a generar</label>
	<input type="text" name="numeroDocumentos" id="numDoc" /></div>
</div>
<div class="tipoDocumento">
<p>Tipo de documento a generar</p>
<div>
<label for="dni">D.N.I.</label>
<input type="radio" name="tipo" value="dni" id="dni"   />
<label for="nie">N.I.E.</label>
<input type="radio" name="tipo" value="nie" id="nie"  />
<label for="cif">C.I.F.</label>
<input type="radio" name="tipo" value="cif" id="cif"  />
</div>
</div>
<div>
<input type="button" value="Generar Documento" />
</div>
<div id="pie">

<div><img src="imagenes/dnie.gif" alt="Imagen del dni electronico español" /></div>

</div>


<script type="text/javascript">

Demo.getNIFs(4, {
	
	  callback:function(str) { 
	    alert(str); 
	  }
	});

</script>
</body>
</html>