package com.ambrish.TB5.project1.repository;

import com.ambrish.TB5.project1.Entity.Repcit;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RepcitRepository extends CrudRepository<Repcit,Double> {
}
