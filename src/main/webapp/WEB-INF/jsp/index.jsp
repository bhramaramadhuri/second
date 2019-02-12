<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
.error {
	color: red;
	font-style: italic;
}

.banking {
	margin-left: 35%;
	color:brown;
	font-style:calibri;
	font-weight:bold;
	
}

tr, td {
	width: 200px;
	text-align: center;
	border: 1px solid black;
	padding: 10px;
}
</style>
</head>
<body style="background-color:#f2f2f2">
<div class="banking">
	<form:form method="post" action="saving" modelAttribute="enter">
		<h1>Registration form</h1>
		<table>
			<tr>
				<form:hidden path="id"></form:hidden>
				<td>Firstname:</td>
				<td><form:input path="fname" id="fname" /></td>
			</tr>
			<tr>
				<td>Lastname:</td>
				<td><form:input path="lname" id="lname" /></td>
			</tr>
			<tr>
				<td>username:</td>
				<td><form:input path="username" id="username" /></td>
			</tr>
			<tr>
				<td>password:</td>
				<td><form:password path="password" id="password" /></td>
			</tr>
			<tr>
				<td>State:</td>
				<td><form:input path="state" id="state" /></td>
			</tr>
			<tr>
				<td><br /></td>
				<td><input type="submit" class="btn btn-success" value="Registernow" /></td>
			</tr>
		</table>

	</form:form>
</div>
</body>
</html>