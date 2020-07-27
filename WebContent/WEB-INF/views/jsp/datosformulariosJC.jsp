<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<head>
<title>CETECOM</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<style type="text/css">td img {display: block;}</style>

</head>
<body bgcolor="#ffffff">

<style>
	body{font-family: Calibri;}
</style>


<table style="display: inline-table;" border="0" cellpadding="0" cellspacing="0" width="1280">

  <tr>
   <td><img src="../images/spacer.gif" width="677" height="1" alt="" /></td>
   <td><img src="../images/spacer.gif" width="160" height="1" alt="" /></td>
   <td><img src="../images/spacer.gif" width="314" height="1" alt="" /></td>
   <td><img src="../images/spacer.gif" width="103" height="1" alt="" /></td>
   <td><img src="../images/spacer.gif" width="26" height="1" alt="" /></td>
   <td><img src="../images/spacer.gif" width="1" height="1" alt="" /></td>
  </tr>

  <tr>
   <td colspan="5"><img name="form_r1_c1" src="../images/form_r1_c1.jpg" width="1280" height="43" id="form_r1_c1" alt="" /></td>
   <td><img src="../images/spacer.gif" width="1" height="43" alt="" /></td>
  </tr>
  <tr>
   <td><img name="form_r2_c1" src="../images/form_r2_c1.jpg" width="677" height="43" id="form_r2_c1" alt="" /></td>
   <td bgcolor = "#11273E"></td>
   <td bgcolor = "#11273E"></td>
   <td bgcolor = "#11273E"></td>
   <td><img name="form_r2_c5" src="../images/form_r2_c5.jpg" width="26" height="43" id="form_r2_c5" alt="" /></td>
   <td><img src="../images/spacer.gif" width="1" height="43" alt="" /></td>
  </tr>
  <tr>
   <td colspan="5"><img name="form_r3_c1" src="../images/form_r3_c1.jpg" width="1280" height="17" id="form_r3_c1" alt="" /></td>
   <td><img src="../images/spacer.gif" width="1" height="17" alt="" /></td>
  </tr>
  
<form name="form" action="updateformulario.htm" method="post" >	
<INPUT TYPE="hidden" name="idform" value="${dto.id_formul}">
			
<script>
function guardar(){
	 valor1 = document.getElementById('rdFred') ;
	 valor2 = document.getElementById('rdFext') ;
	 if(valor1.checked == false && valor2.checked == false){
		 alert("Debe seleccionar una opcion");
		 return false;
		 
	 }
	
	document.form.submit();
}

if('${exito}' == 'true'){
	opener.location.reload(); 
	window.close();
}

function cancelar(){
	window.close();
}


</script>		
	<div class="l-page">
		<div class="header-wrapper">
			<header class="l-header" role="banner">
				<div class="l-branding">					
					<table class="egt">
						  <colgroup>
						  <colgroup span="1" style="background: rgba(8, 14, 93, 0.5); border: 1px solid rgba(0, 0, 0, 1);"></colgroup>
						  <colgroup span="5" style="background: rgba(4, 7, 42, 0.5); border: 1px solid rgba(0, 0, 0, 1);"></colgroup>
						  
						  
						 
						  <table border = 0 width = 300>
						  	<td bgcolor="#DBDBEA" align="center" width = "300"><p style="color:#11273E;"><B>MENSAJES DE ALERTA RECIBIDO</B></p></td><br><br>
							<tr>
								<td>
								</td>
							</tr>
							<tr>
								<td>
								</td>
							</tr>
							<tr>
								<td>
								</td>
							</tr>
							<tr>
								<td>
								</td>
							</tr>
							<tr>
								<td bgcolor="#FFB81E" align="center" style="color:#11273E;">
									${dto.NOM_FALLA}
								</td>
							</tr>
							<tr>	
								<td bgcolor="#FFB81E" align="center" style="color:#11273E;">
									${dto.NUM_SALA}
								</td>
							</tr>
							<tr>	
								<td bgcolor="#FFB81E" align="center" style="color:#11273E;">
									${dto.NUM_PC}
								</td>
							</tr>
							<tr>	
								<td bgcolor="#FFB81E" align="center" style="color:#11273E;">
									${dto.DESC_FALLA}
								</td>
							</tr>	
						 </table><br><br>
							
				<tr>
					<td>
						<INPUT TYPE="radio" value="4" id="rdFred" name="idestado" >&nbsp;Solucionado
					</td>
				</tr>
				<tr>
					<td>
						<INPUT TYPE="radio" value="5" id="rdFext" name="idestado">&nbsp;Sin solución
					</td>
				</tr>
	</table>
	
	<br>
	<td><br><br>
		<INPUT TYPE="button" value="Guardar" id="btnAceptarEst" onclick="guardar()">
	</td>	
	<td>
		<INPUT TYPE="button" value="Cancelar" id="btnCancelarEst" onclick="cancelar()">
	</td>
						  
						</table>
						</form>
					</table>
				</div>
			</header>
		</div>		
	</div>

  <tr>
   <td colspan="5" valign="top"><p style="margin:0px"></p></td>
   <td><img src="../images/spacer.gif" width="1" height="514" alt="" /></td>
  </tr>
  <tr>
   <td colspan="5"><img name="form_r5_c1" src="../images/form_r5_c1.jpg" width="1280" height="17" id="form_r5_c1" alt="" /></td>
   <td><img src="../images/spacer.gif" width="1" height="17" alt="" /></td>
  </tr>
  <tr>
   <td colspan="5"><img name="form_r6_c1" src="../images/form_r6_c1.jpg" width="1280" height="86" id="form_r6_c1" alt="" /></td>
   <td><img src="../images/spacer.gif" width="1" height="86" alt="" /></td>
  </tr>
</table>
</body>
</html>
