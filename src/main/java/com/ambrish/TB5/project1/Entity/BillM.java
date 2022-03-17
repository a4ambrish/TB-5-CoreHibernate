package com.ambrish.TB5.project1.Entity;

import lombok.Data;
import org.hibernate.annotations.Check;
<<<<<<< HEAD
=======
import org.hibernate.validator.constraints.Length;
>>>>>>> 6db86474e6f969dae06bd9abc783d2c09c512a6b

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
<<<<<<< HEAD
=======
            @Length(min = 2,max = 50,message = "invalid book name length")
>>>>>>> 6db86474e6f969dae06bd9abc783d2c09c512a6b
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
