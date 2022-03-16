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
@Table(name="billmst")
@Data
public class BillMaster {
    @Id
    @Column (name="billno")
    Double billNo;
    @Column (name="billdt")
    Date billDate;
    @Column
    String billsdt;
    @Column (name="billpaid")
    String billPaid;
    @Column (name="refno")
    Double refNo;
    @Column (name="clid")
    Double clId;
    @Column (name="shortref")
    String shortRef;
    @Column
    Double amte;
    @Column
    Double amtr;
    @Column (name="words")
    String amountInWords;


}
