<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
howdy!
<!-- 
<p>Session: <%= session.getAttribute("name") %> </p>

<p>Request: <%= request.getAttribute("name") %> </p>
-->
<p>Request(using EL): ${name}  </p> <!-- no escaping! -->


<c:out value="${name}"></c:out> <!-- c tag escapes content -->
<br/>
<sql:query var="rs" dataSource="jdbc/spring">
select id, name, email, text from offers
</sql:query>

<c:forEach var="row" items="${rs.rows}">
    ID: ${row.id}<br/>
    Name: ${row.name}<br/>
    Email: ${row.email}<br/>
</c:forEach>


</body>
</html>