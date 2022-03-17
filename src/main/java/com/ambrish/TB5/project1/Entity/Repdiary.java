package com.ambrish.TB5.project1.Entity;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;
// Author : Piyush Choudhary
@Entity
@Table (name = "repdiary")
@Data
public class Repdiary {
    @Id
    @Column
    Double id;
    @Column (name = "bno")
    Double bno;
    @Column (name = "appno")
    String appNo;
    @Column
    Date date;
    @Column
    String court;
    @Column
    String coram;
    @Column
    String courtno;
    @Column
    String time;
    @Column
    String item;
}
