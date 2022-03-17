package com.ambrish.TB5.project1.repository;

import com.ambrish.TB5.project1.Entity.Task;
import org.springframework.data.repository.CrudRepository;

public interface TaskRepository extends CrudRepository<Task,Double> {
}
