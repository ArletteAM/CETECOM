<%@ page import = "java.io.*,java.util.*" %>
<%@ page import = "javax.servlet.*,java.text.*" %>
<HTML>
 <HEAD>
  <TITLE>CETECOM</TITLE>
  <META NAME="Generator" CONTENT="EditPlus">
  <META NAME="Author" CONTENT="">
  <META NAME="Keywords" CONTENT="">
  <META NAME="Description" CONTENT="">
 </HEAD>

<STYLE media="all">
	h1 { font-family: Calibri, Candara, Segoe, "Segoe UI", Optima, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: 400; line-height: 14px; }
	h3 { font-family: Calibri, Candara, Segoe, "Segoe UI", Optima, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: 700; line-height: 15.4px; } 
	p { font-family: Calibri, Candara, Segoe, "Segoe UI", Optima, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: 400; line-height: 20px; } 
	blockquote { font-family: Calibri, Candara, Segoe, "Segoe UI", Optima, Arial, sans-serif; font-size: 21px; font-style: normal; font-variant: normal; font-weight: 400; line-height: 30px; } 
	pre { font-family: Calibri, Candara, Segoe, "Segoe UI", Optima, Arial, sans-serif; font-size: 13px; font-style: normal; font-variant: normal; font-weight: 400; line-height: 18.5714px; }
	
	BODY{
   	font-family: Calibri;
   	color: #11273E;
	}
	
	table {
   		width: 50%;
   		border: 0px solid #0000FF;
	}
	th, td {
	   width: 5%;
	   text-align: left;
	   vertical-align: top;
	   border:hidden;
	}
</STYLE>
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
   <td bgcolor = "#11273E" align="right"><font color = "White">${nombre}&nbsp;${paterno }&nbsp;${materno } </font></td>
   <td> <a href="login.htm"><img name="LOGOS_r2_c3" src="../images/LOGOS_r2_c3.jpg" width="111" height="30" id="LOGOS_r2_c3" alt="" /></a></td>
   <td rowspan="2"><img name="LOGOS_r2_c4" src="../images/LOGOS_r2_c4.jpg" width="28" height="51" id="LOGOS_r2_c4" alt="" /></td>
   <td><img src="../images/spacer.gif" width="1" height="30" alt="" /></td>
  </tr>
  <tr>
   <td colspan="2"><img name="LOGOS_r3_c2" src="../images/LOGOS_r3_c2.jpg" width="419" height="21" id="LOGOS_r3_c2" alt="" /></td>
   <td><img src="../images/spacer.gif" width="1" height="21" alt="" /></td>
  </tr>


<SCRIPT LANGUAGE="JavaScript">
function boton1(){
	elem1 = document.getElementById('tabla1'); elem1.style.display='';
	elem2 = document.getElementById('tabla2'); elem2.style.display='none';
	elem3 = document.getElementById('tabla3'); elem3.style.display='none';
	elem4 = document.getElementById('tabla4'); elem4.style.display='none';
}

function boton2(){
	elem1 = document.getElementById('tabla1'); elem1.style.display='none';
	elem2 = document.getElementById('tabla2'); elem2.style.display='';
	elem3 = document.getElementById('tabla3'); elem3.style.display='none';
	elem4 = document.getElementById('tabla4'); elem4.style.display='none';
}

function boton3(){
	elem1 = document.getElementById('tabla1'); elem1.style.display='none';
	elem2 = document.getElementById('tabla2'); elem2.style.display='none';
	elem3 = document.getElementById('tabla3'); elem3.style.display='';
	elem4 = document.getElementById('tabla4'); elem4.style.display='none';
}

function boton4(){
	elem1 = document.getElementById('tabla1'); elem1.style.display='none';
	elem2 = document.getElementById('tabla2'); elem2.style.display='none';
	elem3 = document.getElementById('tabla3'); elem3.style.display='none';
	elem4 = document.getElementById('tabla4'); elem4.style.display='';
}

