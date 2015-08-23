<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"><html lang="es"><head><meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"><title>Herramienta generación aleatoria de documentos DNI, NIE y CIF online</title>
<meta name="keywords" content="dni, nie, cif, generador, herramienta, aleatorios, pruebas" /><meta name="description" content="Herramienta para generación aleatoria de documentos DNI, NIE y CIF online" /><meta name="author" content="Ricardo Prieto Mendoza" /><meta name="distribution" content="global" /><meta name="robots" content="all" /><meta http-equiv="content-language" content="es" /><meta name="viewport" content="width=device-width, initial-scale=1.0"><script type='text/javascript' src='/dwr/interface/GeneradorNIFE.js'></script><script type='text/javascript' src='/dwr/engine.js'></script><script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5/jquery.min.js"></script><script type="text/javascript">
!function(e){e.cookiesDirective=function(o){var n=e.extend({explicitConsent:!0,position:"top",duration:10,limit:0,message:null,cookieScripts:null,privacyPolicyUri:"privacy.html",scriptWrapper:function(){},fontFamily:"helvetica",fontColor:"#FFFFFF",fontSize:"13px",backgroundColor:"#000000",backgroundOpacity:"80",linkColor:"#CA0000"},o);if(i("cookiesDirective"))n.scriptWrapper.call();else{if(n.limit>0){if(i("cookiesDisclosureCount")){var c=i("cookiesDisclosureCount");c++,t("cookiesDisclosureCount",c,1)}else t("cookiesDisclosureCount",1,1);n.limit>=i("cookiesDisclosureCount")&&a(n)}else a(n);n.explicitConsent||n.scriptWrapper.call()}},e.cookiesDirective.loadScript=function(i){var t=e.extend({uri:"",appendTo:"body"},i),o=String(t.appendTo),a=document.createElement("script");switch(a.src=t.uri,a.type="text/javascript",a.onload=a.onreadystatechange=function(){!a.readyState||"loaded"==a.readyState||"complete"==a.readyState},t.appendTo){case"head":e("head").append(a);break;case"body":e("body").append(a);break;default:e("#"+o).append(a)}};var i=function(e){for(var i=e+"=",t=document.cookie.split(";"),o=0;o<t.length;o++){for(var a=t[o];" "==a.charAt(0);)a=a.substring(1,a.length);if(0==a.indexOf(i))return a.substring(i.length,a.length)}return null},t=function(e,i,t){if(t){var o=new Date;o.setTime(o.getTime()+24*t*60*60*1e3);var a="; expires="+o.toGMTString()}else var a="";document.cookie=e+"="+i+a+"; path=/"},o=function(){var e;if("Microsoft Internet Explorer"==navigator.appName){var i=navigator.userAgent,t=new RegExp("MSIE ([0-9]{1,}[.0-9]{0,})");if(null!=t.exec(i)&&(e=parseFloat(RegExp.$1)),8>=e)return!0;if(9==e){if("BackCompat"==document.compatMode){var o=document.createElement("meta");return o.content="IE=EmulateIE8",document.getElementsByTagName("head")[0].appendChild(o),!0}return!1}return!1}return!1},a=function(i){var a=i;a.css="fixed",o()&&(a.position="top",a.css="absolute");var n="";if(a.cookieScripts){var c=a.cookieScripts.split(","),r=c.length,s="";if(r>1){for(var p=0;r-1>p;p++)s+=c[p]+", ";n=" We use "+s.substring(0,s.length-2)+" and "+c[r-1]+" scripts, which all set cookies. "}else n=" We use a "+c[0]+" script which sets cookies."}var l="";l+='<div id="epd">',l+='<div id="cookiesdirective" style="position:'+a.css+";"+a.position+":-300px;left:0px;width:100%;",l+="height:auto;background:"+a.backgroundColor+";opacity:."+a.backgroundOpacity+";",l+="-ms-filter: “alpha(opacity="+a.backgroundOpacity+")”; filter: alpha(opacity="+a.backgroundOpacity+");",l+="-khtml-opacity: ."+a.backgroundOpacity+"; -moz-opacity: ."+a.backgroundOpacity+";",l+="color:"+a.fontColor+";font-family:"+a.fontFamily+";font-size:"+a.fontSize+";",l+='text-align:center;z-index:1000;">',l+='<div style="position:relative;height:auto;width:90%;padding:10px;margin-left:auto;margin-right:auto;">',a.message||(a.explicitConsent?(a.message="This site uses cookies. Some of the cookies we ",a.message+="use are essential for parts of the site to operate and have already been set."):a.message="We have placed cookies on your computer to help make this website better."),l+=a.message,a.explicitConsent?(l+=n+"You may delete and block all cookies from this site, but parts of the site will not work.",l+='To find out more about cookies on this website, see our <a style="color:'+a.linkColor+";font-weight:bold;",l+="font-family:"+a.fontFamily+";font-size:"+a.fontSize+';" href="'+a.privacyPolicyUri+'">privacy policy</a>.<br/>',l+='<div id="epdnotick" style="color:#ca0000;display:none;margin:2px;"><span style="background:#cecece;padding:2px;">You must tick the "I accept cookies from this site" box to accept</span></div>',l+='<div style="margin-top:5px;">I accept cookies from this site <input type="checkbox" name="epdagree" id="epdagree" />&nbsp;',l+='<input type="submit" name="explicitsubmit" id="explicitsubmit" value="Continue"/><br/></div></div>'):(l+=n+' More details can be found in our <a style="color:'+a.linkColor+";",l+="font-weight:bold;font-family:"+a.fontFamily+";font-size:"+a.fontSize+';" href="'+a.privacyPolicyUri+'">privacy policy</a>.',l+='<div style="margin-top:5px;"><input type="submit" name="impliedsubmit" id="impliedsubmit" value="Do not show this message again"/></div></div>'),l+="</div></div>",e("body").append(l);var d=a.position.toLowerCase();"top"!=d&&"bottom"!=d&&(d="top");var u=new Array;"top"==d?(u["in"]={top:"0"},u.out={top:"-300"}):(u["in"]={bottom:"0"},u.out={bottom:"-300"}),e("#cookiesdirective").animate(u["in"],1e3,function(){a.explicitConsent?e("#explicitsubmit").click(function(){e("#epdagree").is(":checked")?(t("cookiesDirective",1,365),e("#cookiesdirective").animate(u.out,1e3,function(){e("#cookiesdirective").remove(),location.reload(!0)})):e("#epdnotick").css("display","block")}):e("#impliedsubmit").click(function(){t("cookiesDirective",1,365),e("#cookiesdirective").animate(u.out,1e3,function(){e("#cookiesdirective").remove()})}),setTimeout(function(){e("#cookiesdirective").animate({opacity:"0"},2e3,function(){e("#cookiesdirective").css(d,"-300px")})},1e3*a.duration)})}}(jQuery);

