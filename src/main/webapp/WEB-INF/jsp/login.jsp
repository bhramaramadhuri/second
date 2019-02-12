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

.container {
	margin-left: 30%;
}

tr, td {
	width: 200px;
	text-align: center;
	border: 1px solid black;
	padding: 10px;
}
</style>
</head>
<body>
<div class="container">
	<form:form method="post" action="login" modelAttribute="use">
		<h1>Login form</h1>
		<table>
			<tr>
				<form:hidden path="id"></form:hidden>
				<td>Username:</td>
				<td><form:input path="username" id="username" /></td>
			</tr>
			<tr>
				<td>Password :</td>
				<td><form:password path="password" id="password" /></td>
			</tr>
			<tr>
				<td><br /></td>
				<td><input type="submit" class="btn btn-success" value="login" /></td>
			</tr>
		</table>

	</form:form>
</div>
</body>
</html>