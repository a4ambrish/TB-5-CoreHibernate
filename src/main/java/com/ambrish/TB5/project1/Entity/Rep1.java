package com.ambrish.TB5.project1.Entity;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
// Author : Piyush Choudhary
@Entity
@Table (name = "rep1")
@Data
public class Rep1 {
    @Id
    @Column
    Double id;
    @Column
    String client;
}
