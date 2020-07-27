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
   <td><img src="../images/spacer.gif" width="833" height="1" alt="" /></td>
   <td><img src="../images/spacer.gif" width="308" height="1" alt="" /></td>
   <td><img src="../images/spacer.gif" width="111" height="1" alt="" /></td>
   <td><img src="../images/spacer.gif" width="28" height="1" alt="" /></td>
   <td><img src="../images/spacer.gif" width="1" height="1" alt="" /></td>
  </tr>

  <tr>
   <td colspan="4"><img name="LOGOS_r1_c1" src="../images/LOGOS_r1_c1.jpg" width="1280" height="51" id="LOGOS_r1_c1" alt="" /></td>
   <td><img src="../images/spacer.gif" width="1" height="51" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="2"><img name="LOGOS_r2_c1" src="../images/LOGOS_r2_c1.jpg" width="833" height="51" id="LOGOS_r2_c1" alt="" /></td>
   <td bgcolor = "#11273E" align="center"><font color = "White">${nombre}&nbsp;${paterno }&nbsp;${materno } </font></td>
   <td> <a href="login.htm"><img name="LOGOS_r2_c3" src="../images/LOGOS_r2_c3.jpg" width="111" height="30" id="LOGOS_r2_c3" alt="" /></a></td>
   <td rowspan="2"><img name="LOGOS_r2_c4" src="../images/LOGOS_r2_c4.jpg" width="28" height="51" id="LOGOS_r2_c4" alt="" /></td>
   <td><img src="../images/spacer.gif" width="1" height="30" alt="" /></td>
  </tr>
  <tr>
   <td colspan="2"><img name="LOGOS_r3_c2" src="../images/LOGOS_r3_c2.jpg" width="419" height="21" id="LOGOS_r3_c2" alt="" /></td>
   <td><img src="../images/spacer.gif" width="1" height="21" alt="" /></td>
  </tr>
  
  <script>
function detalle(idform){
	window.open( "datosformulario.htm?idform="+idform, "ventana1", "height=450,width=700,left=300,location=yes,menubar=no,resizable=no,scrollbars=yes,status=no,titlebar=yes,top=300" );
}
</script>

  <div>
   <table>
    <c:set var = "color" value = ""/>
    <tr bgcolor="#DBDBEA" <p style="color:#11273E;"</p>>
    	<td align="center" width = "300"><B>NOMBRE DOCENTE</B></td>
        <td align="center" width = "200"><B>TIPO DE FALLA</B></td>
        <td align="center" width = "100"><B>Nº DE LABORATORIO</B></td>
        <td align="center" width = "100"><B>Nº DE PC</B></td>
        <td align="center" width = "353"><B>DESCRIPCIÓN DE FALLA</B></td>
        <td align="center" width = "200"><B>ESTADO</B></td>
    </tr>
    <c:forEach var="salida" begin="0" items="${listado}">
    		<c:if test = "${salida.nom_estado eq 'ACEPTADO'}">
		        <c:set var = "color" value = "#6DD900"/>
		     </c:if>
		     
		     <c:if test = "${salida.nom_estado eq 'EN PROCESO'}">
		        <c:set var = "color" value = "#FFFF00"/>
		     </c:if>
		     
		     <c:if test = "${salida.nom_estado eq 'RECHAZADO'}">
		        <c:set var = "color" value = "#FF2626"/>
		     </c:if>
		     
		  	 <c:if test = "${salida.nom_estado eq 'SOLUCIONADO'}">
		        <c:set var = "color" value = "#00D9D9"/>
		     </c:if>
		     
		     <c:if test = "${salida.nom_estado eq 'SIN SOLUCION'}">
		        <c:set var = "color" value = "#FF8000"/>
		     </c:if>
		     
		     <c:if test = "${salida.nom_estado eq 'REVISAR'}">
		        <c:set var = "color" value = "#E7E5E6"/>
		     </c:if>
		        
	    <tr bgcolor="${color }" onclick="detalle(${salida.id_formul})">
	        <td align="left" width = "300" > ${salida.nombre}</td>
	        <td align="left" width = "200"> ${salida.NOM_FALLA}</td>
	        <td align="left" width = "100"> ${salida.NUM_SALA}</td>
	        <td align="left" width = "100"> ${salida.NUM_PC}</td>
	        <td align="left" width = "353"> ${salida.DESC_FALLA}</td>
	        <td align="left" width = "200"> ${salida.nom_estado}</td>
	    </tr>
	</c:forEach>
   </table>
 </div>	
  <tr>
   <td colspan="4" valign="top"><p style="margin:0px"></p></td>
   <td><img src="../images/spacer.gif" width="1" height="515" alt="" /></td>
  </tr>
  <tr>
   <td colspan="4"><img name="LOGOS_r5_c1" src="../images/LOGOS_r5_c1.jpg" width="1280" height="103" id="LOGOS_r5_c1" alt="" /></td>
   <td><img src="../images/spacer.gif" width="1" height="103" alt="" /></td>
  </tr>
</table>
</body>
</html>
