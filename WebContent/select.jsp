<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<title>Select President</title>
</head>
<body style=background-color:lightblue>
	<form action="pickPres.do" method="POST">
	<label>Enter a President's term-number:<input type="text" name="termNum"/></label><br>
	<input type="submit" value="Submit"/>
	
	</form> 
<img src="images/seal.jpg" alt="seal" height="40px" width="40px">
</body>
</html>