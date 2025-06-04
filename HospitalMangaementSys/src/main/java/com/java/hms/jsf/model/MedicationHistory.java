package com.java.hms.jsf.model;

public class MedicationHistory {
	
	
	private String medId;
	private String patientId;
	private String medicines;
	private String tests;
	
	
	
	
	public String getMedId() {
		return medId;
	}




	public void setMedId(String medId) {
		this.medId = medId;
	}




	public String getPatientId() {
		return patientId;
	}




	public void setPatientId(String patientId) {
		this.patientId = patientId;
	}




	public String getMedicines() {
		return medicines;
	}




	public void setMedicines(String medicines) {
		this.medicines = medicines;
	}




	public String getTests() {
		return tests;
	}




	public void setTests(String tests) {
		this.tests = tests;
	}




	public MedicationHistory(String medId, String patientId, String medicines, String tests) {
		super();
		this.medId = medId;
		this.patientId = patientId;
		this.medicines = medicines;
		this.tests = tests;
	}




	@Override
	public String toString() {
		return "MedicationHistory [medId=" + medId + ", patientId=" + patientId + ", medicines=" + medicines
				+ ", tests=" + tests + ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()="
				+ super.toString() + "]";
	}




	public MedicationHistory() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	
	
	
	
}