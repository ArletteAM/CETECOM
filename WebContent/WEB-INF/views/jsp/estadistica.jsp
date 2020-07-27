<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib prefix="pmt" uri = "http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>

<title>CETECOM</title>

<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<style type="text/css">
<!--
table {
font:11px/120% Verdana, Arial, Helvetica, sans-serif;
color:#777777;

}
.barrasv {
width:5.5em;
text-shadow:#CCCCCC 0.1em 0.1em 0.1em;
border-radius:5px;
-moz-border-radius:5px;
-webkit-border-radius:5px;
box-shadow:1px 1px 1px black;
-webkit-box-shadow:1px 1px 1px black;
-moz-box-shadow:1px 1px 1px black;
margin-bottom:1px;
}
.verticalmente {
position:relative; 
transform:rotate(-90deg);
-o-transform:rotate(-90deg);
-webkit-transform:rotate(-90deg);
-moz-transform:rotate(-90deg);
-ms-filter:progid:DXImageTransform.Microsoft.BasicImage(rotation=3);
filter:progid:DXImageTransform.Microsoft.BasicImage(rotation=3);
writing-mode:tb-rl;
filter:flipv fliph;
margin:0 -1em;
}
#etiq td {
height:7em;
width:3em;
font-weight:bold;
}
.bordetd {
border-top: 1px solid #777777;
border-bottom: 1px solid #777777;
margin-left: 1px;
margin-right: 1px;
padding-top:1px;
padding-bottom:1px;
}
-->
</style>
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
   <td> <a href="salir.htm"><img name="LOGOS_r2_c3" src="../images/LOGOS_r2_c3.jpg" width="111" height="30" id="LOGOS_r2_c3" alt="" /></a></td>
   <td rowspan="2"><img name="LOGOS_r2_c4" src="../images/LOGOS_r2_c4.jpg" width="28" height="51" id="LOGOS_r2_c4" alt="" /></td>
   <td><img src="../images/spacer.gif" width="1" height="30" alt="" /></td>
  </tr>
  <tr>
   <td colspan="2"><img name="LOGOS_r3_c2" src="../images/LOGOS_r3_c2.jpg" width="419" height="21" id="LOGOS_r3_c2" alt="" /></td>
   <td><img src="../images/spacer.gif" width="1" height="21" alt="" /></td>
  </tr>
  
  <TR>
	  <td>
		  <table align="center" cellpadding="0" cellspacing="0" border="0" width="98%">
		  <tbody align="center">
		  	<TR height=200>
		  	<TD colspan=10>
		  	</TD>
		  	</TR>
		    <tr>
		    	<c:set var = "cantidadfilas" value = "${0}"/>
		    	<c:forEach var="salida" begin="0" items="${listado}">
		    	<c:set var = "cantidadfilas" value = "${cantidadfilas + salida.cantidad}"/>
		    	</c:forEach>
		    	
		    	<c:forEach var="salida" begin="0" items="${listado}">
		    	<td valign="bottom"><div style="vertical-align:text-top">${salida.cantidad }</div><div class="barrasv" style="height:${(salida.cantidad / cantidadfilas)*100}px; background-color:#BDDA4C">&nbsp;</div></td>
		    	</c:forEach>

			</tr>
			
			<tr>
				<c:forEach var="salida" begin="0" items="${listado}">
					 <td class="bordetd">${fn:substring(((salida.cantidad / cantidadfilas)*100), 0, 4)}%</td>
				</c:forEach>
			</tr>
			
			<tr id="etiq">
				<c:forEach var="salida" begin="0" items="${listado}">
					 <td><div class="verticalmente">${salida.nombre }</div></td>
				</c:forEach>
		    </tr>
		  </tbody>
		</table>
  </td>
  </TR>
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
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
  