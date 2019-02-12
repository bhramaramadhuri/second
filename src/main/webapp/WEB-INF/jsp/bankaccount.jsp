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

.containers {
	margin-left: 40%;
}

tr, td {
	width: 200px;
	text-align: center;
	border: 1px solid black;
	padding: 10px;
	margin-left:20%;
}
</style>
</head>
<body>
<div class="containers">
	<form:form method="post" action="accdetails" modelAttribute="open">
		<h1>Bank Account</h1>
		<table>
			<tr>
				<form:hidden path="id"></form:hidden>
				<td>Name:</td>
				<td><form:input path="name" id="name" /></td>
			</tr>
			<tr>
				<td>age</td>
				<td><form:input path="age" id="age" /></td>
			</tr>
			<tr>
				<td>Contact</td>
				<td><form:input path="contactno" id="contactno" /></td>
			</tr>
			<tr>
				<td>Account type</td>
				<td><form:radiobutton  path="accounttype" label="single" /></td>
				<td><form:radiobutton  path="accounttype" label="joint" /></td>
			</tr>
			<tr>
				<td><br /></td>
				<td><input type="submit" class="btn btn-success" value="submit" /></td>
			</tr>
		</table>

	</form:form>
</div>

</body>
</html>