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
		<!-- builder.append("President [fName=").append(fName).append(", mName=").append(mName).append(", lName=")
				.append(lName).append(", party=").append(party).append(", termNumber=").append(termNumber)
				.append(", startYear=").append(startYear).append(", endYear=").append(endYear).append("]");-->
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
		<%-- 		<fmt:formatNumber value="${stock.price}" 
				                  type="currency" />
			</td>
			<td>
				<fmt:formatNumber value="${stock.openPrice}" 
				                  type="currency"/>
			</td>
			<c:choose>
				<c:when test="${stock.price < stock.openPrice}">
					<td><img src="images/downarrow.png" /></td>
				</c:when>
				<c:otherwise>
					<td><img src="images/uparrow.png" /></td>
				</c:otherwise>
			</c:choose>
		 </tr>--%>
	</table>
</body>
</html>