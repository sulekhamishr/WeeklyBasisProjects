package com.java.hms.jsf.model;

public enum Specialization {
    HEART("Heart Specialist"),
    SKIN("Skin Specialist"),
    GENERAL("General Physician"),
    KIDNEY("Kidney Specialist");

    private final String label;

    Specialization(String label) {
        this.label = label;
    }

    public String getLabel() {
        return label;
    }
}
