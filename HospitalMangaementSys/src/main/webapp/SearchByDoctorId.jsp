<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<!DOCTYPE html>
<f:view>
<html>
<head>
    <meta charset="UTF-8">
    <title>Doctor Info</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #eef2f3;
            margin: 0;
            padding: 40px;
        }

        .container {
            max-width: 600px;
            margin: auto;
            background-color: #fff;
            padding: 30px 40px;
            border-radius: 12px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
        }

        .container h2 {
            text-align: center;
            margin-bottom: 25px;
            color: #2c3e50;
        }

        .field {
            margin-bottom: 15px;
        }

        .field label {
            font-weight: bold;
            display: inline-block;
            width: 150px;
            color: #34495e;
        }

        .field span {
            color: #2d3436;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Doctor Information</h2>
        <h:form>
            <div class="field">
                <label for="doctorId">Enter Doctor ID:</label>
                <h:inputText id="doctorId" value="#{hospitalController.searchId}" />
                <h:commandButton value="Search" action="#{hospitalController.searchByDoctorId}" />
            </div>

            <h:panelGroup rendered="#{not empty hospitalController.doctorfound}">
                <div class="field">
                    <label>Doctor ID:</label>
                    <span><h:outputText value="#{hospitalController.doctorfound.doctorId}" /></span>
                </div>
                <div class="field">
                    <label>Doctor Name:</label>
                    <span><h:outputText value="#{hospitalController.doctorfound.doctorName}" /></span>
                </div>
                <div class="field">
                    <label>Specialization:</label>
                    <span><h:outputText value="#{hospitalController.doctorfound.specialization}" /></span>
                </div>
                <div class="field">
                    <label>Location:</label>
                    <span><h:outputText value="#{hospitalController.doctorfound.location}" /></span>
                </div>
                <div class="field">
                    <label>Mobile No:</label>
                    <span><h:outputText value="#{hospitalController.doctorfound.mobileNo}" /></span>
                </div>
                <div class="field">
                    <label>Status:</label>
                    <span><h:outputText value="#{hospitalController.doctorfound.isStatus}" /></span>
                </div>
            </h:panelGroup>
        </h:form>
    </div>
</body>
</html>
</f:view>
