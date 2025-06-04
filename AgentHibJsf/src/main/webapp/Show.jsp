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

        <title>JSP Page</title>
    </head>
    <body>
        <h:form>
        <center>
                <h2><h:outputText value="Agent Records"/></h2>
            </center>
<h:dataTable value="#{agentController.showAgents()}" var="e" border="3">
    <h:column>
        <f:facet name="header">
            <h:commandLink value="Employ No" action="#{agentController.sortBy('agentID')}" />
        </f:facet>
        <h:outputText value="#{e.agentID}"/>
    </h:column>
    
    <h:column>
        <f:facet name="header">
            <h:commandLink value="Employ Name" action="#{agentController.sortBy('name')}" />
        </f:facet>
        <h:outputText value="#{e.name}"/>
    </h:column>
    
     <h:column>
        <f:facet name="header">
            <h:commandLink value="City" action="#{agentController.sortBy('city')}" />
        </f:facet>
        <h:outputText value="#{e.city}"/>
    </h:column>

    <h:column>
        <f:facet name="header">
            <h:commandLink value="Gender" action="#{agentController.sortBy('gender')}" />
        </f:facet>
        <h:outputText value="#{e.gender}"/>
    </h:column>

    <h:column>
        <f:facet name="header">
            <h:commandLink value="MaritalStatus" action="#{agentController.sortBy('maritalStatus')}" />
        </f:facet>
        <h:outputText value="#{e.maritalStatus}"/>
    </h:column>

 

    <h:column>
        <f:facet name="header">
            <h:commandLink value="Premium" action="#{agentController.sortBy('premium')}" />
        </f:facet>
        <h:outputText value="#{e.premium}"/>
    </h:column>

   
    
  
</h:dataTable>
        </h:form>
    </body>
</html>
</f:view>

</body>
</html>