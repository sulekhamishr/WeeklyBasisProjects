package com.java.hms.jsf.model;

import java.sql.Date;

public class Patient {
	
	
	private String patientId;
	private String patientName;
	private String doctorId;
	private Date dateOfBirth;
	public String getPatientId() {
		return patientId;
	}
	public void setPatientId(String patientId) {
		this.patientId = patientId;
	}
	public String getPatientName() {
		return patientName;
	}
	public void setPatientName(String patientName) {
		this.patientName = patientName;
	}
	public String getDoctorId() {
		return doctorId;
	}
	public void setDoctorId(String doctorId) {
		this.doctorId = doctorId;
	}
	public Date getDateOfBirth() {
		return dateOfBirth;
	}
	public void setDateOfBirth(Date dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}
	public Patient(String patientId, String patientName, String doctorId, Date dateOfBirth) {
		super();
		this.patientId = patientId;
		this.patientName = patientName;
		this.doctorId = doctorId;
		this.dateOfBirth = dateOfBirth;
	}
	@Override
	public String toString() {
		return "Patient [patientId=" + patientId + ", patientName=" + patientName + ", doctorId=" + doctorId
				+ ", dateOfBirth=" + dateOfBirth + ", getPatientId()=" + getPatientId() + ", getPatientName()="
				+ getPatientName() + ", getDoctorId()=" + getDoctorId() + ", getDateOfBirth()=" + getDateOfBirth()
				+ ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString()
				+ "]";
	}
	public Patient() {
		super();
		// TODO Auto-generated constructor stub
	}

	
	
	
	
}




