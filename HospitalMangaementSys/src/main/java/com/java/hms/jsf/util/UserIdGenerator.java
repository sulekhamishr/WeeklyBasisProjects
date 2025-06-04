package com.java.hms.jsf.util;

import org.hibernate.Query;
import org.hibernate.Session;

public class UserIdGenerator {

    public static String generateDoctorId(Session session) { 
        String prefix = "HSkDS";  
        int id = 91;           
        try {
            Query query = session.createQuery(
                "SELECT d.doctorId FROM Doctor d ORDER BY d.doctorId DESC"
            );
            query.setMaxResults(1);

            String lastId = (String) query.uniqueResult();   
            if (lastId != null && lastId.startsWith(prefix)) {
                String numPart = lastId.substring(prefix.length());  
                id = Integer.parseInt(numPart) + 1;            
            }
        } catch (Exception e) {
            e.printStackTrace(); 
        }

        return prefix + id;  
    }
    
    public static String generatePatientId(Session session) { 
        String prefix = "PTH";  
        int id = 622;           
        try {
            Query query = session.createQuery(
                "SELECT p.patientId FROM Patient p ORDER BY p.patientId DESC"
            );
            query.setMaxResults(1);

            String lastId = (String) query.uniqueResult();   
            if (lastId != null && lastId.startsWith(prefix)) {
                String numPart = lastId.substring(prefix.length());  
                id = Integer.parseInt(numPart) + 1;            
            }
        } catch (Exception e) {
            e.printStackTrace(); 
        }

        return prefix + id;
    }
    
    public static String generateMedId(Session session) { 
        String prefix = "MHD";
        int id = 6333;
        try {
            Query query = session.createQuery(
                "SELECT m.medId FROM MedicationHistory m ORDER BY m.medId DESC"
            );
            query.setMaxResults(1);

            String lastId = (String) query.uniqueResult();   
            if (lastId != null && lastId.startsWith(prefix)) {
                String numPart = lastId.substring(prefix.length());  
                id = Integer.parseInt(numPart) + 1;            
            }
        } catch (Exception e) {
            e.printStackTrace(); 
        }

        return prefix + id;
    }
}
