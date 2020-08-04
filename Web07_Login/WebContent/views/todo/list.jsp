<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>views/todo/list.jsp</title>
</head>
<body>
<h1>할 일 목록입니다.</h1>
<ul>
	<c:forEach var="tmp" items="${requestScope.todoListKey }">
		<li>${tmp }</li>
	</c:forEach>
</ul>
</body>
</html>