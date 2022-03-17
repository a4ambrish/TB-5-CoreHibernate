package com.ambrish.TB5.project1.Entity;

import javax.persistence.*;
/**
 * @author Sumit
 * */
@Entity
@Table(name="regist")
public class Regist {

    @Id
    @Column(name= "name")
    String Name;
    @Column(name="add")
    String Address;
    @Column(name="phone")
    String PhoneNo;
    @Column(name="refno")
    Double referenceNo;
    @Column
    String pan;
    @Column(name="bank")
    String Bank;
    @Column(name="note")
    String Note;

    public String getName() {return Name;}

    public void setName(String name) {Name = name;}

    public String getAddress() {return Address;}

    public void setAddress(String address) {Address = address;}

    public String getPhoneNo() {return PhoneNo;}

    public void setPhoneNo(String phoneNo) {PhoneNo = phoneNo;}

    public Double getReferenceNo() {return referenceNo;}

    public void setReferenceNo(Double referenceNo) {this.referenceNo = referenceNo;}

    public String getPan() {return pan;}

    public void setPan(String pan) {this.pan = pan;}

    public String getBank() {return Bank;}

    public void setBank(String bank) {Bank = bank;}

    public String getNote() {return Note;}

    public void setNote(String note) {Note = note;}
}
