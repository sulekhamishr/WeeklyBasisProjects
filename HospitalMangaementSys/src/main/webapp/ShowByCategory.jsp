<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<!DOCTYPE html>
    <f:view>

<html>
<head>
    <meta charset="UTF-8">
    <title>Doctor List by Specialization</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #eef2f3;
            margin: 0;
            padding: 40px;
        }

        .container {
            max-width: 800px;
            margin: auto;
            background-color: #fff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            color: #2c3e50;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            font-weight: bold;
            color: #34495e;
        }

        select, .btn {
            padding: 8px;
            font-size: 16px;
            margin-top: 5px;
        }

        .btn {
            background-color: #2980b9;
            color: white;
            border: none;
            cursor: pointer;
        }

        .btn:hover {
            background-color: #3498db;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            padding: 12px;
            border: 1px solid #ccc;
            text-align: left;
        }

        th {
            background-color: #f4f6f7;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>Search Doctors by Specialization</h2>

        <h:form>
            <div class="form-group">
                <label for="specialization">Select Specialization:(HEART , SKIN , GENERAL , KIDNEY)</label><br />
               <h:selectOneMenu id="specialization" value="#{hospitalController.selectedSpecialization}">
    <f:selectItem itemLabel="-- Select --" />
    <f:selectItem itemLabel="Heart" itemValue="HEART" />
    <f:selectItem itemLabel="SKIN" itemValue="SKIN" />
    <f:selectItem itemLabel="GENERAL" itemValue="GENERAL" />
    <f:selectItem itemLabel="KIDNEY" itemValue="KIDNEY" />
    
    <f:selectItems value="#{hospitalController.specializationList}" var="spec"
                   itemValue="#{spec}" itemLabel="#{spec.label}" />
</h:selectOneMenu>

                
               
                <h:commandButton value="Search" action="#{hospitalController.showByCategory}" styleClass="btn" />
            </div>

            <h:dataTable value="#{hospitalController.filteredDoctors}" var="e" rendered="#{not empty hospitalController.filteredDoctors}">
                <h:column>
                    <f:facet name="header">Doctor ID</f:facet>
                    <h:outputText value="#{e.doctorId}" />
                </h:column>
                <h:column>
                    <f:facet name="header">Name</f:facet>
                    <h:outputText value="#{e.doctorName}" />
                </h:column>
                <h:column>
                    <f:facet name="header">Specialization</f:facet>
                    <h:outputText value="#{e.specialization}" />
                </h:column>
                <h:column>
                    <f:facet name="header">Location</f:facet>
                    <h:outputText value="#{e.location}" />
                </h:column>
                <h:column>
                    <f:facet name="header">Mobile No</f:facet>
                    <h:outputText value="#{e.mobileNo}" />
                </h:column>
                <h:column>
                    <f:facet name="header">Status</f:facet>
                    <h:outputText value="#{e.isStatus}" />
                </h:column>
            </h:dataTable>

            <h:panelGroup rendered="#{empty hospitalController.filteredDoctors}">
                <h:outputText value="No doctors found for the selected specialization." style="color: red;" />
            </h:panelGroup>
        </h:form>
    </f:view>
</div>
</body>
</html>
