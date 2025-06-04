package com.java.hms.jsf.dao;

import java.util.List;

import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.java.hms.jsf.model.Doctor;
import com.java.hms.jsf.model.MedicationHistory;
import com.java.hms.jsf.model.Patient;
import com.java.hms.jsf.model.Specialization;
import com.java.hms.jsf.util.SessionHelper;
import com.java.hms.jsf.util.UserIdGenerator;

public class HmsDaoImp implements DoctorDao, PatientDao , MedicationHistoryDao{

    private SessionFactory sessionFactory;

    @Override
    public String addDoctor(Doctor doctor) {
        FacesContext context = FacesContext.getCurrentInstance();
        boolean isValid = true;

        if (doctor.getDoctorName() == null || doctor.getDoctorName().length() < 3 || doctor.getDoctorName().length() > 20) {
            context.addMessage("doctorName", new FacesMessage(FacesMessage.SEVERITY_ERROR,
                    "Invalid Name", "Doctor name must be between 3 to 20 characters"));
            context.validationFailed();
            isValid = false;
        }

        if (doctor.getMobileNo() == null || !doctor.getMobileNo().matches("\\d{10}")) {
            context.addMessage("mobileNo", new FacesMessage(FacesMessage.SEVERITY_ERROR,
                    "Invalid Mobile", "Mobile number must be 10 digits"));
            context.validationFailed();
            isValid = false;
        }

        if (!isValid) {
            return null;
        }

        sessionFactory = SessionHelper.getConnection();
        Session session = sessionFactory.openSession();
        Transaction tx = session.beginTransaction();

        if (doctor.getDoctorId() == null || doctor.getDoctorId().isEmpty()) {
            String newId = UserIdGenerator.generateDoctorId(session);
            doctor.setDoctorId(newId);
        }

        session.save(doctor);
        tx.commit();
        session.close();

        return "Menu.jsp?faces-redirect=true";
    }

    @Override
    public List<Doctor> showDoctor() {
        sessionFactory = SessionHelper.getConnection();
        Session session = sessionFactory.openSession();
        Query query = session.getNamedQuery("showAll");
        List<Doctor> doctorList = query.list();
        session.close();
        return doctorList;
    }

    @Override
    public List<Doctor> showByCategory(Specialization specialization) {
        sessionFactory = SessionHelper.getConnection();
        Session session = sessionFactory.openSession();
        Query query = session.getNamedQuery("showByCategory");
        query.setParameter("specialization", specialization);
        List<Doctor> doctorList = query.list();
        session.close();
        return doctorList;
    }

    @Override
    public Doctor searchByDoctorId(String doctorId) {
        sessionFactory = SessionHelper.getConnection();
        Session session = sessionFactory.openSession();
        Query query = session.getNamedQuery("searchByDoctorId");
        query.setParameter("doctorId", doctorId);
        Doctor doctor = (Doctor) query.uniqueResult();
        session.close();
        return doctor;
    }

    @Override
    public String addPatient(Patient patient) {
        sessionFactory = SessionHelper.getConnection();
        Session session = sessionFactory.openSession();
        Transaction trans = session.beginTransaction();

        String patientId = UserIdGenerator.generatePatientId(session);
        patient.setPatientId(patientId);

        session.save(patient);
        trans.commit();
        session.close();

        return "PatientDashboard?faces-redirect=true";
    }

    @Override
    public List<Patient> ShowPatientById(String patientId) {
        sessionFactory = SessionHelper.getConnection();
        Session session = sessionFactory.openSession();
        Query query = session.getNamedQuery("searchByPatientId");
        query.setParameter("patientId", patientId);
        List<Patient> patientList = query.list();
        session.close();
        return patientList;
    }

    @Override
    public List<Patient> ShowPatientByDoctorId(String doctorId) {
        sessionFactory = SessionHelper.getConnection();
        Session session = sessionFactory.openSession();
        Query query = session.getNamedQuery("ShowPatientByDoctorId");
        query.setParameter("doctorId", doctorId);
        List<Patient> patientList = query.list();
        session.close();
        return patientList;
    }
    @Override
    public String AddMedicalHistory(MedicationHistory medicationHistory) {
        sessionFactory = SessionHelper.getConnection();
        Session session = sessionFactory.openSession();
        Transaction trans = session.beginTransaction();

        String medicationId = UserIdGenerator.generateMedId(session);
        medicationHistory.setMedId(medicationId);

        session.save(medicationHistory);  
        trans.commit();
        session.close();

        return "MedicationDashboard?faces-redirect=true";
    }

    @Override
    public List<MedicationHistory> ShowPatientMedicalHistory( ) {
    	
    	
        sessionFactory = SessionHelper.getConnection();
        Session session = sessionFactory.openSession();
        Query query = session.getNamedQuery("ShowPatientMedicalHistory");
        List<MedicationHistory> medHistoryList = query.list();
        session.close();
        return medHistoryList;
    }

    @Override
    public List<MedicationHistory> ShowPatientTests(String patientId) {
        sessionFactory = SessionHelper.getConnection();
        Session session = sessionFactory.openSession();
        Query query = session.getNamedQuery("ShowPatientTests");
        query.setParameter("patientId", patientId);
        List<MedicationHistory> testsList = query.list();
        session.close();
        return testsList;
    }

}
