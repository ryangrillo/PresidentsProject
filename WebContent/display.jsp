<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width,height=device-height,initial-scale=1">
<link rel="stylesheet" href="display.css" media="screen">
<title>President Info</title>
</head>
<body>
<div class="header">

	<div class="termheader">
	<form action="pickPres.do" method="post">
	<a href="select.jsp">Go Home</a>
	<select name="termNum" onchange='if(this.value != 0) { this.form.submit(); }'>
			<option value='0'>Term</option>
			<option value="1">1</option>
			<option value="2">2</option>
			<option value="3">3</option>
			<option value="4">4</option>
			<option value="5">5</option>
			<option value="6">6</option>
			<option value="7">7</option>
			<option value="8">8</option>
			<option value="9">9</option>
			<option value="10">10</option>
			<option value="11">11</option>
			<option value="12">12</option>
			<option value="13">13</option>
			<option value="14">14</option>
			<option value="15">15</option>
			<option value="16">16</option>
			<option value="17">17</option>
			<option value="18">18</option>
			<option value="19">19</option>
			<option value="20">20</option>
			<option value="21">21</option>
			<option value="22">22</option>
			<option value="23">23</option>
			<option value="24">24</option>
			<option value="26">26</option>
			<option value="27">27</option>
			<option value="28">28</option>
			<option value="29">29</option>
			<option value="30">30</option>
			<option value="31">31</option>
			<option value="32">32</option>
			<option value="33">33</option>
			<option value="34">34</option>
			<option value="35">35</option>
			<option value="36">36</option>
			<option value="37">37</option>
			<option value="38">38</option>
			<option value="39">39</option>
			<option value="40">40</option>
			<option value="41">41</option>
			<option value="42">42</option>
			<option value="43">43</option>
			<option value="44">44</option>
			<option value="45">45</option>
		</select>
		<!-- <input type="submit" value="Submit">  -->
		</form>
	</div>
	<div class="filter">
	<form action=getNextOrPrevious.do method="GET">
		
 		Filter by:
		<select name="party"> 
			<option value="none" <c:if test="${party == 'none' or empty party}">selected</c:if>>none</option>
			<option value="Independent" <c:if test="${party == 'Independent'}">selected</c:if>>Independent</option>
			<option value="Federalist" <c:if test="${party == 'Federalist' }">selected</c:if>>Federalist</option>
			<option value="Democratic-Republican" <c:if test="${party == 'Democratic-Republican' }">selected</c:if>>Democratic-Republican</option>
			<option value="Democrat" <c:if test="${party == 'Democrat' }">selected</c:if>>Democrat</option>
			<option value="Republican" <c:if test="${party == 'Republican' }">selected</c:if>>Republican</option>
			<option value="Whig" <c:if test="${party == 'Whig' }">selected</c:if>>Whig</option>
		</select>

		<div class = "arrows">
			<input type="hidden" name="termNum" value="${president.termNumber }" />
			<input type="submit" value="&larr;" name="previous" />
			<input type="submit" value="&rarr;" name="next" />
		</div>
	</form>
	</div>	</div>
<div class="content">
	<h1 class="name">${president.fName}  ${president.mName}  ${president.lName}
	<span>Presidential Term# ${president.termNumber}</span>
	</h1>
	<p class="details">${president.party} Party &bull; ${president.startYear}-${president.endYear}</p>
	<div class="fact">
		<img src="${president.image}"/>
		<h3>Fun Fact:</h3>
		<p>${president.fact}</p>
	</div>
</div>
</body>
</html>
