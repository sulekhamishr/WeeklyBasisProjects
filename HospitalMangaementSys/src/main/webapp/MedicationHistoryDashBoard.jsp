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
            background-color: #eef2f3;
        }

        .navbar {
            background-color: #00695c;
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            padding: 20px 0;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .navbar a {
            color: #ffffff;
            text-decoration: none;
            margin: 10px 15px;
            padding: 12px 20px;
            font-size: 16px;
            background-color: #00897b;
            border-radius: 8px;
            transition: all 0.3s ease;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }

        .navbar a:hover {
            background-color: #004d40;
            transform: translateY(-2px);
        }

        .content {
            text-align: center;
            margin-top: 60px;
            color: #2c3e50;
        }

        .content p {
            font-size: 22px;
            padding: 10px 20px;
        }

        hr {
            margin: 40px auto;
            width: 85%;
            border: 0;
            border-top: 2px solid #ccc;
        }

        @media (max-width: 600px) {
            .navbar {
                flex-direction: column;
                align-items: center;
            }

            .navbar a {
                width: 80%;
                text-align: center;
            }
        }
    </style>
</head>
<body>
<f:view>
    <div class="navbar">
        <a href="ShowPatientMedicalHistory.jsf"><i class="fas fa-notes-medical"></i> Patient Medical History</a>
        <a href="ShowPatientTests.jsf"><i class="fas fa-vials"></i> Patient Tests</a>
        <a href="AddMedicalHistory.jsf"><i class="fas fa-plus-circle"></i> Add Medical History</a>
    </div>

    <div class="content">
        <p>👨‍⚕️ Welcome to the <strong>Medical Records</strong> Section</p>
    </div>

    <hr />
</f:view>
</body>
</html>
