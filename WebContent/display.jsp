<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>President Info</title>
</head>
<body>
	<table style=text-align:center border=1em >
		<tr style=padding:100em>
			<th>Term Number</th>
			<th>Full Name</th>
			<th>Party</th>
			<th>Term</th>
		</tr>
		<tr>
			<td>${president.termNumber}</td>
			<td>${president.fName}  ${president.mName}  ${president.lName}</td>
			<td>${president.party}</td>
			<td>${president.startYear}-${president.endYear}</td>
		</tr>
	</table>
	<img src="${president.image}" height="30%" width="30%" />
	<form action=getNextOrPrevious.do method="GET">
	<input type="hidden" name="termNum" value="${president.termNumber }" /> 
		<input type="submit" value="Next President" name="next"/>

	</form>
	president = ${president.fName}

	
</body>
</html>