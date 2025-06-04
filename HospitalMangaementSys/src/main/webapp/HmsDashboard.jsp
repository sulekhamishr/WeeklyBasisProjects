<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core" %>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html" %>

<f:view>
<!DOCTYPE html>
<html>
<head>
    <title>Hospital Management Dashboard</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" />
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(to right, #f0f4f7, #e0f7fa);
            margin: 0;
            padding: 40px 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
            gap: 30px;
        }

        .dashboard-title {
            font-size: 32px;
            font-weight: bold;
            color: #00796b;
            margin-bottom: 30px;
        }

        .container {
            background-color: #ffffff;
            padding: 30px 40px;
            border-radius: 15px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 420px;
            text-align: center;
            transition: transform 0.3s ease;
        }

        .container:hover {
            transform: translateY(-4px);
        }

        h2 {
            color: #004d40;
            margin-bottom: 20px;
            font-size: 24px;
        }

        .nav-btn {
            padding: 12px 20px;
            font-size: 16px;
            background: #00796b;
            color: #ffffff;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: background 0.3s ease, transform 0.2s ease;
            width: 100%;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
        }

        .nav-btn:hover {
            background-color: #004d40;
            transform: scale(1.02);
        }

        .nav-btn i {
            font-size: 18px;
        }
    </style>
</head>
<body>

    <div class="dashboard-title">🏥 Hospital Management Dashboard</div>

    <div class="container">
        <h2><i class="fas fa-user-md"></i> Doctor Dashboard</h2>
        <h:form>
            <h:commandButton value="Go to Doctor Details" action="Menu.jsf" styleClass="nav-btn">
                <f:facet name="label">
                    <i class="fas fa-stethoscope"></i> Doctor Details
                </f:facet>
            </h:commandButton>
        </h:form>
    </div>

    <div class="container">
        <h2><i class="fas fa-procedures"></i> Patient Dashboard</h2>
        <h:form>
            <h:commandButton value="Go to Patient Details" action="PatientDashboard" styleClass="nav-btn">
                <f:facet name="label">
                    <i class="fas fa-user-injured"></i> Patient Details
                </f:facet>
            </h:commandButton>
        </h:form>
    </div>

    <div class="container">
        <h2><i class="fas fa-pills"></i> Medication Dashboard</h2>
        <h:form>
            <h:commandButton value="Go to Medication Details" action="MedicationHistoryDashBoard.jsp" styleClass="nav-btn">
                <f:facet name="label">
                    <i class="fas fa-capsules"></i> Medication Details
                </f:facet>
            </h:commandButton>
        </h:form>
    </div>

</body>
</html>
</f:view>
