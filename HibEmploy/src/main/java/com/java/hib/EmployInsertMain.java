package com.java.hib;

import java.util.Scanner;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;

public class EmployInsertMain {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		Employ employ = new Employ();
		System.out.println("ENTER EMPLOY NUMBER");
		employ.setEmpno(sc.nextInt());
		System.out.println("ENTER NAME");
		employ.setName(sc.next());
		System.out.println("Enter Gender(MALE/FEMALE)");
		employ.setGender(sc.next());
		System.out.println("Enter DEPARTMENT");
		employ.setDept(sc.next());
		System.out.println("Enter DESIGNATION");
		employ.setDesig(sc.next());
		System.out.println("Enter BASIC");
		employ.setBasic(sc.nextDouble());
		SessionFactory sf = new AnnotationConfiguration().configure().buildSessionFactory();
		Session session = sf.openSession();
		System.out.println(employ);
		Transaction trans= session.beginTransaction();
        session.save(employ);
        trans.commit();
        System.out.println("EMPLOY RECORD INSERTED");

		
	}
}
