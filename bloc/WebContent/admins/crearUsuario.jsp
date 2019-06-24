<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.List, fast.bloc.Nota, fast.bloc.DAOException%>
    
<jsp:useBean id="usuario" class="fast.bloc.Usuario" scope="session" />
<jsp:useBean id="notas" class="fast.bloc.NotasDAO" scope="application" />
<jsp:useBean id="nota" class="fast.bloc.Nota" />
<jsp:setProperty property="*" name="nota"/>


<!DOCTYPE html>
<html>
<head>

	<title>Bloc de Notas - FAST: Crear nota</title>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<link rel="stylesheet" type="text/css" href="../css/estilo.css" />
	<script src="js/listarnotas.js"></script>
	<script src="js/crearnotas.js"></script>



</head>
<body>
	<jsp:include page="../usuarios/cabecera.jsp" />

</body>
</html>