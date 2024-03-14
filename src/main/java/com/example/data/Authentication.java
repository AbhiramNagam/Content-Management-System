package com.example.data;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

public class Authentication {

    public static boolean authenticate(String username, String password) {
        SessionFactory factory = conn.getFactory();
        Transaction tx = null;
        Session session = factory.openSession();
            tx = session.beginTransaction();
            User user = session.get(User.class, username);
            System.out.println(" for username: " + user.getUsername() + " and password: " + user.getPasswordHash());
            if (user.getPasswordHash().equals(password)) {
                return true;
            }
            tx.commit();

        return false;
    }
}
