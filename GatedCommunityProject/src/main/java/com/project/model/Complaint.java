package com.project.model;

import jakarta.persistence.*;

@Entity
@Table(name = "complaint")
public class Complaint {


    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int complaintId;

    private int userId;

    @Column(length = 255)
    private String subject;

    private String category;

    @Column(columnDefinition = "TEXT")
    private String description;

    private String status;

    public int getComplaintId() {
        return complaintId;
    }

    public void setComplaintId(int complaintId) {
        this.complaintId = complaintId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
