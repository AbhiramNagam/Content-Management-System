package com.example.data;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

public class Persist {
    private SessionFactory factory;
    private Session session;
    private Transaction tx;
    public Persist() {
        factory = conn.getFactory();
        session = factory.openSession();
        tx = session.beginTransaction();
    }
    public boolean save(Object object) {
        try {
            session.persist(object);
            tx.commit();
            session.close();
            return true;
        } catch (Exception e) {
            e.fillInStackTrace();
            return false;
        }
    }

    public boolean update(Object object) {
        try {
            session.update(object);
            tx.commit();
            session.close();
            return true;
        } catch (Exception e) {
            e.fillInStackTrace();
            return false;
        }
    }
}
