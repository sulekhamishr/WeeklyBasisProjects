<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html" %>
<f:view>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <title>Add Doctor</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f4f7f8;
            margin: 0;
            padding: 20px;
        }
        .form-container {
            background: #ffffff;
            max-width: 500px;
            margin: auto;
            padding: 30px 40px;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }
        label {
            font-weight: bold;
            margin-top: 10px;
            display: block;
            color: #333;
        }
        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-top: 4px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 6px;
            box-sizing: border-box;
        }
        .error-message {
            color: red;
            font-size: 0.9em;
            margin-bottom: 10px;
        }
        .submit-btn {
            width: 100%;
            padding: 12px;
            background-color: #4CAF50;
            border: none;
            border-radius: 6px;
            color: white;
            font-size: 16px;
            cursor: pointer;
            margin-top: 10px;
        }
        .submit-btn:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>

</div>
    <jsp:include page="Menu.jsp" />
    
    <h:form styleClass="form-container" prependId="false">
        <h2>Add Doctor</h2>

        <h:messages globalOnly="true" style="color:red" />

        <label for="doctorId">Doctor Number</label>
        <h:inputText id="doctorId" value="#{doctor.doctorId}" />
        <h:message for="doctorId" styleClass="error-message" />

        <label for="doctorName">Doctor Name</label>
        <h:inputText id="doctorName" value="#{doctor.doctorName}" />
        <h:message for="doctorName" styleClass="error-message" />

        <label for="specialization">Specialization</label>
        <h:inputText id="specialization" value="#{doctor.specialization}" />
        <h:message for="specialization" styleClass="error-message" />

        <label for="location">Location</label>
        <h:inputText id="location" value="#{doctor.location}" />
        <h:message for="location" styleClass="error-message" />

        <label for="mobileNo">Mobile No</label>
        <h:inputText id="mobileNo" value="#{doctor.mobileNo}" />
        <h:message for="mobileNo" styleClass="error-message" />

        <label for="isStatus">Status</label>
        <h:inputText id="isStatus" value="#{doctor.isStatus}" />
        <h:message for="isStatus" styleClass="error-message" />

        <h:commandButton value="Add Doctor" action="#{hospitalController.addDoctor(doctor)}" styleClass="submit-btn" />
    </h:form>
</body>
</html>
</f:view>
