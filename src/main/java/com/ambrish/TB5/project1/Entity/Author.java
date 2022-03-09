package com.ambrish.TB5.project1.Entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="author_table")
public class Author {
    @Id
            @Column(name="author_code")
    int authorId;
    @Column
    String authorName;
    @Column
    String authorAddress;
    @Column
    String authorAddressPincode;
    @Column
    String nationality;

    public int getAuthorId() {
        return authorId;
    }

    public void setAuthorId(int authorId) {
        this.authorId = authorId;
    }

    public String getAuthorName() {
        return authorName;
    }

    public void setAuthorName(String authorName) {
        this.authorName = authorName;
    }

    public String getAuthorAddress() {
        return authorAddress;
    }

    public void setAuthorAddress(String authorAddress) {
        this.authorAddress = authorAddress;
    }

    public String getAuthorAddressPincode() {
        return authorAddressPincode;
    }

    public void setAuthorAddressPincode(String authorAddressPincode) {
        this.authorAddressPincode = authorAddressPincode;
    }

    public String getNationality() {
        return nationality;
    }

    public void setNationality(String nationality) {
        this.nationality = nationality;
    }
}
