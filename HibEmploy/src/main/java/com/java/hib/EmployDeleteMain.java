package com.java.hib;

import java.util.Scanner;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class EmployDeleteMain {

    public static void main(String[] args) {
        int empno;
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter employee number to delete:");
        empno = sc.nextInt();

        // Use modern Configuration class
        SessionFactory sf = new Configuration().configure().buildSessionFactory();
        Session session = sf.openSession();

        // Use parameterized query to avoid injection
        Query query = session.createQuery("FROM Employ WHERE empno = :empno");
        query.setParameter("empno", empno);
        Employ employ = (Employ) query.uniqueResult();

        if (employ != null) {
            Transaction trans = session.beginTransaction();
            session.delete(employ);
            trans.commit();
            System.out.println("Employee record deleted.");
        } else {
            System.out.println("Employee not found. Record not deleted.");
        }


    }
}
