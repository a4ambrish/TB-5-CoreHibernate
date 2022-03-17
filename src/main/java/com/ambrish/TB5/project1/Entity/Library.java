package com.ambrish.TB5.project1.Entity;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
// Author : Piyush Choudhary
@Entity
@Table (name = "library")
@Data
public class Library {
    @Id
    @Column
    Double id;
    @Column
    String topic;
    @Column (name = "subtopic")
    String subTopic;
    @Column
    String title;
    @Column
    String author;
    @Column
    String publisher;
    @Column
    Double year;
    @Column
    String edition;
    @Column
    String rack;
    @Column (name = "soldby")
    String soldBy;
    @Column (name="soldon")
    String soldOm;
    @Column
    Double price;
    @Column
    String det;
    @Column
    String discard;
}
