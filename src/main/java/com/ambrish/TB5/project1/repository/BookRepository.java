package com.ambrish.TB5.project1.repository;

import com.ambrish.TB5.project1.Entity.Book;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.Collection;
import java.util.Optional;

@Repository
public interface BookRepository extends CrudRepository<Book, Integer> {

// HQL + JPQL + Native SQL

// query DSL
Iterable<Book> findBookByBookNameContainsOrderByBookIdDesc(String search);

Optional<Book> findBookByBookNameEndsWith(String search);
Iterable<Book> findBookByBookIdGreaterThanAndBookIdLessThanEqualOrderByBookId(int a ,int b); // Framming using DSL

    @Query("SELECT b FROM Book b WHERE b.bookId> :a and b.bookId <= :b")  // Define your query / HQL
    Collection<Book> getMyBooksByBookIdRange(@Param("a") int a ,@Param("b")int b); // Non DSL


    @Query(value="select book_id, book_name  from book  where book_id>:a and book_id<=:b"
            ,nativeQuery = true)
        // Define your Native SQL

    Collection<Book> getMyBooksByBookIdRangeNativeSQL(@Param("a") int a ,@Param("b")int b); // Non DSL


}
