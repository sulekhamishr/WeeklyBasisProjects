package com.java.hms.jsf.dao;

import java.util.List;

import com.java.hms.jsf.model.MedicationHistory;

public interface MedicationHistoryDao {
    
    String AddMedicalHistory(MedicationHistory medicationhistory);

    List<MedicationHistory> ShowPatientMedicalHistory();

    List<MedicationHistory> ShowPatientTests(String patientId);

}