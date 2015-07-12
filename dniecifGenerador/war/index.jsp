<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"><html><head><meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"><title>Generador de DNI, NIE y CIF</title>
<meta name="keywords" content="dni, nie, cif, generador" /><meta name="description" content="Herramienta de generación de DNI, NIE, y CIF online" /><meta name="author" content="Ricardo Prieto Mendoza" /><meta name="distribution" content="global" /><meta name="robots" content="all" /><meta http-equiv="content-language" content="es" /><script type='text/javascript' src='/dwr/interface/Demo.js'></script><script type='text/javascript' src='/dwr/engine.js'></script><script type="text/javascript" src="js/jquery-1.4.3.min.js"></script><style type="text/css">
 body { background:none repeat scroll 0 0 #E5ECF9;}body div {text-align:center;}
 #cabezera{
 text-align:center;
 }
 #pie {
 text-align: center;
 }
 #numDoc {
 width:50px;
 }
 .botonera {
margin-top: 20px; margin-bottom: 20px;
 }
 .paginasAmigas, .patrocinadores{
 padding-top: 0px; margin-top: 15px;
 }
</style><script type="text/javascript">
function IsNumeric(expression){return (String(expression).search(/^\d+$/) != -1);}
$(document).ready(function(){

$('#generar').click(function(){var doc= $('input:radio[name=tipo]:checked').val();var numdoc=$('#numDoc').val();
if(IsNumeric(numdoc)){numdoc=Math.min(numdoc,10);if(doc=='dni'){
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

  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-65053906-1', 'auto');
  ga('send', 'pageview');
</script></head><body>
<div style="text-align:center">
<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<ins class="adsbygoogle" style="display:inline-block;width:728px;height:90px" data-ad-client="ca-pub-8655698923248885" data-ad-slot="5687863162"></ins>
<script>
(adsbygoogle = window.adsbygoogle || []).push({});
</script>
</div><div id="cabezera"><h1>Herramienta de generaci&oacute;n de DNI, NIE, y CIF online</h1></div><div id="contenido"><div class="numeroDocumentos"><label for="numDoc">N&uacute;mero de documentos a generar (m&aacute;ximo 10)</label><input type="text" name="numeroDocumentos" id="numDoc" value="1" /></div></div><div class="tipoDocumento"><p>Tipo de documento a generar</p><div><label for="dni">D.N.I.</label><input type="radio" name="tipo" value="dni" id="dni" checked="checked"  /><label for="nie">N.I.E.</label><input type="radio" name="tipo" value="nie" id="nie"  /><label for="cif">C.I.F.</label><input type="radio" name="tipo" value="cif" id="cif"  /></div></div><div class="botonera"><input type="button" value="Generar Documento" id="generar" /></div>
<div style="text-align:center">
<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<ins class="adsbygoogle" style="display:inline-block;width:728px;height:90px" data-ad-client="ca-pub-8655698923248885" data-ad-slot="5687863162"></ins>
<script>
(adsbygoogle = window.adsbygoogle || []).push({});
</script>
</div>
<div class="solucion"><div><label for="sol">Documentos generados</label></div><div><textarea rows="10" cols="50" id="sol"></textarea></div></div>
<div id="pie"><p>La finalidad de esta herramienta es exclusiva para facilitar a los desarrolladores las pruebas de sus algoritmos
de forma f&aacute;cil y eficaz, con documentos v&aacute;lidos. Estos documentos son aleatorios generados por el sistema.
El mal uso de esta herramienta es responsabilidad exclusiva de quien realize tales actos, eximiendome al completo sobre los mismos.
</p><p>Si por alg&uacute;n motivo, las autoridades deciden que debo de eliminar esta herramienta, s&oacute;lo tienen que ponerse en contacto con migo
y sin ning&uacute;n inconveniente, esta herramienta dejar&aacute; de estar operativa.</p>
<p>Se ha subido una nueva versi&oacute;n que corrige el fallo de los CIF que empiezan por K, P, Q &oacute; S.</p>
<div><img src="imagenes/dnie.gif" alt="Imagen del dni electronico español" /></div><a href="http://utilidesarrollo.blogspot.com/">Visite mi Blog</a></div><div class="paginasAmigas">
<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<ins class="adsbygoogle"
     style="display:inline-block;width:300px;height:250px"
     data-ad-client="ca-pub-8655698923248885"
     data-ad-slot="3114989965"></ins>
<script>
(adsbygoogle = window.adsbygoogle || []).push({});
</script></div></body></html>