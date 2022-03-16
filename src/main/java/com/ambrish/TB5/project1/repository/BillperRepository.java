package com.ambrish.TB5.project1.repository;

import com.ambrish.TB5.project1.Entity.Billper;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface BillperRepository extends CrudRepository<Billper, Double> {

}

