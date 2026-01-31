package com.project.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.project.model.Complaint;
import util.HibernateUtil;
import org.hibernate.query.Query;


public class ComplaintDao {

    public void saveComplaint1(Complaint complaint) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = session.beginTransaction();
        session.persist(complaint);
        tx.commit();
        session.close();
    }
    
    public List<Complaint> getComplaintsByUserId(int userId) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        String hql = "FROM Complaint WHERE userId = :uid ORDER BY complaintId DESC";
        Query<Complaint> query = session.createQuery(hql, Complaint.class);
        query.setParameter("uid", userId);
        List<Complaint> list = query.list();
        session.close();
        System.out.println(list);
        return list;
    }
    
    
    public List<Complaint> getSolvedComplaintsByUserId(int userId) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        String hql = "FROM Complaint WHERE userId = :uid AND status = 'COMPLETED' ORDER BY complaintId DESC";
        Query<Complaint> query = session.createQuery(hql, Complaint.class);
        query.setParameter("uid", userId);
        List<Complaint> list = query.list();
        session.close();
        return list;
    }
    
    public void saveComplaint(Complaint complaint) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = session.beginTransaction();
        session.persist(complaint);
        tx.commit();
        session.close();
    }

    public List<Complaint> getAllComplaints() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        List<Complaint> list =
            session.createQuery("FROM Complaint ORDER BY complaintId DESC",Complaint.class).list();
        session.close();
        return list;
    }

    public void updateComplaintStatus(int complaintId, String status) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = session.beginTransaction();

        Complaint c = session.get(Complaint.class, complaintId);
        if (c != null) {
            c.setStatus(status);
        }

        tx.commit();
        session.close();
    }

}

