package com.ambrish.TB5.project1.Entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.security.Timestamp;

/**
 * @author Sumit
 * */

@Entity
@Table(name="repappo")
public class Repappo {


    @Id
    @Column(name= "id")
    Double Id;
    @Column(name= "name")
    String Name;
    @Column(name= "date")
    Timestamp Date;
    @Column(name= "det")
    String det;
    @Column(name= "time")
    String time;
    @Column(name= "stat")
    String Status;

    public Double getId() {return Id;}

    public void setId(Double id) {Id = id;}

    public String getName() {return Name;}

    public void setName(String name) {Name = name;}

    public Timestamp getDate() {return Date;}

    public void setDate(Timestamp date) {Date = date;}

    public String getDet() {return det;}

    public void setDet(String det) {this.det = det;}

    public String getTime() {return time;}

    public void setTime(String time) {this.time = time;}

    public String getStatus() {return Status;}

    public void setStatus(String status) {Status = status;}
}
