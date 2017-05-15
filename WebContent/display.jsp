<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport"
	content="width=device-width,height=device-height,initial-scale=1">
<link rel="stylesheet" href="style.css" media="screen">
<title>President Info</title>
</head>
<body>
	<img src="${president.image}" height="30%" width="30%" />
	<br>
	<table style="text-align: center" border=1em>
		<tr style="padding: 100em">
			<th>Term Number</th>
			<th>Full Name</th>
			<th>Party</th>
			<th>Term</th>
		</tr>

			<tr>
				<td>${president.termNumber}</td>
				<td>${president.fName}${president.mName} ${president.lName}</td>
				<td>${president.party}</td>
				<td>${president.startYear}-${president.endYear}</td>
			</tr>
	</table>
	<p>${president.fact}</p>
	<form action="pickPres.do" method="POST"> <!-- find by term-number -->
		<label>Find by term-number:<input type="text" name="termNum" /></label>
		<input type="submit" value="Submit" />
	</form>
	<form action=getNextOrPrevious.do method="GET">
		Filter by party:<br>
		<input type="radio" name="party" value="none" <c:if test="${party == 'none' or empty party}">checked</c:if>> None<br>
  		<input type="radio" name="party" value="Independent" <c:if test="${party == 'Independent'}">checked</c:if>> Independent<br>
 		 <input type="radio" name="party" value="Federalist" <c:if test="${party == 'Federalist'}">checked</c:if>> Federalist<br>
 		 <input type="radio" name="party" value="Democratic-Republican" <c:if test="${party == 'Democratic-Republican'}">checked</c:if>> Democratic-Republican<br>
 		 <input type="radio" name="party" value="Democrat" <c:if test="${party == 'Democrat'}">checked</c:if>> Democrat<br>
 		 <input type="radio" name="party" value="Republican" <c:if test="${party == 'Republican'}">checked</c:if>> Republican<br>
 		 <input type="radio" name="party" value="Whig" <c:if test="${party == 'Whig'}">checked</c:if>> Whig<br>
		
		<input type="hidden" name="termNum" value="${president.termNumber }" />
		<input type="submit" value="<<Previous President" name="previous" />
		<input type="submit" value="Next President>>" name="next" /><br>

		
	</form>
	<!-- <form action="filterParty.do" method="GET">
		Sort by: <select name="party">
			<option value="None">None</option>
			<option value="Independent">Independent</option>
			<option value="Federalist">Federalist</option>
			<option value="Democratic-Republican">Democratic-Republican</option>
			<option value="Democrat">Democrat</option>
			<option value="Republican">Republican</option>
			<option value="Whig">Whig</option>
		</select> <input type="submit" value="Sort" />
	</form> -->
	
</body>
</html>