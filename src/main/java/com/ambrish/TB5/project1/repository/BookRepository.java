package com.ambrish.TB5.project1.repository;

import com.ambrish.TB5.project1.Entity.Book;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface BookRepository extends CrudRepository<Book, Integer> {


    // Custom HQL
}
