package com.ambrish.TB5.project1.Entity;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
// Author : Piyush Choudhary
@Entity
@Table (name = "repcit")
@Data
public class Repcit {
    @Id
    @Column
    Double id;
    @Column
    String note;
}
