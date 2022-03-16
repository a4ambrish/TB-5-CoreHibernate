package com.ambrish.TB5.project1.Entity;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

/***
 * @author arun
 */

@Entity
@Table
@Data

public class Billper {
    @Id
    @Column(name="aid")
    Double aid;
    @Column
    String actype;
    @Column
    String head;
    @Column
    Date date;
    @Column
    Double bamt;
    @Column
    Double stat;
    @Column
    Double amt;
    @Column
    String mode;
    @Column
    String bank;
    @Column
    String branch;
    @Column
    String chdd;
    @Column
    String date1;
    @Column
    String name;
    @Column (name="add")
    String address;
    @Column
    String note;

}
