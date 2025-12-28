package com.project.dao;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.project.model.Resident;
import util.HibernateUtil;

public class ResidentDao {

    public void saveResident(Resident resident) {

        Session session = null;
        Transaction tx = null;

        try {
            session = HibernateUtil.getSessionFactory().openSession();
            tx = session.beginTransaction();
            session.persist(resident);
            tx.commit();
        } catch (Exception e) {
            if (tx != null) tx.rollback();
            e.printStackTrace();
        } 
    }

    public Resident getValidUser(String username, String password) {

        Session session = null;
        Resident resident = null;

        try {
            session = HibernateUtil.getSessionFactory().openSession();

            String hql = "FROM Resident r WHERE r.username = :username AND r.password = :password";
            Query<Resident> query = session.createQuery(hql, Resident.class);
            query.setParameter("username", username);
            query.setParameter("password", password);

            resident = query.uniqueResult();

        } catch (Exception e) {
            e.printStackTrace();
        } 
        
        return resident;
    }
    
    public Resident getResidentById(int resId) {

        Session session = HibernateUtil.getSessionFactory().openSession();
        Resident resident = session.get(Resident.class, resId);
        session.close();

        return resident;
    }

}
