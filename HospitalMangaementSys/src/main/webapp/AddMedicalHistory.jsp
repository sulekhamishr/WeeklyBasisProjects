<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html" %>

<!DOCTYPE html>
    <f:view>

<html>
<head>
    <meta charset="UTF-8" />
    <title>Add Medication History</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f5f7fa;
            margin: 0;
            padding: 20px;
        }
        .form-container {
            background: white;
            max-width: 400px;
            margin: 40px auto;
            padding: 25px 30px;
            border-radius: 8px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
        }
        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }
        label {
            display: block;
            margin-top: 15px;
            font-weight: bold;
            color: #555;
        }
        input[type="text"], .ui-inputfield {
            width: 100%;
            padding: 8px 10px;
            margin-top: 5px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 14px;
        }
        .error-message {
            color: #d9534f;
            font-size: 12px;
            margin-top: 2px;
        }
        .submit-btn {
            margin-top: 25px;
            background-color: #007bff;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
            width: 100%;
            transition: background-color 0.3s ease;
        }
        .submit-btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
  <jsp:include page="MedicationHistoryDashBoard.jsp" />

        <h:form styleClass="form-container" prependId="false">
            <h2>Add Medication History</h2>

            <h:messages globalOnly="true" styleClass="error-message" />

            <label for="medId">Medical Id</label>
            <h:inputText id="medId" value="#{hospitalController.medication.medId}" />
            <h:message for="medId" styleClass="error-message" />

            <label for="patientId">Patient Id</label>
            <h:inputText id="patientId" value="#{hospitalController.medication.patientId}" />
            <h:message for="patientId" styleClass="error-message" />

            <label for="medicines">Medicines</label>
            <h:inputText id="medicines" value="#{hospitalController.medication.medicines}" />
            <h:message for="medicines" styleClass="error-message" />

            <label for="tests">Tests</label>
            <h:inputText id="tests" value="#{hospitalController.medication.tests}" />
            <h:message for="tests" styleClass="error-message" />

            <h:commandButton value="Add Medication" 
                             action="#{hospitalController.addMedicalHistory(medication)}" 
                             styleClass="submit-btn" />
        </h:form>
    </f:view>
</body>
</html>
