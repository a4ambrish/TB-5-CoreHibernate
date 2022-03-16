package com.ambrish.TB5.project1.Entity;

import org.hibernate.validator.constraints.Length;

import javax.persistence.*;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

@Entity
@Table
public class Book {
    @Id
    @Column
    @GeneratedValue (strategy = GenerationType.AUTO) // sequence
    int bookId;

    @Column (length = 3)
    @NotNull
    @Length(min = 2,max = 50,message = "Invalid book name length")
            //      @Min(value = 2,message = "Book name is too short")
        //    @Max(value = 50, message = "Book Name is too large")
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
