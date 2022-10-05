<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ejemplo expresiones JSP</title>
</head>
<body>

<h1>Ejemplo de expresiones </h1>

<!-- Ejemplo de convertir en mayusculas con metodo toUpperCase() -->

Convirtiendo en mayusculas: <%= new String("Juanca").toUpperCase() %>

<br>
<!--  No tiene que ser codigo java, tambien puede ser una expresion matematica -->


La suma de 5 y 7 es: <%= 5+7 %>


<br>

10 es mayor que 100: <%= 10>100 %>



</body>
</html>