
<HTML>
<title>CETECOM</title>
 <HEAD>
  <TITLE> CREAR USUARIO </TITLE>
  <META NAME="Generator" CONTENT="EditPlus">
  <META NAME="Author" CONTENT="">
  <META NAME="Keywords" CONTENT="">
  <META NAME="Description" CONTENT="">
 </HEAD>

 <BODY>
<style>
	body{font-family: Calibri;}
</style>

<script>

function guardar(){
	
	 valor1 = document.getElementById('nombre').value;
	 valor2 = document.getElementById('paterno').value;
	 valor3 = document.getElementById('materno').value;
	 valor4 = document.getElementById('login').value;
	 valor5 = document.getElementById('clave').value;
	 if(valor1 == '' && valor2 == '' && valor3 == '' && valor4 == '' && valor5 == '' ){
		 alert("Debe ingresar informacion");
		 return false;
		 
	 }
	 
	 if(document.getElementById('id_tipo_usuario').value == null){
		 alert("Debe seleccionar una opcion tipo de usuario");
		 return false; 
	 }
	
	document.form.submit();
}

function cancelar(){
	alert("La creacion del usuario ha sido cancelada");
	window.close();
}

if ('${exito}' == '1'){
	alert("Usuario grabado en forma exitosa.");
}
if ('${exito}' == '2'){
	alert("El usuario ya se encuentra ingresado. Favor escoja otro login.");
}
</script> 


