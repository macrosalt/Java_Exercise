package org.example;

import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.classic.Session;

import java.util.HashMap;
import java.util.Map;

public class Main
{
    public static void main(String[] args)
    {
        Configuration cfg=new Configuration();
        cfg.configure("Hibernate-cfg.xml");
        System.out.println("Configuration Object Created Successfully");
        SessionFactory sf=cfg.buildSessionFactory();
        System.out.println("Session Factory Object is Created");
        Session s=sf.openSession();
        Transaction t=s.beginTransaction();

        // test
        Map<String, Address> l=new HashMap<>();
        Address ad1=new Address("1", "New York");
        Address ad2=new Address("2", "Los Angeles");
        Address ad3=new Address("9", "Seattle");
        l.put("current", ad3);
//        l.put("want", ad2);
        Emp emp = new Emp("102", "Peter", l);
        s.persist(emp);
        t.commit();
        s.close();
        sf.close();
    }
}