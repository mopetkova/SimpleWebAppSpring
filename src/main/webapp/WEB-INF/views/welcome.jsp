<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Welcome</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>


<body>

<div class="container">

    <h2>Welcome</h2>

    <c:if test="${not empty notifications}">
        <c:forEach items="${notifications}" var="n">
            <div class="alert ${n.type} alert-dismissible">
                <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                <strong><c:out value="${n.description}"/></strong>
            </div>
        </c:forEach>
    </c:if>

    <div class="form-horizontal"><br>

        <form:form method="POST" action="/" modelAttribute="employee">

            <div class="form-group">
                <label class="control-label col-sm-2">Username:</label>
                <form:input path="username"/><br>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-2">Password:</label>
                <form:input path="password"/><br>
            </div>

            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-20">
                    <a href="/registration" class="btn btn-default">Registration</a>
                    <button type="submit" class="btn btn-success">Login</button>
                </div>
            </div>
        </form:form>

    </div>

</div>
</body>
</html>