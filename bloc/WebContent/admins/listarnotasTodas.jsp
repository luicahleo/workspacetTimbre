<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="java.util.List, fast.bloc.Nota"%>
	
<jsp:useBean id="usuario" class="fast.bloc.Usuario" scope="session" />
<jsp:useBean id="notas" class="fast.bloc.NotasDAO" scope="application" />
<%
List<Nota> lista = notas.obtenerTitulos(); // Se obtienen id y título de todas las notas
%>


<!DOCTYPE html>
<html>
  <head>
    <title>Bloc de Notas - FAST: Mostrar notas</title>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="../css/estilo.css" />
    <script src="../usuarios/js/listarnotas.js"></script>
  </head>
	
	<jsp:include page="../usuarios/cabecera.jsp" />

	<div id="lista">
		<h1>Lista de TODAS las notas</h1>
		<div id="lista-div">
			<table id="lista-tabla">
			<%
			for (Nota nota: lista) {
				//Generamos tabla
			%>
				<tr id='fila-<%=nota.getId()%>'>
					<td class="infonota">
						<p><strong><%=nota.getTitulo()%> : <%=nota.getNombreUsuario()%></strong></p>
						<div class='detalle' id='detalle-<%=nota.getId()%>'></div>
					</td>
				</tr>
			<%
			}
			%>
			</table>
		</div>

	</div>

	<%@include file="../pie.jsp"%>
  </body>
</html>