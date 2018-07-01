<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Error</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body>

<div class="container">

    <c:if test="${not empty notifications}">
        <c:forEach items="${notifications}" var="n">
            <div class="alert ${n.type} alert-dismissible">
                <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                <strong><c:out value="${n.description}"/>!</strong>
            </div>
        </c:forEach>
    </c:if>


    <h2>Error</h2>
    <div ><c:out value="${error}"></c:out></div>
    <h2>Employee</h2>
    <div ><c:out value="${employee}"></c:out></div>
    <h2>Employee- MaritalStatus</h2>
    <div ><c:out value="${employeeMaritalStatus}"></c:out></div>
</div>
</body>
</html>
