package com.ambrish.TB5.project1.Entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="statute")
public class Statute {


    @Id
    @Column(name="statid")
    Double statid;

    @Column
    String actno;

    @Column
    String actyr;

    @Column
    String stat;

    @Column
    String actnm;

    @Column
    String status;

    @Column
    String type;

    @Column
    String damen;

    @Column
    String dstat;

    public Double getStatid() {
        return statid;
    }

    public void setStatid(Double statid) {
        this.statid = statid;
    }

    public String getActno() {
        return actno;
    }

    public void setActno(String actno) {
        this.actno = actno;
    }

    public String getActyr() {
        return actyr;
    }

    public void setActyr(String actyr) {
        this.actyr = actyr;
    }

    public String getStat() {
        return stat;
    }

    public void setStat(String stat) {
        this.stat = stat;
    }

    public String getActnm() {
        return actnm;
    }

    public void setActnm(String actnm) {
        this.actnm = actnm;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getDamen() {
        return damen;
    }

    public void setDamen(String damen) {
        this.damen = damen;
    }

    public String getDstat() {
        return dstat;
    }

    public void setDstat(String dstat) {
        this.dstat = dstat;
    }



}
