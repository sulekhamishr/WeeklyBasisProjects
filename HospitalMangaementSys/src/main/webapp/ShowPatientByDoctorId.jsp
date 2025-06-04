<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html" %>
<!DOCTYPE html>
<f:view>
<html>
<head>
    <meta charset="UTF-8">
    <title>Search Patient by Doctor ID</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f7f9fc;
            margin: 0;
            padding: 30px;
        }
        .container {
            width: 500px;
            margin: auto;
            background: #fff;
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
            padding: 30px;
        }
        h2 {
            text-align: center;
            color: #333;
        }
        .field {
            margin-bottom: 20px;
        }
        label {
            display: block;
            font-weight: bold;
            color: #555;
            margin-bottom: 5px;
        }
        input[type="text"] {
            width: 100%;
            padding: 10px;
            font-size: 14px;
            border: 1px solid #ccc;
            border-radius: 6px;
        }
        .btn {
            background-color: #007BFF;
            color: white;
            padding: 10px 18px;
            font-size: 14px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
        }
        .btn:hover {
            background-color: #0056b3;
        }
        .result, .message {
            margin-top: 25px;
            padding: 15px;
            border-radius: 6px;
        }
        .result {
            background-color: #e9f7ef;
            color: #155724;
        }
        .message {
            background-color: #fff3cd;
            color: #856404;
        }
        .error {
            color: red;
        }
    </style>
</head>
<body>

<div class="container">
    <h:form>
    
    
    
        <h2>Search Patient by Doctor ID</h2>

        <h:messages globalOnly="true" styleClass="error" />

        <!-- Input -->
        <div class="field">
            <label for="searchId">Enter Doctor ID:</label>
            <h:inputText id="searchId" value="#{hospitalController.searchId}" />
        </div>

        <!-- Button -->
        <h:commandButton value="Search" action="#{hospitalController.ShowPatientByDoctorId}" styleClass="btn" />
<!-- Patient Result -->
<h:panelGroup rendered="#{not empty hospitalController.patients}">
    <div class="result">
        <h:dataTable value="#{hospitalController.patients}" var="p" border="1" cellpadding="5">
            <h:column>
                <f:facet name="header">Patient ID</f:facet>
                <h:outputText value="#{p.patientId}" />
            </h:column>
            <h:column>
                <f:facet name="header">Name</f:facet>
                <h:outputText value="#{p.patientName}" />
            </h:column>
            <h:column>
                <f:facet name="header">Doctor ID</f:facet>
                <h:outputText value="#{p.doctorId}" />
            </h:column>
            <h:column>
                <f:facet name="header">Date of Birth</f:facet>
                <h:outputText value="#{p.dateOfBirth}" />
            </h:column>
        </h:dataTable>
    </div>
</h:panelGroup>

        <!-- Message if not found -->
        <h:panelGroup rendered="#{hospitalController.patient == null and not empty hospitalController.searchId}">
            <div class="message">
                No patient found with that ID.
            </div>
        </h:panelGroup>

    </h:form>
</div>

</body>
</html>
</f:view>
