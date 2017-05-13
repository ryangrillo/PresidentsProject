<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	  <link rel="stylesheet" type="text/css" href="styleinput.css"/>
	<title>Select President</title>
</head>
<body>
	<form action="pickPres.do" method="POST">
	<label>Enter a President's term-number:<input type="text" name="termNum"/></label>
	<input type="submit" value="Submit"/>
	</form> 
<img src="images/seal.jpg" alt="seal" height="400em" width="400em">
</body>
</html>