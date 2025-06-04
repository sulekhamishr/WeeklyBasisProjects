package com.java.hib;

import java.util.Scanner;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.cfg.Configuration;

public class EmploySearchMain {
	
	public static void main(String[] args) {
		
		// Create a Scanner object to get user input
		int empno;
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter employee number:");
		empno = sc.nextInt();
		
        // Creating the SessionFactory using AnnotationConfiguration (deprecated)

		SessionFactory sf = new AnnotationConfiguration().configure().buildSessionFactory();
		Session session = sf.openSession();
		
        // Create the query and execute it using HQL (Hibernate Query Language)

		Query query = session.createQuery("FROM Employ WHERE empno = " +empno);
		
		// Execute the query and get the result -will return type is object
		Employ employ = (Employ) query.uniqueResult();
		
		// Check if employ is found and print result
		if (employ != null) {
			System.out.println(employ);
		}
	
	}
}
