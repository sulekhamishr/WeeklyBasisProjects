<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%> 
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%> 
<f:view>
    <html>
    <head>
        <meta charset="UTF-8">
        <title>Patient Info</title>
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
            <h:form>
                <h2>Search Patient by ID</h2>

                <!-- Input for Patient ID -->
                <div class="field">
                    <h:outputLabel for="searchId" value="Enter Patient ID:"/>
                    <h:inputText id="searchId" value="#{hospitalController.searchId}" />
                </div>

                <h:commandButton value="Search" action="#{hospitalController.searchPatientById}" />

                <br/><br/>

                <!-- Display patient info if found -->
                <h:panelGrid columns="2" rendered="#{not empty hospitalController.patient}">
                    <h:outputText value="Patient ID:"/>
                    <h:outputText value="#{hospitalController.patient.patientId}"/>

                    <h:outputText value="Name:"/>
                    <h:outputText value="#{hospitalController.patient.patientName}"/>

                    <h:outputText value="Doctor ID:"/>
                    <h:outputText value="#{hospitalController.patient.doctorId}"/>

                    <h:outputText value="Date of Birth:"/>
                    <h:outputText value="#{hospitalController.patient.dateOfBirth}"/>
                </h:panelGrid>

                <!-- Message if patient not found -->
                <h:outputText value="No patient found with that ID."
                              rendered="#{hospitalController.patient == null and not empty hospitalController.searchId}"/>
            </h:form>
        </div>
    </body>
    </html>
</f:view>
