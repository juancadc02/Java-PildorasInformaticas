<%@page import="juancadc.es.CalculosMatematicos.Calculos"%>
<%@ page import="juancadc.es.CalculosMatematicos.Calculos.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  
  
  	<h1>Calculos matematicos desde paquetes externos</h1>
  	
  	<br>
  	
  	La suma de 5 y 7 es: <%= Calculos.metodoSuma(5,7)%>
  	
  	<br>
  	
  	La resta de 5 y 7 es: <%= Calculos.metodoResta(5, 7) %>
  	
  	<br>
  	
  	La multiplicacion de 5 y 7 es: <%= Calculos.metodoMultiplica(5, 7) %>
  
  
  
</body>
</html>