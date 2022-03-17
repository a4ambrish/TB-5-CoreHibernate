package com.ambrish.TB5.project1.Entity;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
// Author : Piyush Choudhary
@Entity
@Table (name = "stopic")
@Data
public class Stopic {
    @Id
    @Column
    Double id;
    @Column (name = "topicid")
    String topicId;
    @Column (name = "subtopic")
    String subTopic;

}
