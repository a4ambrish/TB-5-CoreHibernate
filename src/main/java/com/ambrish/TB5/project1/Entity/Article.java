package com.ambrish.TB5.project1.Entity;


import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/***
 * @author ambrish
 */

@Entity
@Table(name="article")
@Data
public class Article {
    @Id
    @Column
    Double cla;
    @Column
    String topic;
    @Column
    String rupon;
    @Column (name = "subtopic")
    String subTopic;
    @Column (name = "actnm")
    String actName;
    @Column (name = "sec")
    String section;
    @Column
    String author;
    @Column
    String published;
    @Column
    String synopsis;

}
