package com.java.hib;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;

public class EmployShowMain {
	
	
	public static void main(String[] args) {
		
        // Creating SessionFactory using Configuration (not AnnotationConfiguration)

		SessionFactory sf= new AnnotationConfiguration().configure().buildSessionFactory();
		System.out.println("Connected");
		
		
        // Opening a session

		Session session =sf.openSession();
		
        // Query to get list of all Employ entities

		Query query =session.createQuery("from Employ");
        // Displaying the results

		List<Employ> employList= query.list();
		
		
		for(Employ employ :employList) {
			System.out.println(employ);
		}
	}

}
