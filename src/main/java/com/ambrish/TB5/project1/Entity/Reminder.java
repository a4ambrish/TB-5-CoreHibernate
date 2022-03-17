package com.ambrish.TB5.project1.Entity;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.Date;

/**
 * @author Sumit
 * */
@Entity
@Table(name="path")
public class Reminder {

    @Id
    @Column(name= "id")
    Double Id;
    @Column(name= "date")
    Timestamp Date;
    @Column
    String subject;
    @Column(name= "remdate")
    Timestamp reminderDate;
    @Column(name= "refno")
    String ReferanceNo;
    @Column
    String delable;

    public Double getId() {return Id;}

    public void setId(Double id) {Id = id;}

    public Timestamp getDate() {return Date;}

    public void setDate(Timestamp date) {Date = date;}

    public String getSubject() {return subject;}

    public void setSubject(String subject) {this.subject = subject;}

    public Timestamp getReminderDate() {return reminderDate;}

    public void setReminderDate(Timestamp reminderDate) {this.reminderDate = reminderDate;}

    public String getReferanceNo() {return ReferanceNo;}

    public void setReferanceNo(String referanceNo) {ReferanceNo = referanceNo;}

    public String getDelable() {return delable;}

    public void setDelable(String delable) {this.delable = delable;}
}
