<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<title>Notification</title>

<script type="text/javascript" src="WEB-INF/css/script.js"></script>

<c:if test="${not empty notifications}">
    <c:forEach items="${notifications}" var="n">
        <div class="alert ${n.type} alert-dismissible">
            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
            <strong><c:out value="${n.description}"/>!</strong>
        </div>
    </c:forEach>
</c:if>