<body bgcolor="#ffffff">
	<form name="form" action="addCreateUser.htm" method="post" >
	<table style="display: inline-table;" border="0" cellpadding="0" cellspacing="0" width="1280">
	
	  <tr>
	   <td><img src="../images/spacer.gif" width="143" height="1" alt="" /></td>
	   <td><img src="../images/spacer.gif" width="88" height="1" alt="" /></td>
	   <td><img src="../images/spacer.gif" width="68" height="1" alt="" /></td>
	   <td><img src="../images/spacer.gif" width="37" height="1" alt="" /></td>
	   <td><img src="../images/spacer.gif" width="56" height="1" alt="" /></td>
	   <td><img src="../images/spacer.gif" width="166" height="1" alt="" /></td>
	   <td><img src="../images/spacer.gif" width="120" height="1" alt="" /></td>
	   <td><img src="../images/spacer.gif" width="44" height="1" alt="" /></td>
	   <td><img src="../images/spacer.gif" width="111" height="1" alt="" /></td>
	   <td><img src="../images/spacer.gif" width="313" height="1" alt="" /></td>
	   <td><img src="../images/spacer.gif" width="105" height="1" alt="" /></td>
	   <td><img src="../images/spacer.gif" width="29" height="1" alt="" /></td>
	   <td><img src="../images/spacer.gif" width="1" height="1" alt="" /></td>
	  </tr>
	
	  <tr>
	   <td colspan="12"><img name="CU_JC_V5_r1_c1" src="../images/CU_JC_V5_r1_c1.jpg" width="1280" height="51" id="CU_JC_V5_r1_c1" alt="" /></td>
	   <td><img src="../images/spacer.gif" width="1" height="51" alt="" /></td>
	  </tr>
	  <tr>
	   <td rowspan="2" colspan="7"><img name="CU_JC_V5_r2_c1" src="../images/CU_JC_V5_r2_c1.jpg" width="678" height="51" id="CU_JC_V5_r2_c1" alt="" /></td>
	   <td colspan="2"><img name="CU_JC_V5_r2_c8" src="../images/CU_JC_V5_r2_c8.jpg" width="155" height="31" id="CU_JC_V5_r2_c8" alt="" /></td>
	   <td bgcolor = "#11273E" align="center"><font color = "White"> ${nombre}&nbsp;${paterno }&nbsp;${materno }</font><img  alt="" /></td>
	   <td><a href="login.htm"><img name="CU_JC_V5_r2_c11" src="../images/CU_JC_V5_r2_c11.jpg" width="105" height="31" id="CU_JC_V5_r2_c11" alt="" /></a></td>
	   <td rowspan="2"><img name="CU_JC_V5_r2_c12" src="../images/CU_JC_V5_r2_c12.jpg" width="29" height="51" id="CU_JC_V5_r2_c12" alt="" /></td>
	   <td><img src="../images/spacer.gif" width="1" height="31" alt="" /></td>
	  </tr>
	  <tr>
	   <td colspan="4"><img name="CU_JC_V5_r3_c8" src="../images/CU_JC_V5_r3_c8.jpg" width="573" height="20" id="CU_JC_V5_r3_c8" alt="" /></td>
	   <td><img src="../images/spacer.gif" width="1" height="20" alt="" /></td>
	  </tr>
	  <tr>
	   <td colspan="12" valign="top"><p style="margin:0px"></p></td>
	   <td><img src="../images/spacer.gif" width="1" height="94" alt="" /></td>
	  </tr>
	  <tr>
	   <td rowspan="9" valign="top"><p style="margin:0px"></p></td>
	   <td colspan="2"><img name="CU_JC_V5_r5_c2" src="../images/CU_JC_V5_r5_c2.jpg" width="156" height="38" id="CU_JC_V5_r5_c2" alt="" /></td>
	   <td rowspan="7" valign="top"><p style="margin:0px"></p></td>
	   <td colspan="4"><input type="text" name="nombre" id="nombre"><img alt="" /></td>
	   <td rowspan="9" colspan="4" valign="top"><p style="margin:0px"></p></td>
	   <td><img src="../images/spacer.gif" width="1" height="38" alt="" /></td>
	  </tr>
	  <tr>
	   <td colspan="2"><img name="CU_JC_V5_r6_c2" src="../images/CU_JC_V5_r6_c2.jpg" width="156" height="46" id="CU_JC_V5_r6_c2" alt="" /></td>
	   <td colspan="4"><input type="text" name="paterno"  id="paterno"><img alt="" /></td>
	   <td><img src="../images/spacer.gif" width="1" height="46" alt="" /></td>
	  </tr>
	  <tr>
	   <td colspan="2"><img name="CU_JC_V5_r7_c2" src="../images/CU_JC_V5_r7_c2.jpg" width="156" height="44" id="CU_JC_V5_r7_c2" alt="" /></td>
	   <td colspan="4"><input type="text" name="materno" id="materno"><img  alt="" /></td>
	   <td><img src="../images/spacer.gif" width="1" height="44" alt="" /></td>
	  </tr>
	  <tr>
	   <td colspan="2"><img name="CU_JC_V5_r8_c2" src="../images/CU_JC_V5_r8_c2.jpg" width="156" height="36" id="CU_JC_V5_r8_c2" alt="" /></td>
	   <td colspan="4"><input type="text" name="login" id="login" maxlength="12"><img alt="" /></td>
	   <td><img src="../images/spacer.gif" width="1" height="36" alt="" /></td>
	  </tr>
	  <tr>
	   <td colspan="2"><img name="CU_JC_V5_r9_c2" src="../images/CU_JC_V5_r9_c2.jpg" width="156" height="49" id="CU_JC_V5_r9_c2" alt="" /></td>
	   <td colspan="4"><input type="text" name="clave" id="clave" maxlength="6"><img  alt="" /></td>
	   <td><img src="../images/spacer.gif" width="1" height="49" alt="" /></td>
	  </tr>
	  <tr>
	   <td colspan="2"><img name="CU_JC_V5_r10_c2" src="../images/CU_JC_V5_r10_c2.jpg" width="156" height="44" id="CU_JC_V5_r10_c2" alt="" /></td>
	   <td colspan="4">
		   <SELECT NAME="id_tipo_usuario" id="id_tipo_usuario" SIZE=1> 
					   		<OPTION VALUE="null">Seleccione</OPTION>
							<OPTION VALUE="1">Docente</OPTION>
							<OPTION VALUE="2">Cetecom</OPTION>
							<OPTION VALUE="3">Jefe Cetecom</OPTION>
							<OPTION VALUE="4">Administrativo</OPTION>
			</SELECT> 
	   <img  alt="" /></td>
	   <td><img src="../images/spacer.gif" width="1" height="44" alt="" /></td>
	  </tr>
	  <tr>
	   <td colspan="2" valign="top"><p style="margin:0px"></p></td>
	   <td colspan="4" valign="top"><p style="margin:0px"></p></td>
	   <td><img src="../images/spacer.gif" width="1" height="37" alt="" /></td>
	  </tr>
	  <tr>
	   <td rowspan="2" valign="top"><p style="margin:0px"></p></td>
	   <td colspan="3"><img name="CU_JC_V5_r12_c3" src="../images/CU_JC_V5_r12_c3.jpg" width="161" height="59" id="CU_JC_V5_r12_c3" alt="" onclick="guardar()"/></td>
	   <td><img name="CU_JC_V5_r12_c6" src="../images/CU_JC_V5_r12_c6.jpg" width="166" height="59" id="CU_JC_V5_r12_c6" alt="" onclick="cancelar()" /></td>
	   <td rowspan="2" colspan="2" valign="top"><p style="margin:0px"></p></td>
	   <td><img src="../images/spacer.gif" width="1" height="59" alt="" /></td>
	  </tr>
	  <tr>
	   <td colspan="4" valign="top"><p style="margin:0px"></p></td>
	   <td><img src="../images/spacer.gif" width="1" height="67" alt="" /></td>
	  </tr>
	  <tr>
	   <td colspan="12"><img name="CU_JC_V5_r14_c1" src="../images/CU_JC_V5_r14_c1.jpg" width="1280" height="103" id="CU_JC_V5_r14_c1" alt="" /></td>
	   <td><img src="../images/spacer.gif" width="1" height="103" alt="" /></td>
	  </tr>
	</table>
</FORM>
</BODY>
</HTML>

