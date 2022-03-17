package com.ambrish.TB5.project1.Entity;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;
// Author : Piyush Choudhary
@Entity
@Table (name="lend")
@Data
public class Lend {
    @Id
    @Column (name = "id")
    Double id;
    @Column (name = "bname")
    String bName;
    @Column (name = "name")
    String name;
    @Column (name = "type")
    String type;
    @Column (name = "rdt")
    Date rDate;
}
