<%--
  Created by IntelliJ IDEA.
  User: SI2001
  Date: 26-Jun-18
  Time: 3:23 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Test</title>
</head>
<body>
<div>
    Test: <br><br>
    @ModelAttribute("maritalS"): ${maritalS} .<br><br>
    @ModelAttribute("maritalS.status"): ${maritalS.status} .<br><br>
    @ModelAttribute("maritalS.maritalId"): ${maritalS.maritalStatusId} .<br><br>
    Employee.name: ${employee.name} - name -.<br><br>
    Employee.maritalStatus.status: ${employee.maritalStatus.status} .<br><br>
    Employee: ${employee} .<br><br>
    maritalStatus.maritalStatusId: ${maritalStatus.maritalStatusId} .<br><br>
    Model: ${model} .<br><br>
    maritalStatus: ${maritalStatus} <br><br>
    Skill: ${skill}
    Result: ${result} .<br><br>
    E. ${e}

</div>


</body>
</html>
