<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Generador de DNI, NIE y CIF</title>
<script type='text/javascript' src='/dwr/interface/Demo.js'></script>
  <script type='text/javascript' src='/dwr/engine.js'></script>
  <script type="text/javascript" src="js/jquery-1.4.3.min.js"></script>
  <style type="text/css">
  
  #pie {
  text-align: center;
  }
  </style>
  <script type="text/javascript">
  function IsNumeric(expression)
  	{
  	    return (String(expression).search(/^\d+$/) != -1);
  }
  $(document).ready(function(){
  
  $('#generar').click(function(){
		 var doc= $('input:radio[name=tipo]:checked').val();

		 
var numdoc=$('#numDoc').val();


if(IsNumeric(numdoc)){
		 if(doc=='dni'){
		 
  Demo.getNIFs(numdoc, {
	  callback:function(str) { 
	    $('#sol').val(str); 
	  }
  });
		 }else if(doc=='nie'){
			  Demo.getNIEs(numdoc, {
				  callback:function(str) { 
				    $('#sol').val(str); 
				  }
			  });
		 }
		 else if(doc=='cif'){
			  Demo.getCIFs(numdoc, {
				  callback:function(str) { 
				    $('#sol').val(str); 
				  }
			  });
		 }
}

	});
  
  });
  </script>
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
<input type="radio" name="tipo" value="dni" id="dni" checked="checked"  />
<label for="nie">N.I.E.</label>
<input type="radio" name="tipo" value="nie" id="nie"  />
<label for="cif">C.I.F.</label>
<input type="radio" name="tipo" value="cif" id="cif"  />
</div>
</div>
<div>
<input type="button" value="Generar Documento" id="generar" />
</div>
<div class="solucion">
<div><label for="sol">Documentos generados</label></div>
 
<div><textarea rows="10" cols="50" id="sol"></textarea></div>

</div>
<div id="pie">

<div><img src="imagenes/dnie.gif" alt="Imagen del dni electronico español" /></div>

</div>

</body>
</html>