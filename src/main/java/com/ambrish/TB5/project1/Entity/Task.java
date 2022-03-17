package com.ambrish.TB5.project1.Entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Max;
import java.sql.Date;

@Entity
@Table(name="task")
public class Task {

    @Id
    @Column(name = "id" )
    Double Id;

    @Column
    @Max(250)
    String type;

    @Column
    @Max(50)
    String stat;

    @Column
    Date dt;

    @Column
    @Max(150)
    String assto;

    @Column
    @Max(250)
    String sub;

    @Column
    @Max(25)
    String rem;

    public Double getId() {
        return Id;
    }

    public void setId(Double id) {
        Id = id;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getStat() {
        return stat;
    }

    public void setStat(String stat) {
        this.stat = stat;
    }

    public Date getDt() {
        return dt;
    }

    public void setDt(Date dt) {
        this.dt = dt;
    }

    public String getAssto() {
        return assto;
    }

    public void setAssto(String assto) {
        this.assto = assto;
    }

    public String getSub() {
        return sub;
    }

    public void setSub(String sub) {
        this.sub = sub;
    }

    public String getRem() {
        return rem;
    }

    public void setRem(String rem) {
        this.rem = rem;
    }


}
