<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1> Ejemplos de Scriptlet</h1>


<%

for(int i =0; i< 10;i++){
	
	out.println("<br>Este es el mensaje "+ i); // Etiqueta html br para que los mensajes salgan separados ya que el println no funciona igual que en consola 
}





%>
</body>
</html>