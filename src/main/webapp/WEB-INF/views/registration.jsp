<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registration</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
    <h2>Registration</h2>
    <c:if test="${not empty notifications}">
        <c:forEach items="${notifications}" var="n">
            <div class="alert ${n.type} alert-dismissible">
                <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                <strong><c:out value="${n.description}"/></strong>
            </div>
        </c:forEach>
    </c:if>

    <div class="form-horizontal">
        <form:form method="POST" action="/registration" modelAttribute="employee">

            <div class="form-group">
                <label class="control-label col-sm-2">Username*: </label>
                <form:input path="username"/>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-2">Password*:</label>
                <form:input path="password"/><br>
            </div>
            <br>
            <div class="form-group">
                <label class="control-label col-sm-2">Name*:</label>
                <form:input path="name"/><br>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-2">Surname*:</label>
                <form:input path="surname"/><br>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-2">Country:</label>
                <form:input path="country"/><br>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-2">Birth Date:</label>
                <form:input path="birthDate" type="date" pattern="yyyy-MM-dd"/>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-2">Marital Status:</label>
                <div>
                    <form:select path="maritalStatus" items="${maritalStatusList}"
                                 itemValue="maritalStatusId" itemLabel="status"/>

                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-2">Skills:</label>
                <div>
                    <form:checkboxes path="skills" items="${skills}" delimiter=" - "
                                     itemValue="skillId" itemLabel="name"/>
                </div>
            </div>

            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-20">
                    <a href="/" class="btn btn-default">Back</a>
                    <button type="submit" class="btn btn-success">Save</button>
                </div>
            </div>
        </form:form>
    </div>
</div>
</body>
</html>
