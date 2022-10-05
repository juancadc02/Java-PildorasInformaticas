<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="java.lang.Object" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%

// Leyendo datos de formulario
String ciudad_favorita=request.getParameter("ciudad_favorita"); //<-- Este nombre si tiene que ser igual que el del formulario, el primero no.

//Creamos la cookies

Cookie laCokie= new Cookie("agencia-viajes.ciudad-favorita",ciudad_favorita); //<-- El primer parametro es el nombre con el que me quiero referir y el segundo es el valor que viene del formulario y tiene el nombre de "ciudad-favorita"

//Vida de la cookie 


laCokie.setMaxAge(365*24*60*60); //<-- Vida de la cookie 1 año

//Enviar usuario

response.addCookie(laCokie);



%>

Gracias por enviar tus preferencias


<a href="agencia-viaje.jsp"> Ir a la agencia de viaje</a>
</body>
</html>