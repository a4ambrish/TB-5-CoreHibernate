package com.ambrish.TB5.project1.Entity;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
// Author : Piyush Choudhary
@Entity
@Table (name = "login")
@Data
public class Login {
    @Id
    @Column (name = "password")
    String password;
    @Column (name = "billingpass")
    String billingPass;
}
