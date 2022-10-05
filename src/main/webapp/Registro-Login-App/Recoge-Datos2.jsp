<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>



<%

String nombre=request.getParameter("nombre");
String apellidos=request.getParameter("apellidos");
String usu=request.getParameter("usu");
String contra=request.getParameter("contra");
String pais=request.getParameter("pais");
String tecno=request.getParameter("tecnologias");

Class.forName("com.mysql.jdbc.Driver");




try{
java.sql.Connection miConexion=java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/proyecto_jsp","root","");

java.sql.Statement miStatement=miConexion.createStatement();

String instruccionSql="INSERT INTO USUARIOS (Nombre,Apellido,Usuario,Contrasena,Pais,Tecnologia) VALUES ('" + nombre + "','" + apellidos + "','" + usu + "','" + contra + "','" + pais + "','" + tecno +" ');";


miStatement.executeUpdate(instruccionSql);

out.println("Registrado con exito");

}catch(Exception e){
	out.println("Ha habido un error " +e);
}


%>






</body>
</html>