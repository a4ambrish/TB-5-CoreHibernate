package com.ambrish.TB5.project1.Entity;

import lombok.Data;
import org.hibernate.annotations.Check;

import org.hibernate.validator.constraints.Length;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Email;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

@Entity
@Table(name="billm")
@Data

public class BillM {
    @Id
    @Column
    Double id;

    @Column
    @NotNull(message = "This can not will null")

            @Length(min = 2,max = 50,message = "invalid book name length")

    String type;

    @Column(name="cat")
    String cat;

    @Column(name="amt")
    @NotNull
    Double amount;

    @Column
    @Email(message = "Invalid Email Id ")
    String note;
}
