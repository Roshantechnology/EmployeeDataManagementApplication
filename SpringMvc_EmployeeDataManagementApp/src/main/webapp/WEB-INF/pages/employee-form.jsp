<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SAVE Employee</title>
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" />
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/add-employee-style.css" />
</head>
<body>
	<div id="wrapper">
		<div id="header">
			<h2>EMPLOYEE DATA MANAGEMENT APPLICATION</h2>
		</div>
	</div>
	
	<div id="container">
		<h3>Save Employee</h3>
		
		<form:form action="saveEmployee" method="post" modelAttribute="employee">
			
			<!-- need to associate this data with employee id -->
			<form:hidden path="id"/>
		
			<table>
				<tbody>
					<tr>
						<td>
							First Name
						</td>
						<td>
							<form:input path="firstName"/>
						</td>
					</tr>
					
					<tr>
						<td>
							Last Name
						</td>
						<td>
							<form:input path="lastName"/>
						</td>
					</tr>
					
					<tr>
						<td>
							Email
						</td>
						<td>
							<form:input path="email"/>
						</td>
					</tr>
					<tr>
						<td>
							Shift
						</td>
						<td>
							<form:input path="shift"/>
						</td>
					</tr>
					<tr>
						<td>
						    Salary
						</td>
						<td>
							<form:input path="salary"/>
						</td>
					</tr>
					<tr>
						<td>
							
						</td>
						<td>
							<input type='submit' value='save' class='save'/>
						</td>
					</tr>
				
				</tbody>
			</table>	
		</form:form>
	</div>
	
	<div style='clear;both;'>
		<p>
			<a href='${pageContext.request.contextPath}/employee/list'>Back to List</a>
		</p>
	</div>
	
</body>
</html>