function grabar() {
	 valor1 = document.getElementById('rdFred');
	 valor2 = document.getElementById('rdFext');
	 valor3 = document.getElementById('rdFint');
	 
	 if(valor1.checked == false && valor2.checked == false && valor3.checked == false){
		 alert("Debe seleccionar una opcion tipo de falla");
		 return false; 
	 }
	 
	 if(document.getElementById('btnNumeroSala').value == null){
		 alert("Debe seleccionar una opcion numero de sala");
		 return false; 
	 }
	 
	 if(document.getElementById('btnNumPC').value  == null){
		 alert("Debe seleccionar una opcion numero de pc");
		 return false; 
	 }
	 
	document.form.submit();
}

if ('${exito}' == '1'){
	alert("Su reporte de falla ha sido enviado en forma exitosa.");
	
}


</SCRIPT>

<BODY >

<form name="form" action="addFormulario.htm" method="post" >	
	  
<TABLE Border = 0  bordercolor=red>
	 <TR>
		<td><img name="TIPOFALLA_BTN" src="../images/TIPOFALLA_BTN.jpg" width="169" height="62" id="TIPOFALLA_BTN" alt="" ONCLICK="boton1() "/></td>
		<TD>
			 <table style="display: inline-table;" border="0" cellpadding="0" cellspacing="0" width="423"  style="display: none" id="tabla1">
			
				   <td><img src="spacer.gif" width="33" height="1" alt="" /></td>
				   <td><img src="spacer.gif" width="349" height="1" alt="" /></td>
				   <td><img src="spacer.gif" width="41" height="1" alt="" /></td>
				   <td><img src="spacer.gif" width="1" height="1" alt="" /></td>
				  </tr>
				
				  <tr>
				   <td colspan="3"><img name="RC_TF_V3_r1_c1" src="../images/RC_TF_V3_r1_c1.jpg" width="423" height="25" id="RC_TF_V3_r1_c1" alt="" /></td>
				   <td><img src="spacer.gif" width="1" height="25" alt="" /></td>
				  </tr>
				  <tr>
				  <%
			         Date date = new Date();
			         SimpleDateFormat ft = new SimpleDateFormat ("dd/MM/yyyy");
			      %>
				   <td rowspan="3"><img name="RC_TF_V3_r2_c1" src="../images/RC_TF_V3_r2_c1.jpg" width="33" height="204" id="RC_TF_V3_r2_c1" alt="" /></td>
				   <td bgcolor = "#E7E5E6" ><B>Fecha  <%= ft.format(date)  %></td></B>
				   <td rowspan="3"><img name="RC_TF_V3_r2_c3" src="../images/RC_TF_V3_r2_c3.jpg" width="41" height="204" id="RC_TF_V3_r2_c3" alt="" /></td>
				   <td><img src="spacer.gif" width="1" height="40" alt="" /></td>
				  </tr>
				  <tr>
				   <td>
				   	<TABLE border=0  id="tabla1" width=300>
						  <tr >
						  	<td >
						  		<input type="radio" name="rdFred" id="rdFred" value="1">Falla de Red
						  	</td>		   
						  </tr>
						  <tr>
						  	<td>
						  		<input type="radio" name="rdFred" id="rdFext" value="2">Falla de Externa
						  	</td>	   
						  </tr>
						  <tr>
						  	<td>
						  		<input type="radio" name="rdFred" id="rdFint" value="3">Falla de Interna
						  	</td>	   
						  </tr>
					</TABLE>
				   <img alt="" /></td>
				   <td><img src="spacer.gif" width="1" height="137" alt="" /></td>
				  </tr>
				  <tr>
				   <td><img name="RC_TF_V3_r4_c2" src="../images/RC_TF_V3_r4_c2.jpg" width="349" height="27" id="RC_TF_V3_r4_c2" alt="" /></td>
				   <td><img src="spacer.gif" width="1" height="27" alt="" /></td>
				  </tr>
			</table>
		</TD>
	 </TR>
	 
	 <TR>
		<td ><img name="HtmDiap2_V2_r13_c3" src="../images/HtmDiap2_V2_r13_c3.jpg" width="169" height="62" id="HtmDiap2_V2_r13_c3" alt="" ONCLICK="boton2()"/></td>
		<TD>
			<table  border="1" cellpadding="0" cellspacing="0" width="418" style="display: none" id="tabla2">
		
			  <tr>
			   <td><img src="spacer.gif" width="33" height="1" alt="" /></td>
			   <td><img src="spacer.gif" width="38" height="1" alt="" /></td>
			   <td><img src="spacer.gif" width="83" height="1" alt="" /></td>
			   <td><img src="spacer.gif" width="12" height="1" alt="" /></td>
			   <td><img src="spacer.gif" width="167" height="1" alt="" /></td>
			   <td><img src="spacer.gif" width="46" height="1" alt="" /></td>
			   <td><img src="spacer.gif" width="39" height="1" alt="" /></td>
			   <td><img src="spacer.gif" width="1" height="1" alt="" /></td>
			  </tr>
			
			  <tr>
			   <td colspan="7"><img name="NS_RC_r1_c1" src="../images/NS_RC_r1_c1.jpg" width="418" height="27" id="NS_RC_r1_c1" alt="" /></td>
			   <td><img src="spacer.gif" width="1" height="27" alt="" /></td>
			  </tr>
			  <tr>
			   <td rowspan="6"><img name="NS_RC_r2_c1" src="../images/NS_RC_r2_c1.jpg" width="33" height="199" id="NS_RC_r2_c1" alt="" /></td>
			   <td bgcolor = "#E7E5E6" colspan="5"><B>Fecha  <%= ft.format(date)  %></td></B>
			   <td rowspan="6"><img name="NS_RC_r2_c7" src="../images/NS_RC_r2_c7.jpg" width="39" height="199" id="NS_RC_r2_c7" alt="" /></td>
			   <td><img src="spacer.gif" width="1" height="32" alt="" /></td>
			  </tr>
			  <tr>
			   <td colspan="5"><img alt="" /></td>
			   <td><img src="spacer.gif" width="1" height="54" alt="" /></td>
			  </tr>
			  <tr>
			   <td rowspan="4"><img name="NS_RC_r4_c2" src="../images/NS_RC_r4_c2.jpg" width="38" height="113" id="NS_RC_r4_c2" alt="" /></td>
			   <td>
			   	<img name="NS_RC_r4_c3" src="../images/NS_RC_r4_c3.jpg" width="83" height="25" id="NS_RC_r4_c3" alt="" />
			   </td>
			   <td rowspan="2" colspan="3">
				   <SELECT NAME="btnNumeroSala" id="btnNumeroSala" SIZE=1> 
				   		<OPTION VALUE="null">Seleccione</OPTION>
						<OPTION VALUE="PC3">PC3</OPTION>
						<OPTION VALUE="PC4">PC4</OPTION>
						<OPTION VALUE="PC5">PC5</OPTION>
						<OPTION VALUE="PC6">PC6</OPTION> 
						<OPTION VALUE="PC7">PC7</OPTION> 
						<OPTION VALUE="PC9">PC9</OPTION> 
						<OPTION VALUE="PC10">PC10</OPTION> 
						<OPTION VALUE="PC11">PC11</OPTION> 
						<OPTION VALUE="PC12">PC12</OPTION> 
						<OPTION VALUE="PC13">PC13</OPTION> 
						<OPTION VALUE="PC14">PC14</OPTION> 
						<OPTION VALUE="TR1">TR1</OPTION> 
						<OPTION VALUE="TR2">TR2</OPTION> 
						<OPTION VALUE="TH1">TH1</OPTION> 
						<OPTION VALUE="TH2">TH2</OPTION>
					</SELECT> 
					<img  alt="" />
				</td>
			   <td><img src="spacer.gif" width="1" height="25" alt="" /></td>
			  </tr>
			  <tr>
			   <td rowspan="3"><img name="NS_RC_r5_c3" src="../images/NS_RC_r5_c3.jpg" width="83" height="88" id="NS_RC_r5_c3" alt="" /></td>
			   <td><img src="spacer.gif" width="1" height="10" alt="" /></td>
			  </tr>
			  <tr>
			   <td rowspan="2"><img name="NS_RC_r6_c4" src="../images/NS_RC_r6_c4.jpg" width="12" height="78" id="NS_RC_r6_c4" alt="" /></td>
			   <td><img name="NS_RC_r6_c5" src="../images/NS_RC_r6_c5.jpg" width="167" height="27" id="NS_RC_r6_c5" alt="" /></td>
			   <td rowspan="2"><img name="NS_RC_r6_c6" src="../images/NS_RC_r6_c6.jpg" width="46" height="78" id="NS_RC_r6_c6" alt="" /></td>
			   <td><img src="spacer.gif" width="1" height="27" alt="" /></td>
			  </tr>
			  <tr>
			   <td><img name="NS_RC_r7_c5" src="../images/NS_RC_r7_c5.jpg" width="167" height="51" id="NS_RC_r7_c5" alt="" /></td>
			   <td><img src="spacer.gif" width="1" height="51" alt="" /></td>
			  </tr>
			</table>
		</TD>
	 </TR>
	 
	<TR>
		<td ><img name="HtmDiap2_V2_r16_c3" src="../images/HtmDiap2_V2_r16_c3.jpg" width="169" height="63" id="HtmDiap2_V2_r16_c3" alt="" ONCLICK="boton3()" /></td>
		<TD>
			<table  border="0" cellpadding="0" cellspacing="0" width="420" style="display: none" id="tabla3">

				  <tr>
				   <td><img src="spacer.gif" width="34" height="1" alt="" /></td>
				   <td><img src="spacer.gif" width="35" height="1" alt="" /></td>
				   <td><img src="spacer.gif" width="76" height="1" alt="" /></td>
				   <td><img src="spacer.gif" width="20" height="1" alt="" /></td>
				   <td><img src="spacer.gif" width="153" height="1" alt="" /></td>
				   <td><img src="spacer.gif" width="62" height="1" alt="" /></td>
				   <td><img src="spacer.gif" width="40" height="1" alt="" /></td>
				   <td><img src="spacer.gif" width="1" height="1" alt="" /></td>
				  </tr>
				
				  <tr>
				   <td colspan="7"><img name="NumPC_r1_c1" src="../images/NumPC_r1_c1.jpg" width="420" height="28" id="NumPC_r1_c1" alt="" /></td>
				   <td><img src="spacer.gif" width="1" height="28" alt="" /></td>
				  </tr>
				  <tr>
				   <td rowspan="6"><img name="NumPC_r2_c1" src="../images/NumPC_r2_c1.jpg" width="34" height="203" id="NumPC_r2_c1" alt="" /></td>
				   <td bgcolor = "#E7E5E6" colspan="5"><B>Fecha  <%= ft.format(date)  %></td></B>
				   <td rowspan="6"><img name="NumPC_r2_c7" src="../images/NumPC_r2_c7.jpg" width="40" height="203" id="NumPC_r2_c7" alt="" /></td>
				   <td><img src="spacer.gif" width="1" height="32" alt="" /></td>
				  </tr>
				  <tr>
				   <td colspan="5"><img name="NumPC_r3_c2" src="../images/NumPC_r3_c2.jpg" width="346" height="49" id="NumPC_r3_c2" alt="" /></td>
				   <td><img src="spacer.gif" width="1" height="49" alt="" /></td>
				  </tr>
				  <tr>
				   <td rowspan="4"><img name="NumPC_r4_c2" src="../images/NumPC_r4_c2.jpg" width="35" height="122" id="NumPC_r4_c2" alt="" /></td>
				   <td><img name="NumPC_r4_c3" src="../images/NumPC_r4_c3.jpg" width="76" height="29" id="NumPC_r4_c3" alt="" /></td>
				   <td rowspan="2" colspan="3">
				   
				      <SELECT NAME="btnNumPC" id="btnNumPC" SIZE=1 valign="top"> 
				      							<OPTION VALUE="null">Seleccione</OPTION>
												<OPTION VALUE="LPCLD01">LPCLD01</OPTION>
												<OPTION VALUE="LPCLD02">LPCLD02</OPTION>
												<OPTION VALUE="LPCLD03">LPCLD03</OPTION>
												<OPTION VALUE="LPCLD04">LPCLD04</OPTION> 
												<OPTION VALUE="LPCLD05">LPCLD05</OPTION> 
												<OPTION VALUE="LPCLD06">LPCLD06</OPTION> 
												<OPTION VALUE="LPCLD07">LPCLD07</OPTION> 
												<OPTION VALUE="LPCLD08">LPCLD08</OPTION> 
												<OPTION VALUE="LPCLD09">LPCLD09</OPTION> 
												<OPTION VALUE="LPCLD10">LPCLD10</OPTION> 
												<OPTION VALUE="LPCLD11">LPCLD11</OPTION> 
												<OPTION VALUE="LPCLD12">LPCLD12</OPTION> 
												<OPTION VALUE="LPCLD13">LPCLD13</OPTION> 
												<OPTION VALUE="LPCLD14">LPCLD14</OPTION> 
												<OPTION VALUE="LPCLD15">LPCLD15</OPTION> 
												<OPTION VALUE="LPCLD16">LPCLD16</OPTION> 
												<OPTION VALUE="LPCLD17">LPCLD17</OPTION> 
												<OPTION VALUE="LPCLD18">LPCLD18</OPTION> 
												<OPTION VALUE="LPCLD19">LPCLD19</OPTION> 
												<OPTION VALUE="LPCLD20">LPCLD20</OPTION> 
												<OPTION VALUE="LPCLD21">LPCLD21</OPTION> 
												<OPTION VALUE="LPCLD22">LPCLD22</OPTION> 
												<OPTION VALUE="LPCLD23">LPCLD23</OPTION> 
												<OPTION VALUE="LPCLD24">LPCLD24</OPTION> 
												<OPTION VALUE="LPCLD25">LPCLD25</OPTION> 
												<OPTION VALUE="LPCLD26">LPCLD26</OPTION> 
												<OPTION VALUE="LPCLD27">LPCLD27</OPTION> 
												<OPTION VALUE="LPCLD28">LPCLD28</OPTION> 
												
					  </SELECT>
					   
				   <img  alt="" /></td>
				   <td><img src="spacer.gif" width="1" height="29" alt="" /></td>
				  </tr>
				  <tr>
				   <td rowspan="3"><img name="NumPC_r5_c3" src="../images/NumPC_r5_c3.jpg" width="76" height="93" id="NumPC_r5_c3" alt="" /></td>
				   <td><img src="spacer.gif" width="1" height="11" alt="" /></td>
				  </tr>
				  <tr>
				   <td rowspan="2"><img name="NumPC_r6_c4" src="../images/NumPC_r6_c4.jpg" width="20" height="82" id="NumPC_r6_c4" alt="" /></td>
				   <td><img name="NumPC_r6_c5" src="../images/NumPC_r6_c5.jpg" width="153" height="26" id="NumPC_r6_c5" alt="" /></td>
				   <td rowspan="2"><img name="NumPC_r6_c6" src="../images/NumPC_r6_c6.jpg" width="62" height="82" id="NumPC_r6_c6" alt="" /></td>
				   <td><img src="spacer.gif" width="1" height="26" alt="" /></td>
				  </tr>
				  <tr>
				   <td><img name="NumPC_r7_c5" src="../images/NumPC_r7_c5.jpg" width="153" height="56" id="NumPC_r7_c5" alt="" /></td>
				   <td><img src="spacer.gif" width="1" height="56" alt="" /></td>
				  </tr>
			</table>
		</TD>
	 </TR>
	 
	<TR>
		<td ><img name="HtmDiap2_V2_r18_c3" src="../images/HtmDiap2_V2_r18_c3.jpg" width="169" height="62" id="HtmDiap2_V2_r18_c3" alt="" ONCLICK="boton4()" /></td>
		<TD>
			<TABLE  width="100" border=0 height=50 style="display: none" id="tabla4">
				<TR>
					<td>
						<table border="0" cellpadding="0" cellspacing="0" width="464" id="tabla4">
							  <tr>
							   <td><img src="spacer.gif" width="13" height="1" alt="" /></td>
							   <td><img src="spacer.gif" width="10" height="1" alt="" /></td>
							   <td><img src="spacer.gif" width="93" height="1" alt="" /></td>
							   <td><img src="spacer.gif" width="326" height="1" alt="" /></td>
							   <td><img src="spacer.gif" width="22" height="1" alt="" /></td>
							   <td><img src="spacer.gif" width="1" height="1" alt="" /></td>
							  </tr>
							
							  <tr>
							   <td colspan="5"><img name="Mensje_r1_c1" src="../images/Mensje_r1_c1.jpg" width="464" height="13" id="Mensje_r1_c1" alt="" /></td>
							   <td><img src="spacer.gif" width="1" height="13" alt="" /></td>
							  </tr>
							  <tr>
							   <td rowspan="5"><img name="Mensje_r2_c1" src="../images/Mensje_r2_c1.jpg" width="13" height="385" id="Mensje_r2_c1" alt="" /></td>
							   <td colspan="3"><img name="Mensje_r2_c2" src="../images/Mensje_r2_c2.jpg" width="429" height="43" id="Mensje_r2_c2" alt="" /></td>
							   <td rowspan="5"><img name="Mensje_r2_c5" src="../images/Mensje_r2_c5.jpg" width="22" height="385" id="Mensje_r2_c5" alt="" /></td>
							   <td><img src="spacer.gif" width="1" height="43" alt="" /></td>
							  </tr>
							  <tr>
							   <td colspan="3"><textarea name="txtDescripFalla" rows="15" cols="50">Escriba aquí sus comentarios</textarea><img  alt="" /></td>
							   <td><img src="spacer.gif" width="1" height="256" alt="" /></td>
							  </tr>
							  <tr>
							   <td colspan="3"><img name="Mensje_r4_c2" src="../images/Mensje_r4_c2.jpg" width="429" height="20" id="Mensje_r4_c2" alt="" /></td>
							   <td><img src="spacer.gif" width="1" height="20" alt="" /></td>
							  </tr>
							  <tr>
							   <td><img name="Mensje_r5_c2" src="../images/Mensje_r5_c2.jpg" width="10" height="41" id="Mensje_r5_c2" alt="" /></td>
							   <td><img name="Mensje_r5_c3" src="../images/Mensje_r5_c3.jpg" width="93" height="41" id="Mensje_r5_c3" alt="" onclick="grabar()" /></td>
							   <td><img name="Mensje_r5_c4" src="../images/Mensje_r5_c4.jpg" width="326" height="41" id="Mensje_r5_c4" alt="" /></td>
							   <td><img src="spacer.gif" width="1" height="41" alt="" /></td>
							  </tr>
							  <tr>
							   <td colspan="3"><img name="Mensje_r6_c2" src="../images/Mensje_r6_c2.jpg" width="429" height="25" id="Mensje_r6_c2" alt="" /></td>
							   <td><img src="spacer.gif" width="1" height="25" alt="" /></td>
							  </tr>
						</table>
					</td>
				</TR>
			</TABLE>
		</TD>
	</TR>
</TABLE>
</form>
</BODY>
</HTML>