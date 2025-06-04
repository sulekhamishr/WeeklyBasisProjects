<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employee List</title>
</head>
<body>

    <jsp:useBean id="employDao" class="com.java.lms.dao.EmployDaoImpl" />
    <c:set var="employList" value="${employDao.showEmploydao()}" />

    <table border="3" align="center">
        <tr>
            <th>Employ Id</th>
            <th>Employee Name</th>
            <th>Employee Email</th>
            <th>Mobile No</th>
            <th>Date of Join</th>
            <th>Department</th>
            <th>Manager Id</th>
            <th>Employee Available Balance</th>
            <th>Show Info</th>
        </tr>
        <c:forEach var="employ" items="${employList}">
            <tr>
                <td>${employ.empId}</td>
                <td>${employ.empName}</td>
                <td>${employ.empMail}</td>
                <td>${employ.empMobno}</td>
                <td>${employ.empJoinDate}</td>
                <td>${employ.empDept}</td>
                <td>${employ.empMgrId}</td>
                <td>${employ.empLeaveBal}</td>
                <td>
                    <a href="DashBoard.jsp?empId=${employ.empId}&mgrId=${employ.empMgrId}">Show Info</a>
                </td>
            </tr>
        </c:forEach>
    </table>

</body>
</html>
