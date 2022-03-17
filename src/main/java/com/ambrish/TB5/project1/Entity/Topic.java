package com.ambrish.TB5.project1.Entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Max;

@Entity
@Table(name="topic")
public class Topic {


    @Id
    @Column(name = "topicid" )
    Double topicId;

    @Column
    @Max(150)
    String det;

    public Double getTopicId() {
        return topicId;
    }

    public void setTopicId(Double topicId) {
        this.topicId = topicId;
    }

    public String getDet() {
        return det;
    }

    public void setDet(String det) {
        this.det = det;
    }

}
