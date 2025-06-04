<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html" %>
<f:view>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Patient</title>
    <style>
        body { font-family: Arial; background: #f4f7f8; padding: 20px; }
        .form-container { max-width: 500px; margin: auto; background: white; padding: 30px; border-radius: 12px; box-shadow: 0 4px 12px rgba(0,0,0,0.1); }
        h2 { text-align: center; color: #333; }
        label, input[type="text"] { display: block; width: 100%; margin-top: 10px; }
        input[type="text"] { padding: 10px; border: 1px solid #ccc; border-radius: 6px; }
        .submit-btn { background-color: #4CAF50; padding: 12px; color: white; border: none; width: 100%; margin-top: 20px; border-radius: 6px; cursor: pointer; }
        .submit-btn:hover { background-color: #45a049; }
        .error-message { color: red; font-size: 12px; }
    </style>
</head>
<body>

    <%-- Include your menu (if JSP-based) --%>
    <jsp:include page="Menu.jsp" />

    <h:form styleClass="form-container" prependId="false">
        <h2>Add Patient</h2>

        <h:messages globalOnly="true" style="color:red" />

        <label for="patientId">Patient ID</label>
        <h:inputText id="patientId" value="#{patient.patientId}" />
        <h:message for="patientId" styleClass="error-message" />

        <label for="patientName">Name</label>
        <h:inputText id="patientName" value="#{patient.patientName}" />
        <h:message for="patientName" styleClass="error-message" />

        <label for="doctorId">Doctor ID</label>
        <h:inputText id="doctorId" value="#{patient.doctorId}" />
        <h:message for="doctorId" styleClass="error-message" />

      <label for="dateOfBirth">Date of Birth (dd/MM/yyyy)</label>
      <h:inputText id="dateOfBirth" value="#{patient.dateOfBirth}">
            <f:convertDateTime pattern="dd/MM/yyyy" />
       </h:inputText>

        
        <h:message for="dateOfBirth" styleClass="error-message" />

        <h:commandButton value="Add Patient" 
                         action="#{hospitalController.addPatient(patient)}"
                         styleClass="submit-btn" />
    </h:form>
</body>
</html>
</f:view>
