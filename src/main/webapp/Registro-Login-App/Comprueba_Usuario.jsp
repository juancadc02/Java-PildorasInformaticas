
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@ page import="java.sql.*" %>

<%

 
		String usu=request.getParameter("usu");
		String contra=request.getParameter("contra");
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		
		try{
			
			//Conection con la base de datos
		java.sql.Connection miConexion=java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/proyecto_jsp","root","");
		
		//Creamos una consulta preparada.
		
		String sql="SELECT * FROM usuarios WHERE Usuario="+usu+" AND Contrasena="+contra+"";
		Statement st=miConexion.createStatement();
		
		ResultSet rs=st.executeQuery(sql);
		

		if(rs.next()){
			out.println("Usuario Correcto");
		}else
			out.println("Usuario incorrecto");
		
		}catch(Exception e){
			out.println("Ha habido un error: "+e);
		}
		

%>


</body>
</html>