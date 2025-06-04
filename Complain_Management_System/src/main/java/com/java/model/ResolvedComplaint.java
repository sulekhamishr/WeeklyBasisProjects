package com.java.model;
import java.sql.Date;
import java.sql.Timestamp;

public class ResolvedComplaint {
    private String resolveID;
    private String complaintID;
    private Date complaintDate;
    private Timestamp resolveDate;
    private String resolvedBy;
    private String comments;
    private int TAT;  // Turnaround Time in days

    // Constructor
    public ResolvedComplaint(String resolveID, String complaintID, Date complaintDate, Timestamp resolveDate, String resolvedBy, String comments, int TAT) {
        this.resolveID = resolveID;
        this.complaintID = complaintID;
        this.complaintDate = complaintDate;
        this.resolveDate = resolveDate;
        this.resolvedBy = resolvedBy;
        this.comments = comments;
        this.TAT = TAT;
    }

    // Getters and Setters
    public String getResolveID() {
        return resolveID;
    }

    public void setResolveID(String resolveID) {
        this.resolveID = resolveID;
    }

    public String getComplaintID() {
        return complaintID;
    }

    public void setComplaintID(String complaintID) {
        this.complaintID = complaintID;
    }

    public Date getComplaintDate() {
        return complaintDate;
    }

    public void setComplaintDate(Date complaintDate) {
        this.complaintDate = complaintDate;
    }

    public Timestamp getResolveDate() {
        return resolveDate;
    }

    public void setResolveDate(Timestamp resolveDate) {
        this.resolveDate = resolveDate;
    }

    public String getResolvedBy() {
        return resolvedBy;
    }

    public void setResolvedBy(String resolvedBy) {
        this.resolvedBy = resolvedBy;
    }

    public String getComments() {
        return comments;
    }

    public void setComments(String comments) {
        this.comments = comments;
    }

    public int getTAT() {
        return TAT;
    }

    public void setTAT(int TAT) {
        this.TAT = TAT;
    }
}
