package com.ambrish.TB5.project1.repository;

import com.ambrish.TB5.project1.Entity.Library;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface LibraryRepository extends CrudRepository<Library,Double> {
}
