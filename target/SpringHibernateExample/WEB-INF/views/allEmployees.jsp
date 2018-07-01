<%@ page import="com.websystique.springmvc.model.Employee" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core_1_1" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>All Users</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="WEB-INF/css/script.js"></script>
</head>

<script type="text/javascript">
    function deleteEmployee(employeeId, employeeName) {
        if (confirm('Are you sure you want to delete ' + employeeName + '?')) {
            location.href = '/delete?id=' + employeeId;
        }
    }
</script>

<body>

<div class="container">
    <br>
    <div>
        <h3>Search</h3>
        <form method="get" action="/home?filter=${filter}">
            <input name="filter">
            <button>Search</button>

            <a href="/home">clear</a>

        </form>
    </div>
    <br>
    <c:if test="${not empty notifications}">
        <c:forEach items="${notifications}" var="n">
            <div class="alert ${n.type} alert-dismissible">
                <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                <strong><c:out value="${n.description}"/></strong>
            </div>
        </c:forEach>
    </c:if>

    <h3>Users</h3>

    <table class="table">
        <thead>
        <tr>
            <th>Name</th>
            <th>Surname</th>
            <th>Country</th>
            <th>Marital Status</th>
            <th>Birth Date</th>
            <th>Username</th>
            <th>Password</th>
            <th>Skills</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="employee" items="${employees}">
            <tr>
                <td>${employee.name}</td>
                <td>${employee.surname}</td>
                <td>${employee.country}</td>
                <td>${employee.maritalStatus.status}</td>
                <td><fmt:formatDate type="date" pattern="yyyy-MM-dd" value="${employee.birthDate}"/></td>
                <td>${employee.username}</td>
                <td>${employee.password}</td>
                <td>
                    <%--${blabla}--%>

                        <c:forEach var="skill" items="${employee.skills}" varStatus="loopStatus">
                            <span>${skill.name} ${ not loopStatus.last ? ', ':''}</span>
                        </c:forEach>
                </td>
                <td><a class="btn btn-default" href="/update?id=${employee.employeeId}">Update</a>
                    <button onclick="deleteEmployee(${employee.employeeId}, '${employee.name}')"
                            class="btn btn-default">Delete
                    </button>

                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>




</div>

</body>
</html>
