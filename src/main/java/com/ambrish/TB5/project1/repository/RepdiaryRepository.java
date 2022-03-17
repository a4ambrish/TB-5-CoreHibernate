package com.ambrish.TB5.project1.repository;

import com.ambrish.TB5.project1.Entity.Repdiary;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RepdiaryRepository extends CrudRepository<Repdiary,Double> {
}
