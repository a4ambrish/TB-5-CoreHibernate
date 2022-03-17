package com.ambrish.TB5.project1.Entity;

import lombok.Data;
import lombok.extern.apachecommons.CommonsLog;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;
// Author : Piyush Choudhary
@Entity
@Table (name = "ifiling")
@Data
public class Ifiling {
    @Id
    @Column (name = "fid")
    Double fid;
    @Column (name = "bno")
    Double bno;
    @Column (name = "appno")
    Double appNo;
    @Column
    String type;
    @Column (name = "acom")
    String acom;
    @Column (name = "fdt")
    Date fdate;
    @Column (name = "no")
    String no;

}
