package com.ambrish.TB5.project1.Entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Max;

@Entity
@Table(name="sstopic")
public class SubSubTopic {


    @Id
    @Column(name = "id" )
    Double Id;

    @Column(name = "topicid" )
    Double topicid;

    @Column(name = "stopicid" )
    Double stopicid;

    @Column(name = "subsubtopic" )
    @Max(150)
    String subsubtopic;

    public Double getStopicid() {
        return stopicid;
    }

    public void setStopicid(Double stopicid) {
        this.stopicid = stopicid;
    }

    public String getSubsubtopic() {
        return subsubtopic;
    }

    public void setSubsubtopic(String subsubtopic) {
        this.subsubtopic = subsubtopic;
    }

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



}
