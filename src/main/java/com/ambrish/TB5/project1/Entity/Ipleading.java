package com.ambrish.TB5.project1.Entity;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
// Author : Piyush Choudhary
@Entity
@Table (name = "ipleading")
@Data
public class Ipleading {
    @Id
    @Column
    Double id;
    @Column (name = "bno")
    Double bno;
    @Column (name = "appno")
    Double appNo;
    @Column (name = "pltypeid")
    String plTypeID;
    @Column (name = "draft")
    String draft;
    @Column (name = "date")
    String date;
    @Column (name = "pdet")
    String pdet;
}
