
<%@page import="fast.bloc.Usuario"%>
<script src="${pageContext.request.contextPath}/usuarios/js/cabecera.js"></script>


<jsp:useBean id="usuario" class="fast.bloc.Usuario" scope="session" />


<%

String usu = usuario.getNombre();

if(usuario.getTipo_usu()==Usuario.ADMINISTRADOR){
	
	System.out.println("debug: " + usu);


%>


<%}%>

<div id="navegador">
  <ul>
    <li id="seccion1" onmouseover="ver(1)" onmouseout="ocultar(1)">
      <a href="#">${usuario.nombre}</a>
      <div id="subseccion1">
        <p><a href="#"> Perfil</a></p>
        <p><a href="#"> </a>Notas</p>
        <p><a href="#">Cerrar sesion</a></p>
      </div>
    </li>
   
  </ul>
  <div class="borrar"></div>
</div>



<div id="cabecera">
	<div id="logotipo">
		<a href="${pageContext.request.contextPath}/menu.jsp"> 
		<img src="${pageContext.request.contextPath}/imagenes/blocnotasfast-p.png"	alt="Bloc de Notas FAST"/>
		</a>
	</div>

<!-- 

	<a href="${pageContext.request.contextPath}/index.jsp?salir">
	<span class="acceso">Cerrar sesi�n</span>
	</a> 
	<span class='acceso' id='nombreusuario'>${usuario.nombre}</span>
 -->
</div>
