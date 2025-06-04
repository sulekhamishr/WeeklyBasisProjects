<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html" %>

<f:view>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Doctor Records</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #eef2f5;
            padding: 20px;
        }

        h2 {
            text-align: center;
            color: #2c3e50;
        }

        table {
            margin: 0 auto;
            border-collapse: collapse;
            width: 90%;
            background-color: #ffffff;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }

        th, td {
            padding: 12px 15px;
            border: 1px solid #ccc;
            text-align: center;
        }

        th {
            background-color: #007BFF;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
    </style>
</head>
<body>
    <h:form>
        <h2><h:outputText value="Doctor Records" /></h2>

        <h:dataTable value="#{hospitalController.ShowPatientMedicalHistory()}" var="e" border="1">

            <h:column>
                <f:facet name="header">
                    <h:outputText value="med ID" />
                </f:facet>
                <h:outputText value="#{e.medId}" />
            </h:column>

            <h:column>
                <f:facet name="header">
                    <h:outputText value="Patient ID" />
                </f:facet>
                <h:outputText value="#{e.patientId}" />
            </h:column>

            <h:column>
                <f:facet name="header">
                    <h:outputText value="Medicines" />
                </f:facet>
                <h:outputText value="#{e.medicines}" />
            </h:column>
            
            

            <h:column>
                <f:facet name="header">
                    <h:outputText value="Tests" />
                </f:facet>
                <h:outputText value="#{e.tests}" /> 
            </h:column>

        </h:dataTable>
    </h:form>
</body>
</html>
</f:view>
