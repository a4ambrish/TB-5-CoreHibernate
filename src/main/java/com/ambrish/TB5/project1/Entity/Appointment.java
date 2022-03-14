package com.ambrish.TB5.project1.Entity;
// Author : Ambrish Jha
// Vahan.nic@gmail.com


import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Data
@Entity
@Table(name = "appo")
public class Appointment {
    @Id
    @Column(name = "id" )
    Double id;
    @Column(name = "conp")
    String conp;
    @Column(name = "dt")
    Date dt;
    @Column
    String tm;
    @Column(name = "stat")
    String status;
    @Column(name = "sub")
    String subject;
    @Column (name = "rem")
    String reminder;
}
