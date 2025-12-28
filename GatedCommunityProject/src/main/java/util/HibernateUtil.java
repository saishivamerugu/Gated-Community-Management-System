package util;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.project.model.Complaint;
import com.project.model.Resident;


public class HibernateUtil {

	private static SessionFactory sessionFactory = null;
	
	public static SessionFactory  getSessionFactory() {
		
		if(sessionFactory == null) {
		Configuration config = new Configuration();
		config.configure ("hibernate.cfg.xml");
		config.addAnnotatedClass(Resident.class);
		config.addAnnotatedClass(Complaint.class);
		sessionFactory = config.buildSessionFactory();
		return sessionFactory;
		}
		return sessionFactory;
		
	}
}
