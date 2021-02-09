<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Add Employee</h1>
	<form:form action = "${pageContext.request.contextPath}/save" modelAttribute="employee">
		Enter Name: <form:input path="name"/><br/>
		Select Gender: <form:radiobutton path="gender" value = "Male"/>Male&nbsp;
					<form:radiobutton path="gender" value = "Female"/>Female&nbsp;<br/>
		Department: 
		<form:select path="department">
			<form:option value="Support">Support</form:option>
			<form:option value="Testing">Testing</form:option>
			<form:option value="Development">Development</form:option>
			<form:option value="Business Analyst">Business Analyst</form:option>
		</form:select><br/>
		Date of Birth: <form:input path="dob" type = "date"/><br/>
		<form:hidden path = "id"/>
		<button type = "submit">Save</button>
	</form:form>
</body>
</html>