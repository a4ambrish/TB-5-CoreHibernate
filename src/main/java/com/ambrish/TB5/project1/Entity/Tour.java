package com.ambrish.TB5.project1.Entity;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Max;
import java.sql.Date;

@Entity
@Table(name="tour")
public class Tour {

    @Id
    @Column(name = "id" )
    Double id;

    @Column(name = "frdt")
    Date frdt;

    @Column(name = "todt")
    Date todt;

    @Column
    @Max(150)
    String place;

    @Column
    @Max(250)
    String purpose;


    public Double getId() {
        return id;
    }

    public void setId(Double id) {
        this.id = id;
    }

    public Date getFrdt() {
        return frdt;
    }

    public void setFrdt(Date frdt) {
        this.frdt = frdt;
    }

    public Date getTodt() {
        return todt;
    }

    public void setTodt(Date todt) {
        this.todt = todt;
    }

    public String getPlace() {
        return place;
    }

    public void setPlace(String place) {
        this.place = place;
    }

    public String getPurpose() {
        return purpose;
    }

    public void setPurpose(String purpose) {
        this.purpose = purpose;
    }
}
