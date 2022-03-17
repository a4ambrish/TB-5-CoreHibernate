package com.ambrish.TB5.project1.Entity;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;
// Author : Piyush Choudhary
@Entity
@Table (name = "opassed")
@Data
public class Opassed {
    @Id
    @Column
    Double id;
    @Column
    Double bno;
    @Column (name="orderdt")
    Date orderDate;
    @Column (name = "coram")
    String coram;
    @Column (name = "note")
    String note;
    @Column (name = "ccopy")
    String cCopy;
    @Column (name = "fpled")
    String fpLed;
    @Column (name = "corder")
    String cOrder;
    @Column (name = "ndate")
    String nDate;
    @Column (name = "exdate")
    String exDate;
}
