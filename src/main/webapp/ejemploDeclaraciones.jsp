<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1 style="text-align:center">Ejemplo de declaraciones</h1>


<%!

private int resultado;

public int metodoSuma(int num1,int num2){
	
	resultado=num1+num2;
	
	return resultado;
}

public int metodoResta(int num1,int num2){
	
	resultado=num1-num2;
	
	return resultado;
}

public int metodoMultiplica(int num1,int num2){
	
	resultado=num1*num2;
	
	return resultado;
}


%>

<!--  Abrimos expresiones para usar las declaraciones -->

El resultado de la suma es: <%= metodoSuma(2,8)%>






</body>
</html>