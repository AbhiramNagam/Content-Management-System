package com.example.data;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

public class Query {
    private SessionFactory factory;
    private Session session;
    private Transaction tx;
    public Query() {
        factory = conn.getFactory();
        session = factory.openSession();
    }

    public Category getCategoryById(Long id) {
        tx = session.beginTransaction();
        Category category = session.get(Category.class, id);
        tx.commit();
        session.close();
        return category;
    }

    public User getUserById(String username) {
        tx = session.beginTransaction();
        System.out.println("username: " + username);
        User user = session.get(User.class, username);
        tx.commit();
        session.close();
        return user;
    }

}
