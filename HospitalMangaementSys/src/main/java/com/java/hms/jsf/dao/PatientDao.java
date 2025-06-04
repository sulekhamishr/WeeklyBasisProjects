package com.java.hms.jsf.dao;

import java.util.List;

import com.java.hms.jsf.model.Patient;
import com.java.hms.jsf.model.Specialization;


public interface PatientDao {

	
	
	    String addPatient(Patient patient);
	    
	    List<Patient> ShowPatientById(String patientId);

	    List<Patient> ShowPatientByDoctorId(String doctorId);
	}
