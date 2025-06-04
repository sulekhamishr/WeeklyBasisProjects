<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%> 
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%> 
<!DOCTYPE html>
<html>
<f:view>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

    <body>
        <h:form>
        	Agent Id : 
        	<h:outputText value="#{agentFound.agentID}" />
        	<br/>
        	Name : 
        	<h:outputText value="#{agentFound.name}" />
        	<br/>
        	City:
        	<h:outputText value="#{agentFound.city}" />
        	<br/>
        	Gender : 
        	<h:outputText value="#{agentFound.gender}" />
        	<br/>
            Martial Status:
        	<h:outputText value="#{agentFound.maritalStatus}" />
        	<br/>
            Premium :
        	<h:outputText value="#{agentFound.premium}" />
        </h:form>
    </body>
</html>
</f:view>
</body>
</html>