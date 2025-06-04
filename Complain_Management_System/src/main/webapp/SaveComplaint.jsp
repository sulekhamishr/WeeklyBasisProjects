<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- Define the Bean for Complaint -->
<jsp:useBean id="complaint" class="com.java.model.Complaint" scope="request" />
<jsp:setProperty name="complaint" property="*" />

<!-- Set static data for complaint types and statuses -->
<c:set var="complaintTypes" value="${['Water', 'Electricity', 'Sanitation', 'Road']}" />
<c:set var="statuses" value="${['Pending', 'Resolved']}" />

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add or Save Complaint</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 60%;
            margin: 50px auto;
            padding: 20px;
            background-color: white;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
        }
        h3 {
            text-align: center;
            color: #333;
        }
        .form-group {
            margin-bottom: 15px;
        }
        label {
            display: block;
            font-weight: bold;
            color: #333;
        }
        input, select {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        button {
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }
        button:hover {
            background-color: #45a049;
        }
        .result-message {
            margin-top: 20px;
            text-align: center;
        }
    </style>
</head>
<body>

<div class="container">
    <h3>Add or Save Complaint</h3>
    <form method="post" action="SaveComplaint.jsp">
        
        <!-- Complaint Details Section -->
        <h4>Complaint Information</h4>
        <div class="form-group">
            <label for="complaintId">Complaint ID</label>
            <input type="text" id="complaintId" name="complaintId" value="${complaint.complaintId}" required />
        </div>
        <div class="form-group">
            <label for="complaintType">Complaint Type</label>
            <select id="complaintType" name="complaintType">
                <c:forEach var="type" items="${complaintTypes}">
                    <option value="${type}" ${type == complaint.complaintType ? 'selected' : ''}>${type}</option>
                </c:forEach>
            </select>
        </div>
        <div class="form-group">
            <label for="description">Description</label>
            <input type="text" id="description" name="description" value="${complaint.description}" required />
        </div>
        <div class="form-group">
            <label for="date">Date (YYYY-MM-DD)</label>
            <input type="text" id="date" name="date" value="${complaint.date}" required />
        </div>
        <div class="form-group">
            <label for="status">Status</label>
            <select id="status" name="status">
                <c:forEach var="status" items="${statuses}">
                    <option value="${status}" ${status == complaint.status ? 'selected' : ''}>${status}</option>
                </c:forEach>
            </select>
        </div>
        <div class="form-group">
            <label for="tatDays">TAT Days</label>
            <input type="number" id="tatDays" name="tatDays" value="${complaint.tatDays}" required />
        </div>

        <button type="submit">Save Complaint</button>
    </form>

    <!-- Show success or error message -->
    <c:if test="${not empty param.message}">
        <div class="result-message">
            <strong>${param.message}</strong>
        </div>
    </c:if>
</div>

<!-- Action bean to handle the submission without scriptlets -->
<jsp:useBean id="BeanComplaintDao" class="com.java.dao.ComplaintDaoImpl" scope="request" />
<c:set var="result" value="${BeanComplaintDao.addComplaint(complaint)}"/>

</body>
</html>
