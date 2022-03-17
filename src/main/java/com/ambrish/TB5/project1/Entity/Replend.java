package com.ambrish.TB5.project1.Entity;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;
// Author : Piyush Choudhary
@Entity
@Table (name = "replend")
@Data
public class Replend {
    @Id
    @Column
    Double id;
    @Column
    String type;
    @Column
    Date date;
    @Column (name = "det")
    String Detail;
}
