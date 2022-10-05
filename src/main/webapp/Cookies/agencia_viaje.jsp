<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="javax.servlet.http.Cookie" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1 style="text-align:center">Agencia de viajes</h1>

<%

		//Valor por defecto
		
		String ciudad_favorita="Madrid";
		

		//Lee la cookie de la peticion del navegador 
		
		Cookie [] laCookie=request.getCookies();
		
		//Buscar las preferencias. La ciudad favorita
		
		if(laCookie!=null){
			
			for(Cookie co : laCookie){
				
				if("agencia_viaje.ciudad_favorita".equals(co.getName())){
					
					ciudad_favorita=co.getValue();
					
					break;
				}
			}
		}
%>


<h3>Vuelos a <%=ciudad_favorita %></h3>

<p>Mas informacion de vuelos</p>
<p>Mas informacion de vuelos</p>
<p>Mas informacion de vuelos</p>
<p>Mas informacion de vuelos</p>
<p>Mas informacion de vuelos</p>
<p>Mas informacion de vuelos</p>
<p>Mas informacion de vuelos</p>



<br>


<h3>Hoteles en <%=ciudad_favorita %></h3>

<p>Mas informacion de hoteles</p>
<p>Mas informacion de hoteles</p>
<p>Mas informacion de hoteles</p>
<p>Mas informacion de hoteles</p>
<p>Mas informacion de hoteles</p>
<p>Mas informacion de hoteles</p>
<p>Mas informacion de hoteles</p>

<h3>Descuentos en restaurantes de <%=ciudad_favorita %></h3>

<p>Mas informacion de restaurantes</p>
<p>Mas informacion de restaurantes</p>
<p>Mas informacion de restaurantes</p>
<p>Mas informacion de restaurantes</p>
<p>Mas informacion de restaurantes</p>
<p>Mas informacion de restaurantes</p>
<p>Mas informacion de restaurantes</p>






</body>
</html>