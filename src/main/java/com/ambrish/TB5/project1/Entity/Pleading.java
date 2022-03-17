package com.ambrish.TB5.project1.Entity;

import javax.persistence.*;
/**
 * @author Sumit
 * */
@Entity
@Table(name="pleading")
public class Pleading {

   @Id
   @Column(name= "id")
   @GeneratedValue(strategy = GenerationType.AUTO)
   Double Id;
   @Column(name= "bno")
   Double bNo;
   @Column(name="pltypeid")
   String plTypeId;
   @Column(name= "draft")
   String Draft;
   @Column(name= "date")
   String Date;
   @Column(name= "pdet")
   String pDet;

   public Double getId() {return Id;}

   public void setId(Double id) {Id = id;}

   public Double getbNo() {return bNo;}

   public void setbNo(Double bNo) {this.bNo = bNo;}

   public String getPlTypeId() {return plTypeId;}

   public void setPlTypeId(String plTypeId) {this.plTypeId = plTypeId;}

   public String getDraft() {return Draft;}

   public void setDraft(String draft) {Draft = draft;}

   public String getDate() {return Date;}

   public void setDate(String date) {Date = date;}

   public String getpDet() {return pDet;}

   public void setpDet(String pDet) {this.pDet = pDet;}
}
