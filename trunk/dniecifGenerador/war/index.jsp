<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"><html><head><meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"><title>Herramienta generación aleatoria de documentos DNI, NIE y CIF online</title>
<meta name="keywords" content="dni, nie, cif, generador, herramienta, aleatorios, pruebas" /><meta name="description" content="Herramienta para generación aleatoria de documentos DNI, NIE y CIF online" /><meta name="author" content="Ricardo Prieto Mendoza" /><meta name="distribution" content="global" /><meta name="robots" content="all" /><meta http-equiv="content-language" content="es" /><meta name="viewport" content="width=device-width, initial-scale=1.0"><script type='text/javascript' src='/dwr/interface/Demo.js'></script><script type='text/javascript' src='/dwr/engine.js'></script><script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5/jquery.min.js"></script><script type="text/javascript">

;(function($) {
	$.cookiesDirective = function(options) {
			
		// Default Cookies Directive Settings
		var settings = $.extend({
			//Options
			explicitConsent: true,
			position: 'top',
			duration: 10,
			limit: 0,
			message: null,				
			cookieScripts: null,
			privacyPolicyUri: 'privacy.html',
			scriptWrapper: function(){},	
			// Styling
			fontFamily: 'helvetica',
			fontColor: '#FFFFFF',
			fontSize: '13px',
			backgroundColor: '#000000',
			backgroundOpacity: '80',
			linkColor: '#CA0000'
		}, options);
		
		// Perform consent checks
		if(!getCookie('cookiesDirective')) {
			if(settings.limit > 0) {
				// Display limit in force, record the view
				if(!getCookie('cookiesDisclosureCount')) {
					setCookie('cookiesDisclosureCount',1,1);		
				} else {
					var disclosureCount = getCookie('cookiesDisclosureCount');
					disclosureCount ++;
					setCookie('cookiesDisclosureCount',disclosureCount,1);
				}
				
				// Have we reached the display limit, if not make disclosure
				if(settings.limit >= getCookie('cookiesDisclosureCount')) {
					disclosure(settings);		
				}
			} else {
				// No display limit
				disclosure(settings);
			}		
			
			// If we don't require explicit consent, load up our script wrapping function
			if(!settings.explicitConsent) {
				settings.scriptWrapper.call();
			}	
		} else {
			// Cookies accepted, load script wrapping function
			settings.scriptWrapper.call();
		}		
	};
	
	// Used to load external javascript files into the DOM
	$.cookiesDirective.loadScript = function(options) {
		var settings = $.extend({
			uri: 		'', 
			appendTo: 	'body'
		}, options);	
		
		var elementId = String(settings.appendTo);
		var sA = document.createElement("script");
		sA.src = settings.uri;
		sA.type = "text/javascript";
		sA.onload = sA.onreadystatechange = function() {
			if ((!sA.readyState || sA.readyState == "loaded" || sA.readyState == "complete")) {
				return;
			} 	
		}
		switch(settings.appendTo) {
			case 'head':			
				$('head').append(sA);
			  	break;
			case 'body':
				$('body').append(sA);
			  	break;
			default: 
				$('#' + elementId).append(sA);
		}
	}	 
	
	// Helper scripts
	// Get cookie
	var getCookie = function(name) {
		var nameEQ = name + "=";
		var ca = document.cookie.split(';');
		for(var i=0;i < ca.length;i++) {
			var c = ca[i];
			while (c.charAt(0)==' ') c = c.substring(1,c.length);
			if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length,c.length);
		}
		return null;
	}
	
	// Set cookie
	var setCookie = function(name,value,days) {
		if (days) {
			var date = new Date();
			date.setTime(date.getTime()+(days*24*60*60*1000));
			var expires = "; expires="+date.toGMTString();
		}
		else var expires = "";
		document.cookie = name+"="+value+expires+"; path=/";
	}
	
	// Detect IE < 9
	var checkIE = function(){
		var version;
		if (navigator.appName == 'Microsoft Internet Explorer') {
	        var ua = navigator.userAgent;
	        var re = new RegExp("MSIE ([0-9]{1,}[\.0-9]{0,})");
	        if (re.exec(ua) != null) {
	            version = parseFloat(RegExp.$1);
			}	
			if (version <= 8.0) {
				return true;
			} else {
				if(version == 9.0) {
					if(document.compatMode == "BackCompat") {
						// IE9 in quirks mode won't run the script properly, set to emulate IE8	
						var mA = document.createElement("meta");
						mA.content = "IE=EmulateIE8";				
						document.getElementsByTagName('head')[0].appendChild(mA);
						return true;
					} else {
						return false;
					}
				}	
				return false;
			}		
	    } else {
			return false;
		}
	}

	// Disclosure routines
	var disclosure = function(options) {
		var settings = options;
		settings.css = 'fixed';
		
		// IE 9 and lower has issues with position:fixed, either out the box or in compatibility mode - fix that
		if(checkIE()) {
			settings.position = 'top';
			settings.css = 'absolute';
		}
		
		// Any cookie setting scripts to disclose
		var scriptsDisclosure = '';
		if (settings.cookieScripts) {
			var scripts = settings.cookieScripts.split(',');
			var scriptsCount = scripts.length;
			var scriptDisclosureTxt = '';
			if(scriptsCount>1) {
				for(var t=0; t < scriptsCount - 1; t++) {
					 scriptDisclosureTxt += scripts[t] + ', ';	
				}	
				scriptsDisclosure = ' We use ' +  scriptDisclosureTxt.substring(0,  scriptDisclosureTxt.length - 2) + ' and ' + scripts[scriptsCount - 1] + ' scripts, which all set cookies. ';
			} else {
				scriptsDisclosure = ' We use a ' + scripts[0] + ' script which sets cookies.';		
			}
		} 
		
		// Create overlay, vary the disclosure based on explicit/implied consent
		// Set our disclosure/message if one not supplied
		var html = ''; 
		html += '<div id="epd">';
		html += '<div id="cookiesdirective" style="position:'+ settings.css +';'+ settings.position + ':-300px;left:0px;width:100%;'
		html += 'height:auto;background:' + settings.backgroundColor + ';opacity:.' + settings.backgroundOpacity + ';';
		html += '-ms-filter: “alpha(opacity=' + settings.backgroundOpacity + ')”; filter: alpha(opacity=' + settings.backgroundOpacity + ');';
		html += '-khtml-opacity: .' + settings.backgroundOpacity + '; -moz-opacity: .' + settings.backgroundOpacity + ';';
		html += 'color:' + settings.fontColor + ';font-family:' + settings.fontFamily + ';font-size:' + settings.fontSize + ';';
		html += 'text-align:center;z-index:1000;">';
		html += '<div style="position:relative;height:auto;width:90%;padding:10px;margin-left:auto;margin-right:auto;">';
			
		if(!settings.message) {
			if(settings.explicitConsent) {
				// Explicit consent message
				settings.message = 'This site uses cookies. Some of the cookies we ';
				settings.message += 'use are essential for parts of the site to operate and have already been set.';
			} else {
				// Implied consent message
				settings.message = 'We have placed cookies on your computer to help make this website better.';
			}		
		}	
		html += settings.message;
		
		// Build the rest of the disclosure for implied and explicit consent
		if(settings.explicitConsent) {
			// Explicit consent disclosure
			html += scriptsDisclosure + 'You may delete and block all cookies from this site, but parts of the site will not work.';
			html += 'To find out more about cookies on this website, see our <a style="color:'+ settings.linkColor + ';font-weight:bold;';
			html += 'font-family:' + settings.fontFamily + ';font-size:' + settings.fontSize + ';" href="'+ settings.privacyPolicyUri + '">privacy policy</a>.<br/>';
			html += '<div id="epdnotick" style="color:#ca0000;display:none;margin:2px;"><span style="background:#cecece;padding:2px;">You must tick the "I accept cookies from this site" box to accept</span></div>'
			html += '<div style="margin-top:5px;">I accept cookies from this site <input type="checkbox" name="epdagree" id="epdagree" />&nbsp;';
			html += '<input type="submit" name="explicitsubmit" id="explicitsubmit" value="Continue"/><br/></div></div>';
		
		} else {
			// Implied consent disclosure
			html += scriptsDisclosure + ' More details can be found in our <a style="color:'+ settings.linkColor + ';';
			html += 'font-weight:bold;font-family:' + settings.fontFamily + ';font-size:' + settings.fontSize + ';" href="'+ settings.privacyPolicyUri + '">privacy policy</a>.';
			html += '<div style="margin-top:5px;"><input type="submit" name="impliedsubmit" id="impliedsubmit" value="Do not show this message again"/></div></div>';	
		}		
		html += '</div></div>';
		$('body').append(html);
		
		// Serve the disclosure, and be smarter about branching
		var dp = settings.position.toLowerCase();
		if(dp != 'top' && dp!= 'bottom') {
			dp = 'top';
		}	
		var opts = new Array();
		if(dp == 'top') {
			opts['in'] = {'top':'0'};
			opts['out'] = {'top':'-300'};
		} else {
			opts['in'] = {'bottom':'0'};
			opts['out'] = {'bottom':'-300'};
		}		

		// Start animation
		$('#cookiesdirective').animate(opts['in'], 1000, function() {
			// Set event handlers depending on type of disclosure
			if(settings.explicitConsent) {
				// Explicit, need to check a box and click a button
				$('#explicitsubmit').click(function() {
					if($('#epdagree').is(':checked')) {	
						// Set a cookie to prevent this being displayed again
						setCookie('cookiesDirective',1,365);	
						// Close the overlay
						$('#cookiesdirective').animate(opts['out'],1000,function() { 
							// Remove the elements from the DOM and reload page
							$('#cookiesdirective').remove();
							location.reload(true);
						});
					} else {
						// We need the box checked we want "explicit consent", display message
						$('#epdnotick').css('display', 'block'); 
					}	
				});
			} else {
				// Implied consent, just a button to close it
				$('#impliedsubmit').click(function() {
					// Set a cookie to prevent this being displayed again
					setCookie('cookiesDirective',1,365);	
					// Close the overlay
					$('#cookiesdirective').animate(opts['out'],1000,function() { 
						// Remove the elements from the DOM and reload page
						$('#cookiesdirective').remove();
					});
				});
			}	
			
			// Set a timer to remove the warning after 'settings.duration' seconds
			setTimeout(function(){
				$('#cookiesdirective').animate({
					opacity:'0'
				},2000, function(){
					$('#cookiesdirective').css(dp,'-300px');
				});
			}, settings.duration * 1000);
		});	
	}
})(jQuery);


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
</script></div><div id="eantics"></div><script type="text/javascript">
$(document).ready(function(){var cookieScripts = function (){}
$.cookiesDirective({
privacyPolicyUri: 'https://www.google.com/policies/technologies/cookies/',explicitConsent: false,position : 'bottom',scriptWrapper: cookieScripts,cookieScripts: 'Google Analytics, Google AdSense',backgroundColor: '#000000',backgroundOpacity: '80',linkColor: '#CA0000'
});
});
</script></body></html>