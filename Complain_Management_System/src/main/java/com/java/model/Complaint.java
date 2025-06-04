package com.java.model;
import java.sql.Timestamp;

//This is a Java model or POJO (Plain Old Java Object) that holds data for a complaint. It has:


public class Complaint {
    private String complaintID;
    private String complaintType;
    private String description;
    private Timestamp complaintDate;
    private String severity;
    private String status;

    // Constructor
    public Complaint(String complaintID, String complaintType, String description, Timestamp complaintDate, String severity, String status) {
        this.complaintID = complaintID;
        this.complaintType = complaintType;
        this.description = description;
        this.complaintDate = complaintDate;
        this.severity = severity;
        this.status = status;
    }

    // Getters and Setters
    public String getComplaintID() {
        return complaintID;
    }

    public void setComplaintID(String complaintID) {
        this.complaintID = complaintID;
    }

    public String getComplaintType() {
        return complaintType;
    }

    public void setComplaintType(String complaintType) {
        this.complaintType = complaintType;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Timestamp getComplaintDate() {
        return complaintDate;
    }

    public void setComplaintDate(Timestamp complaintDate) {
        this.complaintDate = complaintDate;
    }

    public String getSeverity() {
        return severity;
    }

    public void setSeverity(String severity) {
        this.severity = severity;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
