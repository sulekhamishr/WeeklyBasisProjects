package com.java.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import org.hibernate.cfg.AnnotationConfiguration;

import com.java.model.Complaint;
import com.java.model.ResolvedComplaint;

public class ResolveDaoImp implements ResolveDao{

	
	SessionFactory sessionFactory;
	Session session;
	@Override
	public String resolve(ResolvedComplaint resolve) {
		// TODO Auto-generated method stub
		sessionFactory=new AnnotationConfiguration().configure().buildSessionFactory();

		    session = sessionFactory.openSession();
		    try {
		        session.beginTransaction();
		        session.save(resolve);
		        session.getTransaction().commit();
		        return "Complaint Resolved Successfully";
		    } catch (Exception e) {
		        session.getTransaction().rollback();
		        return "Error: " + e.getMessage();
		    } finally {
		        session.close();
		    }
		}

	@Override
	public List<ResolvedComplaint> showResolves() {
		// TODO Auto-generated method stub
		sessionFactory=new AnnotationConfiguration().configure().buildSessionFactory();
		session=sessionFactory.openSession();
		Query query= session.getNamedQuery("Show Resolved complaint");
		List<ResolvedComplaint> resolveList= query.list();
		return resolveList;
	}

	@Override
	public ResolvedComplaint searchResolveByComplainId(String complaintId) {
		// TODO Auto-generated method stub
		
		sessionFactory= new AnnotationConfiguration().configure().buildSessionFactory();
		session=sessionFactory.openSession();
		Query query=session.getNamedQuery("Resolve complaint");
		query.setParameter("resolveId",resolve(null));
		ResolvedComplaint  resolve =(ResolvedComplaint)query.uniqueResult();
		return resolve;
	}

}
