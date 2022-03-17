package com.ambrish.TB5.project1.repository;

import com.ambrish.TB5.project1.Entity.Rep1;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface Rep1Repository extends CrudRepository<Rep1,Double> {
}
