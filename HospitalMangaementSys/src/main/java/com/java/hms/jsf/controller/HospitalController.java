package com.java.hms.jsf.controller;

import java.util.List;

import com.java.hms.jsf.dao.DoctorDao;
import com.java.hms.jsf.dao.MedicationHistoryDao;
import com.java.hms.jsf.dao.PatientDao;
import com.java.hms.jsf.model.Doctor;
import com.java.hms.jsf.model.MedicationHistory;
import com.java.hms.jsf.model.Patient;
import com.java.hms.jsf.model.Specialization;

public class HospitalController {

    private PatientDao patientDao;
	private String searchId;
    private Patient patient;
    private Doctor   searchByDoctorId;
    public Doctor getSearchByDoctorId() {
		return searchByDoctorId;
	}

	public void setSearchByDoctorId(Doctor searchByDoctorId) {
		this.searchByDoctorId = searchByDoctorId;
	}

	public void setPatients(List<Patient> patients) {
		this.patients = patients;
	}

	private Specialization specializationList;
    private Specialization searchBySpecialization;
    private DoctorDao doctorDao;
    private Specialization selectedSpecialization;
    private List<Doctor> filteredDoctors;
	private String patientId;
    private Patient selectedPatient;
    private Doctor doctor;
    private Doctor doctorfound;
    private List<Patient> patients;  

    public List<Patient> getPatients() {
        return patients;
    }

    public String ShowPatientByDoctorId() {
        if (searchId != null && !searchId.trim().isEmpty()) {
            patients = patientDao.ShowPatientByDoctorId(searchId);
        } else {
            patients = null;
        }
        return null;
    }



    public Specialization getSelectedSpecialization() {
        return selectedSpecialization;
    }

    public void setSelectedSpecialization(Specialization selectedSpecialization) {
        this.selectedSpecialization = selectedSpecialization;
    }

    public List<Doctor> getFilteredDoctors() {
        return filteredDoctors;
    }

    public void setFilteredDoctors(List<Doctor> filteredDoctors) {
        this.filteredDoctors = filteredDoctors;
    }

  

    public String showByCategory() {
        this.filteredDoctors = doctorDao.showByCategory(selectedSpecialization);
        return null;
    }

    
	public Specialization getSearchBySpecialization() {
		return searchBySpecialization;
	}

	public void setSearchBySpecialization(Specialization searchBySpecialization) {
		this.searchBySpecialization = searchBySpecialization;
	}


    public Specialization getSpecializationList() {
		return specializationList;
	}

	public void setSpecializationList(Specialization specializationList) {
		this.specializationList = specializationList;
	}


	public Patient getPatient() {
		return patient;
	}

	public void setPatient(Patient patient) {
		this.patient = patient;
	}


    public Doctor getDoctorfound() {
		return doctorfound;
	}

	public void setDoctorfound(Doctor doctorfound) {
		this.doctorfound = doctorfound;
	}



    // Doctor Methods
    public String addDoctor(Doctor doctor) {
        return doctorDao.addDoctor(doctor);
    }

    public List<Doctor> showDoctor() {
        return doctorDao.showDoctor();
    }

    public List<Doctor> showByCategory(Specialization specialization) {
        return doctorDao.showByCategory(specialization);
    }

    public Doctor findDoctorById(String doctorId) {
        return doctorDao.searchByDoctorId(doctorId);
    }

    public String searchByDoctorId() {
        doctorfound = doctorDao.searchByDoctorId(searchId);
        return null;
    }

    // Patient Methods
    public String addPatient(Patient patient) {
        return patientDao.addPatient(patient);
    }

    public List<Patient> showPatientById(String patientId) {
        return patientDao.ShowPatientById(patientId);
    }

    public List<Patient> showPatientByDoctorId(String doctorId) {
        return patientDao.ShowPatientByDoctorId(doctorId);
    }
    public void searchPatientById() {
        List<Patient> results = patientDao.ShowPatientById(searchId);
        if (!results.isEmpty()) {
            patient = results.get(0);
        } else {
            patient = null;
        }
    }


    // --- Getters and Setters ---

    public DoctorDao getDoctorDao() {
        return doctorDao;
    }

    public void setDoctorDao(DoctorDao doctorDao) {
        this.doctorDao = doctorDao;
    }

    public PatientDao getPatientDao() {
        return patientDao;
    }

    public void setPatientDao(PatientDao patientDao) {
        this.patientDao = patientDao;
    }

    public Doctor getDoctor() {
        return doctor;
    }

    public void setDoctor(Doctor doctor) {
        this.doctor = doctor;
    }

    public Doctor getFoundDoctor() {
        return doctorfound;
    }

    public void setFoundDoctor(Doctor foundDoctor) {
        this.doctorfound = foundDoctor;
    }

    public String getSearchId() {
        return searchId;
    }

    public void setSearchId(String searchId) {
        this.searchId = searchId;
    }

    public String getPatientId() {
        return patientId;
    }

    public void setPatientId(String patientId) {
        this.patientId = patientId;
    }

    public Patient getSelectedPatient() {
        return selectedPatient;
    }

    public void setSelectedPatient(Patient selectedPatient) {
        this.selectedPatient = selectedPatient;
    }
    
   private String ShowPatientMedicalHistory  ;
   private  MedicationHistoryDao medicationDao;
   private String  medicationHistory;
   private MedicationHistory medication;
   
   
   
   
   public MedicationHistory getMedication() {
	return medication;
}

public void setMedication(MedicationHistory medication) {
	this.medication = medication;
}

public String addMedicalHistory(MedicationHistory medicationhistory) {
	    return medicationDao.AddMedicalHistory(medicationhistory);
	}

public MedicationHistoryDao getMedicationDao() {
	return medicationDao;
}

public void setMedicationDao(MedicationHistoryDao medicationDao) {
	this.medicationDao = medicationDao;
}

public String getMedicationHistory() {
	return medicationHistory;
}

public void setMedicationHistory(String medicationHistory) {
	this.medicationHistory = medicationHistory;
}
public List<MedicationHistory> ShowPatientMedicalHistory() {
    return medicationDao.ShowPatientMedicalHistory();
}

private List<MedicationHistory> patientTestList;

public List<MedicationHistory> getPatientTestList() {
    return patientTestList;
}


public void setPatientTestList(List<MedicationHistory> patientTestList) {
	this.patientTestList = patientTestList;
}

public String ShowPatientTests() {
    if (searchId != null && !searchId.trim().isEmpty()) {
        patientTestList = medicationDao.ShowPatientTests(searchId);
    } else {
        patientTestList = null;
    }
    return null; 
}

public String getShowPatientMedicalHistory() {
	return ShowPatientMedicalHistory;
}

public void setShowPatientMedicalHistory(String showPatientMedicalHistory) {
	ShowPatientMedicalHistory = showPatientMedicalHistory;
}
   
   
   
}
