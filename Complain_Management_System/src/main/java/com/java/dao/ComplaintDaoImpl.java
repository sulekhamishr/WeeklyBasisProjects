package com.java.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;

import com.java.model.Complaint;

public class ComplaintDaoImpl implements ComplaintDao{

	SessionFactory sessionFactory;
	Session session;
	@Override
	public String addComplaint(Complaint complain) {
		// TODO Auto-generated method stub
		
		
		sessionFactory = new AnnotationConfiguration().configure().buildSessionFactory();
		session = sessionFactory.openSession();
		Transaction trans = session.beginTransaction();
		session.save(complain);
		trans.commit();
		return "Complaint Record Inserted...";
	}

	@Override
	public Complaint searchComplaint(String complaintId) {
		// TODO Auto-generated method stub
		
		sessionFactory= new AnnotationConfiguration().configure().buildSessionFactory();
		session=sessionFactory.openSession();
		Query query=session.getNamedQuery("search complaint");
		query.setParameter("complaintId",complaintId);
		Complaint complain =( Complaint)query.uniqueResult();
		return complain;
	}

	@Override
	public List<Complaint> showAllComplaint() {
		// TODO Auto-generated method stub
		
	sessionFactory=new AnnotationConfiguration().configure().buildSessionFactory();
	session=sessionFactory.openSession();
	Query query= session.getNamedQuery("Show complaint");
	List<Complaint> complaintList= query.list();
	return complaintList;
	
	}

	@Override
	public String deletePendingComplaint(int complainId) {
		// TODO Auto-generated method stub
	  sessionFactory= new AnnotationConfiguration().configure().buildSessionFactory();
	  session=sessionFactory.openSession();
	  Transaction trans= session.beginTransaction();
	  session.delete(trans);
	  trans.commit();
	return "complain is deleted";
	}
	

}
