package com.ambrish.TB5.project1.Entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Max;

@Entity
@Table(name="stopic")
public class SubTopic {


    @Id
    @Column(name = "id" )
    Double Id;

    @Column(name = "topicid" )
    Double topicid;

    @Column(name = "subtopic" )
    @Max(150)
    String subtopic;


    public Double getId() {
        return Id;
    }

    public void setId(Double id) {
        Id = id;
    }

    public Double getTopicid() {
        return topicid;
    }

    public void setTopicid(Double topicid) {
        this.topicid = topicid;
    }

    public String getSubtopic() {
        return subtopic;
    }

    public void setSubtopic(String subtopic) {
        this.subtopic = subtopic;
    }


}
