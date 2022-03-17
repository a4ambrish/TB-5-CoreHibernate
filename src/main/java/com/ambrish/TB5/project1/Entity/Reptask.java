package com.ambrish.TB5.project1.Entity;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;
// Author : Piyush Choudhary
@Entity
@Table (name = "reptask")
@Data
public class Reptask {
    @Id
    @Column
    Double id;
    @Column
    Date date;
    @Column
    String type;
    @Column (name = "det")
    String detail;
    @Column
    String stat;
    @Column (name = "assto")
    String assTo;

}
