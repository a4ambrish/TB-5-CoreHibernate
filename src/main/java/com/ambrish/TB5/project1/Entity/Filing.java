package com.ambrish.TB5.project1.Entity;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

// Author : Piyush Choudhary
// piyushchoudharygi@gmail.com

@Entity
@Table (name = "filing")
@Data
public class Filing {
    @Id
    @Column (name = "fid")
    Double fid;
    @Column (name = "bno")
    Double bno;
    @Column (name = "type")
    String type;
    @Column (name = "acom")
    String acom;
    @Column(name = "fdt")
    Date fdate;
    @Column (name = "no")
    String no;
}
