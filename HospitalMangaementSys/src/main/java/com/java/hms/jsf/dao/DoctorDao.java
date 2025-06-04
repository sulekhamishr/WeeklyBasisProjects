package com.java.hms.jsf.dao;

import java.util.List;
import com.java.hms.jsf.model.Doctor;
import com.java.hms.jsf.model.Specialization;

public interface DoctorDao {

    String addDoctor(Doctor doctor);

    List<Doctor> showDoctor();

    List<Doctor> showByCategory(Specialization specialization);

    Doctor searchByDoctorId(String doctorId);
}
