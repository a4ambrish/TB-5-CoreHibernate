package com.ambrish.TB5.project1.Entity;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;


// Author : Arun Kumar
// arun.ruhela22@gmail.com


@Entity
@Table(name = "billdet")
@Data
public class BillDetail {

    @Id
    @Column
    Double id;
    @Column(name="refno")
    Double refNo;
    @Column (name="shortref")
    String shortRef;
    @Column(name="billno")
    Double billNo;
    @Column (name="memono")
    String memoNo;
    @Column (name="date")
    Date date;
    @Column
    String type;
    @Column
    String cat;
    @Column
    String rate;
    @Column
    Double stat;
    @Column(name="amounte")
    Double amountE;
    @Column(name="amountr")
    Double amountR;
    @Column
    String note;
    @Column (name="chdd")
    String chdd;
    @Column
    String mode;
    @Column
    String bank;
    @Column
    String branch;
    @Column (name="date1")
    String date1;
    @Column
    String name;
    @Column(name="clid")
    Double clId;
    @Column
    String billed ;
    @Column
    String det ;
    @Column(name="tobill")
    String  toBill;

}
