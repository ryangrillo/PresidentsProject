<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width,height=device-height,initial-scale=1">
<link rel="stylesheet" href="style.css" media="screen">
<title>President Info</title>
</head>
<body>
	<img src="${president.image}" height="30%" width="30%" />
	<br>
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
	<p>${president.fact}</p>
	<form action="pickPres.do" method="POST">
	<label>Find by term-number:<input type="text" name="termNum"/></label>
	<input type="submit" value="Submit"/>
	</form> 
	<form action=getNextOrPrevious.do method="GET">
	<input type="hidden" name="termNum" value="${president.termNumber }" />
		<input type="submit" value="Next President" name="next" /> <!-- next button --> 
	</form>
	<form action=getNextOrPrevious.do method="GET">
	<input type="hidden" name="termNum" value="${president.termNumber }" /> 
		<input type="submit" value="Previous President" name="previous" /> <!-- previous button --> 
	</form>
	
	<form action="filterParty.do" method="GET">
	Filter by:
		<select name="party"> 
			<option value="Independent">Independent</option>
			<option value="Federalist">Federalist</option>
			<option value="Dem-Rep">Democratic-Republican</option>
			<option value="Democrat">Democrat</option>
			<option value="Republican">Republican</option>
			<option value="Whig">Whig</option>
		</select>
		<input type="submit" value="Sort"/>
	</form>
	
</body>
</html>