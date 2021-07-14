<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: DM
  Date: 14.07.2021
  Time: 10:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Information for all employees</title>
</head>
<body>

<h3>Information for all employees</h3>
<br><br>

<security:authorize access="hasRole('HR')">

    <input type="button" value="Salary" onclick="window.location.href = 'hr_info'">
    Ony for HR staff

</security:authorize>


<br><br>

<security:authorize access="hasRole('MANAGER')">

    <input type="button" value="Performance" onclick="window.location.href = 'manager_info'">
    Ony for Managers

</security:authorize>

</body>
</html>
