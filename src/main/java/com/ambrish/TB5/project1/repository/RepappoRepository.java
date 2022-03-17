package com.ambrish.TB5.project1.repository;

import com.ambrish.TB5.project1.Entity.Repappo;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RepappoRepository extends CrudRepository<Repappo,Double> {
}
