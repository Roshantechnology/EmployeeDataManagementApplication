<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ListEmployee</title>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" />
</head>
<body>
	<div id="wrapper">
		<div id="header">
			<h2>EMPLOYEE DATA MANAGEMENT APPLICATION</h2>
		</div>
	</div>
	<div id="container">
		<div id="content">

			<!-- put new button:: Add employee -->
			<input type='button' value='Add Employee'
				onclick="window.location.href='showForm'; return false;"
				class="add-button" />

			<table>
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
					<th>Shift</th>
					<th>Salary</th>
					<th>Action</th>
				</tr>
				<c:forEach var="employee" items="${employees}">
					
					<c:url var="updateLink" value="/employee/showFormForUpdate">
						<c:param name="employeeId" value="${employee.id}"/>
					</c:url>
					
					<c:url var="deleteLink" value="/employee/showFormForDelete">
						<c:param name="employeeId" value="${employee.id}"/>
					</c:url>
				
					<tr>
						<td>${employee.firstName}</td>
						<td>${employee.lastName}</td>
						<td>${employee.email}</td>
						<td>${employee.shift}</td>
						<td>${employee.salary}</td>
						<td>
							<a href='${updateLink}'>UPDATE</a>
										|
							<a href="${deleteLink}"
								onclick="if(!(confirm('Are you sure u want to delete this employee?')))return false;">DELETE</a>
						</td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
</body>
</html>