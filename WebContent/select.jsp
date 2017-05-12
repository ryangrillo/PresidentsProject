<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<title>Select President</title>
</head>
<body>
	<form action="pickPres.do" method="POST">
	<label>Enter a President's term-number:<input type="text" value="termNum"/></label><br>
	<input type="submit" value="Submit"/>
	<%-- 	<c:forEach var="stock" items="${stocks}">
			<input type="radio" 
			       name="symbol" 
			       value="${stock.symbol}"/>${stock.name}<br/>
		</c:forEach>
		<input type="submit" value="Submit" />--%>
	</form> 
</body>
</html>