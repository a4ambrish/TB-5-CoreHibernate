package com.ambrish.TB5.project1.Entity;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;
// Author : Piyush Choudhary
@Entity
@Table (name = "iopassed")
@Data
public class Iopassed {
    @Id
    @Column
    Double id;
    @Column (name = "bno")
    Double bno;
    @Column (name = "appno")
    Double appNo;
    @Column (name = "orderdt")
    Date orderDate;
    @Column (name = "coram")
    String coram;
    @Column (name = "note")
    String note;
    @Column (name = "ccopy")
    String ccopy;
    @Column (name = "fpled")
    String fpled;
    @Column (name = "corder")
    String corder;
    @Column (name = "ndate")
    String ndate;
    @Column (name = "exdate")
    String exdate;
}
