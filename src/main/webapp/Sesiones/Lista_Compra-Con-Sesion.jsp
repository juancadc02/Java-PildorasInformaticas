<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@page import="java.util.*" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form name="Formulario_Compra2" action="Lista_Compra-Con-Sesion.jsp">
 
  <p>Artículos a comprar:</p>
  <p>
    <label>
      <input type="checkbox" name="articulos" value="agua " >
      Agua </label>
    <br>
    <label>
      <input type="checkbox" name="articulos" value="leche" >
      Leche </label>
    <br>
     <label>
      <input type="checkbox" name="articulos" value="pan" >
      Pan </label>
    <br>
     <label>
      <input type="checkbox" name="articulos" value="mazanas" >
      Manzanas </label>
    <br>
     <label>
      <input type="checkbox" name="articulos" value="carne" >
      Carne </label>
      <br>
       <label>
      <input type="checkbox" name="articulos" value="pescado" >
      Pescado </label>
  </p>
  <p>
    <input type="submit" name="button" id="button" value="Enviar">
    <br>
  </p>
</form>

<h2>Carro de la compra.</h2>



<ul> <!-- Abrimos ul aqui y lo cerramos despues del codigo jsp para que la lista salga con puntos -->
<%
//Creamos una lista de string, el nombre del atributo tiene que ser el que hemos puesto en setAttribute.
//Aqui se almacenaran los elementos que hayamos guardado en la sesion.
//Hacemos un casting a un List string de todo lo que sigue acontinuacion.
List<String> ListaElementos=(List<String>)session.getAttribute("misElementos");

//Establecemos la sesion para guardar Listaelemento

if(ListaElementos==null){
	
	ListaElementos=new ArrayList<String>();
	
	//Primer atributo el nombre que le quieras dar, segundo atributo el objeto, en este caso listaElementos
	session.setAttribute("misElementos",ListaElementos);
	
}


String[] elementos=request.getParameterValues("articulos");

if(elementos !=null){
	
	for(String elemTemp : elementos){
		//Ahora lo que hacemos que lo que hemos almacenado aqui, pase directamente al arrayList, para que cuando eligamos otro cosa del formulario no se borre lo que ya teniamos antes 
		
		ListaElementos.add(elemTemp);
	
	}

}

for(String elemTemp : ListaElementos){
	
	out.println("<li>" + elemTemp + "</li>");
}

%>

</ul>
</body>
</html>