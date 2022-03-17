package com.ambrish.TB5.project1.repository;


import com.ambrish.TB5.project1.Entity.Pleading;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PleadingRepository extends CrudRepository<Pleading,Double> {
}