</script><style type="text/css">
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
GeneradorNIFE.getNIFs(numdoc, {
 callback:function(str) { 
   $('#sol').val(str); 
 }
});
}else if(doc=='nie'){
GeneradorNIFE.getNIEs(numdoc, {
 callback:function(str) { 
   $('#sol').val(str); 
 }
});
}
else if(doc=='cif'){
GeneradorNIFE.getCIFs(numdoc, {
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
<ins class="adsbygoogle" style="display:inline-block;width:728px;height:90px" data-ad-client="ca-pub-8655698923248885" data-ad-slot="3800183966"></ins>
<script>
(adsbygoogle = window.adsbygoogle || []).push({});
</script>
</div>
<div class="solucion"><div><label for="sol">Documentos generados</label></div><div><textarea rows="10" cols="50" id="sol"></textarea></div></div>
<div style="text-align:center">
<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<ins class="adsbygoogle" style="display:inline-block;width:300px;height:250px" data-ad-client="ca-pub-8655698923248885" data-ad-slot="5276917167"></ins>
<script>
(adsbygoogle = window.adsbygoogle || []).push({});
</script>
</div>
<div id="pie"><p>La finalidad de esta herramienta es exclusiva para facilitar a los desarrolladores las pruebas de sus algoritmos de software (CRM, ERP, simuladores de presupuestos y formularios, etc.) 
de forma f&aacute;cil y eficaz, con documentos v&aacute;lidos. Estos documentos son aleatorios generados por el sistema.
El mal uso de esta herramienta es responsabilidad exclusiva de quien realize tales actos, eximiendome al completo sobre los mismos.
</p><p>Si por alg&uacute;n motivo, las autoridades deciden que debo de eliminar esta herramienta, s&oacute;lo tienen que ponerse en contacto con migo
y sin ning&uacute;n inconveniente, esta herramienta dejar&aacute; de estar operativa.</p>
<p>Se ha subido una nueva versi&oacute;n que corrige el fallo de los CIF que empiezan por K, P, Q &oacute; S.</p>
<p>NOTA (23/08/2015): Vuelve a estar operativa la herramienta. La causa del no funcionamiento se ha debido a cambios inesperados de la API de Java (como es de costumbre en Java, cambiar las cosas para que dejen de funcionar por las buenas). Siento las molestias. Para cualquier incidencia contactar en mi blog. Gracias.</p>
<div><img src="imagenes/dnie.gif" alt="Imagen del dni electronico español" /></div><a href="http://utilidesarrollo.blogspot.com/">Visite mi Blog</a></div><div class="paginasAmigas">
</div><div id="eantics"></div><script type="text/javascript">
$(document).ready(function(){var cookieScripts = function (){}
$.cookiesDirective({
privacyPolicyUri: 'https://www.google.com/policies/technologies/cookies/',explicitConsent: false,position : 'bottom',scriptWrapper: cookieScripts,cookieScripts: 'Google Analytics, Google AdSense',backgroundColor: '#000000',backgroundOpacity: '80',linkColor: '#CA0000'
});
});
</script></body></html>