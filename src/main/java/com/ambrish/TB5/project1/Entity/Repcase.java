package com.ambrish.TB5.project1.Entity;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;
// Author : Piyush Choudhary
@Entity
@Table (name = "repcase")
@Data
public class Repcase {
    @Id
    @Column (name = "bno")
    Double bno;
    @Column
    Date date;
    @Column
    String note;
}
