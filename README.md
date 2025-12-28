#  Gated Community Management System

A web-based application developed using **JSP, Servlets, Hibernate, and MySQL** to manage complaints and residents in a gated community.  
The system supports **role-based access** for **Residents** and **Admins**, enabling smooth complaint handling and administration.

---

## 📌 Features

### 👤 Resident
- Secure login & logout
- Register as a resident
- Raise new complaints
- View all submitted complaints
- View solved complaints
- View personal profile details

### 🛠️ Admin
- Secure admin login
- View all complaints from residents
- Update complaint status:
  - OPEN
  - PENDING
  - COMPLETED
- Manage complaint lifecycle

---

## 🧱 Tech Stack

| Layer | Technology |
|-----|-----------|
Frontend | JSP, HTML, CSS |
Backend | Java, Servlets |
ORM | Hibernate |
Database | MySQL |
Server | Apache Tomcat 10 |
JDK | Java 17+ |

---

## 🗂️ Project Structure

```

GatedCommunityProject/
│
├── src/main/java
│   ├── com.project.model
│   │   ├── Resident.java
│   │   └── Complaint.java
│   │
│   ├── com.project.dao
│   │   ├── ResidentDao.java
│   │   └── ComplaintDao.java
│   │
│   ├── com.project.servlet
│   │   ├── LoginServlet.java
│   │   ├── LogoutServlet.java
│   │   ├── RegisterServlet.java
│   │   ├── RaiseComplaintServlet.java
│   │   ├── MyComplaintsServlet.java
│   │   ├── SolvedComplaintsServlet.java
│   │   ├── ProfileServlet.java
│   │   ├── AdminDashboardServlet.java
│   │   └── UpdateComplaintStatusServlet.java
│
├── src/main/webapp
│   ├── index.jsp
│   ├── login.jsp
│   ├── register.jsp
│   ├── UserDashboard.jsp
│   ├── AdminDashboard.jsp
│   ├── raiseComplaint.jsp
│   ├── myComplaints.jsp
│   ├── solvedComplaints.jsp
│   └── profile.jsp
│
└── hibernate.cfg.xml

````

---

## 🔐 User Roles

### Resident
- Role value: `RESIDENT`
- Can only access their own data

### Admin
- Role value: `ADMIN`
- Can access all complaints
- Can update complaint status

---

## 🧪 Sample Admin Account (Insert Once)

```sql
INSERT INTO resident (username, password, email, phone, role, roomNum)
VALUES ('admin', 'admin123', 'admin@gated.com', '9999999999', 'ADMIN', 'ADMIN');
````

---

## ▶️ How to Run the Project

1. Clone or download the project
2. Import into **Eclipse / IntelliJ (Dynamic Web Project)**
3. Configure **Apache Tomcat 10**
4. Update **MySQL credentials** in `hibernate.cfg.xml`
5. Create database:

   ```sql
   CREATE DATABASE GatedCommunity;
   ```
6. Run the project on Tomcat
7. Open in browser:

   ```
   http://localhost:8081/GatedCommunityProject/
   ```

---

## 🔒 Security

* Session-based authentication
* Role-based access control
* Protected routes for Admin and Resident
* Session invalidation on logout



## 👨‍💻 Developed By

**Sai Shiva**
Java Backend & Full Stack Developer
