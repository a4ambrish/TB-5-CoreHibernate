package com.ambrish.TB5.project1.Entity;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;
// Author : Piyush Choudhary
@Entity
@Table (name = "journal")
@Data
public class Journal {
    @Id
    @Column
    Double id;
    @Column (name = "jname")
    String jName;
    @Column (name = "volume")
    String volume;
    @Column (name = "part")
    String part;
    @Column (name = "date")
    Date date;
    @Column (name = "pages")
    String pages;

}
