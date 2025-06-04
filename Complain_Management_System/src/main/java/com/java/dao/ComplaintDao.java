package com.java.dao;

import java.util.List;

import com.java.model.Complaint;

public interface ComplaintDao {
	
	public String addComplaint(Complaint complain);
	public Complaint searchComplaint(String complaintId);
	public List<Complaint> showAllComplaint();
	public String deletePendingComplaint(int complaintId);

}
