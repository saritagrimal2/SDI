<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Lista de Notas</h1>
	<c:forEach var="mark" items="${markList}">
		<p>
	 		<c:out value="${mark.id}"/>
	 		<c:out value="${mark.email}"/>
	 		<c:out value="${mark.score}"/>
	 		<a href="/details/${mark.id}"> detalles </a>
	 		<a href="/delete/${mark.id}"> eliminar </a>
	 		
	 	</p>
	</c:forEach>
	
	<form method="post" action="/add">
	  email:<br>
	  <input type="text" name="email"></br>
	  puntuation:<br>
	  <input type="text" name="score" ></br>
	  <input type="submit" value="Enviar">
	</form>
	
</body>
</html>