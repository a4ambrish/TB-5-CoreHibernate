package com.ambrish.TB5.project1.Entity;

import javax.persistence.*;
/**
 * @author Sumit
 * */
@Entity
@Table(name="proposition")
public class Proposition {

    @Id
    @Column(name= "clp")
    @GeneratedValue(strategy = GenerationType.AUTO)
    Double clp;
    @Column
    String topic;
    @Column
    String rupon;
    @Column(name="subtopic")
    String subTopic;
    @Column(name="actnm")
    String actName;
    @Column(name="sec")
    String section;
    @Column
    String proposit;
    @Column
    String reference;
    @Column
    String principle;

    public Double getClp() {return clp;}

    public void setClp(Double clp) {this.clp = clp;}

    public String getTopic() {return topic;}

    public void setTopic(String topic) {
        this.topic = topic;
    }

    public String getRupon() {return rupon;}

    public void setRupon(String rupon) {this.rupon = rupon;}

    public String getSubTopic() {return subTopic;}

    public void setSubTopic(String subTopic) {this.subTopic = subTopic;}

    public String getActName() {return actName;}

    public void setActName(String actName) {this.actName = actName;}

    public String getSection() {return section;}

    public void setSection(String section) {this.section = section;}

    public String getProposit() {return proposit;}

    public void setProposit(String proposit) {this.proposit = proposit;}

    public String getReference() {return reference;}

    public void setReference(String reference) {this.reference = reference;}

    public String getPrinciple() {return principle;}

    public void setPrinciple(String principle) {this.principle = principle;}
}
