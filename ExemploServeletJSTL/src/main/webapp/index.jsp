<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EXEMPLO SERVELETS</title>
</head>
<body>
	
	<div>
		<form action="pessoa" method="post">
			<table>
					
				<tr>
					<td> <input type="number" id="id" name="id" placeholder="#id"> </td>
				</tr>
				<tr>
					<td> <input type="text" id="nome" name="nome" placeholder="NOME"> </td>
				</tr>
				<tr>
					<td> <input type="submit" id="enviar" name="enviar" value="ENVIAR"> </td>
				</tr>
			</table>
		</form>
	</div>
	<br/>
	
	<div>
		<c:if test="${empty pessoa}">
			<p>
				Sem Pessoa
			</p>
		</c:if>
		
		<h1>OUTRAS PESSOAS</h1>
		
		<c:if test="${not empty pessoas}">			
				
				<table border="1">
					<thead>
						<tr>
							<th>ID</th>
							<th>NOME</th>
						</tr>
					</thead>
					<tbody>
					
				<c:forEach items="${pessoas}" var="p">
						<tr>
							<td><c:out value="${p.id}" /></td>
							<td><c:out value="${p.nome}" /></td>						
						</tr>
				</c:forEach>	
					</tbody>
				</table>
					
		</c:if>
		
	</div>
</body>
</html>