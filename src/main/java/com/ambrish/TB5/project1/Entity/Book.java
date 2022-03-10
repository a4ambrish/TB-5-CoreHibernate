package com.ambrish.TB5.project1.Entity;

import javax.persistence.*;

@Entity
@Table
public class Book {
    @Id
    @Column
    @GeneratedValue (strategy = GenerationType.AUTO) // sequence
    int bookId;
    @Column
    String bookName;

    public int getBookId() {
        return bookId;
    }

    public void setBookId(int bookId) {
        this.bookId = bookId;
    }

    public String getBookName() {
        return bookName;
    }

    public void setBookName(String bookName) {
        this.bookName = bookName;
    }
}
