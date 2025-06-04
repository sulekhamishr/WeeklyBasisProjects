<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html" %>

<f:view>
<!DOCTYPE html>

<html>
<head>
   <meta charset="UTF-8">
    <title>Patient Tests</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f7f7f7;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 90%;
            max-width: 700px;
            margin: 40px auto;
            background: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            padding: 30px;
        }

        h2 {
            text-align: center;
            color: #2c3e50;
            margin-bottom: 30px;
        }

        .field {
            display: flex;
            align-items: center;
            gap: 10px;
            margin-bottom: 20px;
        }

        label {
            font-weight: bold;
            width: 140px;
        }

        input[type="text"] {
            flex: 1;
            padding: 6px 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .btn {
            padding: 8px 16px;
            background-color: #3498db;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .btn:hover {
            background-color: #2980b9;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            padding: 10px;
            border: 1px solid #ddd;
        }

        th {
            background-color: #f0f0f0;
            text-align: left;
        }
    </style>
</head>
<body>
    <h:form>
        <div class="container">
            <h2>Medical Information</h2>

            <div class="field">
                <label for="patientId">Enter Patient ID:</label>
                <h:inputText id="patientId" value="#{hospitalController.searchId}" />
                <h:commandButton value="Search" action="#{hospitalController.ShowPatientTests}" />
            </div>

<h:panelGroup rendered="#{not empty hospitalController.patientTestList}">
    <h:dataTable value="#{hospitalController.patientTestList}" var="e" border="1">

        <h:column>
            <f:facet name="header">Med ID</f:facet>
            <h:outputText value="#{e.medId}" />
        </h:column>

        <h:column>
            <f:facet name="header">Patient ID</f:facet>
            <h:outputText value="#{e.patientId}" />
        </h:column>

        <h:column>
            <f:facet name="header">Medicines</f:facet>
            <h:outputText value="#{e.medicines}" />
        </h:column>

        <h:column>
            <f:facet name="header">Tests</f:facet>
            <h:outputText value="#{e.tests}" />
        </h:column>

    </h:dataTable>
</h:panelGroup>
</div>
    </h:form>
</body>
</html>
</f:view>
