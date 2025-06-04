package com.java.dao;

import java.util.List;

import com.java.model.ResolvedComplaint;

public interface ResolveDao {
	
	public String resolve(ResolvedComplaint resolve);
	public List<ResolvedComplaint> showResolves();
	public ResolvedComplaint searchResolveByComplainId(String complaintId);
	

}
