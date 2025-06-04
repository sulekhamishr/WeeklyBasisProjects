<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Menu Page</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" />
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f0f4f7;
        }

        .navbar {
            background-color: #00796b;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 14px 0;
            flex-wrap: wrap;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
        }

        .navbar a {
            color: white;
            text-decoration: none;
            padding: 12px 18px;
            font-size: 16px;
            margin: 6px;
            border-radius: 6px;
            transition: all 0.3s ease;
            background-color: #009688;
        }

        .navbar a:hover {
            background-color: #004d40;
            transform: scale(1.05);
        }

        .content {
            text-align: center;
            margin-top: 60px;
            color: #2c3e50;
            font-size: 22px;
        }

        hr {
            margin: 30px auto;
            width: 85%;
            border: 0;
            border-top: 2px solid #ccc;
        }

        .icon {
            margin-right: 8px;
        }

        @media (max-width: 600px) {
            .navbar {
                flex-direction: column;
            }
            .navbar a {
                width: 90%;
                text-align: center;
            }
        }
    </style>
</head>
<body>
<f:view>
    <div class="navbar">
        <a href="DoctorShow.jsf"><i class="fas fa-user-md icon"></i> Show Doctor</a>
        <a href="AddDoctor.jsf"><i class="fas fa-user-plus icon"></i> Add Doctor</a>
        <a href="ShowByCategory.jsf"><i class="fas fa-layer-group icon"></i> Show By Category</a>
        <a href="SearchByDoctorId.jsf"><i class="fas fa-search icon"></i> Search By Doctor ID</a>
    </div>

    <div class="content">
        <p>👨‍⚕️ Welcome to the <strong>Doctor Management</strong> Section</p>
    </div>

    <hr />
</f:view>
</body>
</html>
