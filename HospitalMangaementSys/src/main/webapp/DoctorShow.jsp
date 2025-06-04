<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

            <h:dataTable value="#{hospitalController.showDoctor()}" var="e" border="1">

                <h:column>
                    <f:facet name="header">
                        <h:outputText value="Doctor ID" />
                    </f:facet>
                    <h:outputText value="#{e.doctorId}" />
                </h:column>

                <h:column>
                    <f:facet name="header">
                        <h:outputText value="Doctor Name" />
                    </f:facet>
                    <h:outputText value="#{e.doctorName}" />
                </h:column>

                <h:column>
                    <f:facet name="header">
                        <h:outputText value="Specialization" />
                    </f:facet>
                    <h:outputText value="#{e.specialization}" />
                </h:column>

                <h:column>
                    <f:facet name="header">
                        <h:outputText value="Location" />
                    </f:facet>
                    <h:outputText value="#{e.location}" />
                </h:column>

                <h:column>
                    <f:facet name="header">
                        <h:outputText value="Mobile No" />
                    </f:facet>
                    <h:outputText value="#{e.mobileNo}" />
                </h:column>

                <h:column>
                    <f:facet name="header">
                        <h:outputText value="Status" />
                    </f:facet>
                    <h:outputText value="#{e.isStatus}" />
                </h:column>

            </h:dataTable>
        </h:form>
    </f:view>
</body>
</html>
