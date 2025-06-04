<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<!-- Use the Complaint Bean for data handling -->
<jsp:useBean id="complaint" class="com.java.model.Complaint" scope="request" />
<jsp:useBean id="ResolvedComplaint" class="com.java.model.ResolvedComplaint" scope="request" />

<jsp:setProperty name="complaint" property="*" />

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Complaint Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 0;
        }
        .header {
            background-color: #333;
            color: white;
            padding: 10px 0;
            text-align: center;
        }
        .header a {
            color: white;
            padding: 10px 20px;
            text-decoration: none;
            font-weight: bold;
        }
        .header a:hover {
            background-color: #575757;
        }
        .container {
            display: flex;
            justify-content: space-between;
            padding: 20px;
        }
        .sidebar {
            width: 20%;
            background-color: #fff;
            padding: 15px;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
        }
        .sidebar h3 {
            text-align: center;
            color: #333;
        }
        .sidebar a {
            display: block;
            padding: 10px;
            margin-bottom: 10px;
            background-color: #4CAF50;
            color: white;
            text-decoration: none;
            text-align: center;
        }
        .sidebar a:hover {
            background-color: #45a049;
        }
        .main-content {
            width: 75%;
            background-color: #fff;
            padding: 20px;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
        }
        .main-content h2 {
            color: #333;
        }
        .card {
            background-color: #f2f2f2;
            padding: 15px;
            margin: 10px 0;
            border-radius: 4px;
            box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.1);
        }
        .card h3 {
            margin: 0;
            color: #333;
        }
        .card p {
            margin: 5px 0;
            color: #666;
        }
    </style>
</head>
<body>

    <!-- Header (Navigation) -->
    <div class="header">
        <a href="Home.jsp">Home</a>
        <a href="Dashboard.jsp">Dashboard</a>
        <a href="PendingComplaints.jsp">Pending Complaints</a>
        <a href="RaiseComplaint.jsp">Raise Complaint</a>
    </div>

    <div class="container">

        <!-- Sidebar Navigation -->
        <div class="sidebar">
            <h3>Dashboard</h3>
            <a href="SeeComplaints.jsp">See Your Complaints</a>
            <a href="FixComplaint.jsp">Fix a Complaint</a>
            <a href="ViewPendingResources.jsp">View Pending Resources</a>
        </div>

        <!-- Main Content -->
        <div class="main-content">
            <h2>Welcome to the Complaint Dashboard</h2>

            <!-- See Your Complaints -->
            <div class="card">
                <h3>Your Complaints</h3>
                <p>View all your complaints in one place.</p>
                <a href="SeeComplaints.jsp">View Complaints</a>
            </div>

            <!-- Fix a Complaint -->
            <div class="card">
                <h3>Fix a Complaint</h3>
                <p>Resolve complaints that are assigned to you.</p>
                <a href="FixComplaint.jsp">Fix Complaint</a>
            </div>

            <!-- View Pending Resources -->
            <div class="card">
                <h3>View Pending Resources</h3>
                <p>View and manage pending resources associated with complaints.</p>
                <a href="ViewPendingResources.jsp">View Resources</a>
            </div>
        </div>
    </div>

</body>
</html>
