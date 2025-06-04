<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Apply for Leave</title>
</head>
<body>
<jsp:useBean id="leavedao" class="com.java.lms.dao.LeaveDaoImpl"></jsp:useBean>
    <h2>Leave Application Form</h2>

    <form action="ApplyLeave.jsp" method="post">
        <!-- Leave Application Form -->
        <label for="empId">Employee ID:</label>
        <input type="number" id="empId" name="empId" value="${param.empId }" readonly="readonly"><br><br>

        <label for="leaveType">Leave Type:</label>
        <select id="leaveType" name="leaveType" required>
            <option value="SL">Sick Leave</option>
            <option value="EL">Emergency leave</option>
            <option value="PL">Personal Leave</option>
        </select><br><br>

        <label for="leaveReason">Reason:</label><br>
        <textarea id="leaveReason" name="leaveReason" rows="4" cols="50" required></textarea><br><br>

        <label for="leaveStDt">Start Date:</label>
        <input type="date" id="leaveStDt" name="leaveStDt" required><br><br>

        <label for="leaveEndDt">End Date:</label>
        <input type="date" id="leaveEndDt" name="leaveEndDt" required><br><br>

        <input type="submit" value="Apply Leave">
    </form>
<!-- Logic for applying leave -->
<c:if test="${not empty param.empId
              and not empty param.leaveStDt
              and not empty param.leaveEndDt
              and not empty param.leaveType
              and param.leaveType != ''}">
 
    <!-- Convert date parameters -->
    <c:set var="date1" value="${leavedao.convertToSqlDate(param.leaveStDt)}" />
    <c:set var="date2" value="${leavedao.convertToSqlDate(param.leaveEndDt)}" />
 
    <!-- Create Leave object and set its properties -->
    <jsp:useBean id="leave" class="com.java.lms.model.Leave"/>
    <jsp:setProperty property="empId" name="leave" value="${param.empId}"/>
    <jsp:setProperty property="leaveStDt" name="leave" value="${date1}"/>
    <jsp:setProperty property="leaveEndDt" name="leave" value="${date2}"/>
    <jsp:setProperty property="leaveType" name="leave" value="${param.leaveType}"/>
    <jsp:setProperty property="leaveReason" name="leave" value="${param.leaveReason}"/>
 
    <!-- Apply leave only if all required data is valid -->
    <c:set var="result" value="${leavedao.applyLeave(leave)}"/>
    <c:out value="${result}" />
 
    <!-- Redirect after applying -->
    <jsp:forward page="DashBoard.jsp"/>
</c:if>
 
</body>
</html>
 