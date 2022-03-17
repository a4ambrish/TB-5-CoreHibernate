package com.ambrish.TB5.project1.Entity;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;
// Author : Piyush Choudhary
@Entity
@Table (name = "introl")
@Data
public class Introl {
    @Id
    @Column (name = "id")
    Double id;
    @Column (name = "bno")
    Double bno;
    @Column (name = "iappno")
    String iappNo;
    @Column (name = "year")
    Double year;
    @Column (name = "court")
    String court;
    @Column (name = "iadate")
    Date iaDate;
    @Column (name = "action")
    String action;
    @Column (name = "didate")
    String diDate;
    @Column (name = "ittype")
    String itType;
    @Column (name = "iclid")
    String iclid;
    @Column (name = "iappstat")
    String iappStat;
    @Column (name = "icoram")
    String icoram;
    @Column (name = "note")
    String note;
    @Column (name = "lprop")
    String lprop;
    @Column (name = "statute")
    String statute;
    @Column (name = "cit")
    String cit;
}
