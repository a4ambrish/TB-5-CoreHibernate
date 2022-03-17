package com.ambrish.TB5.project1.repository;

import com.ambrish.TB5.project1.Entity.Reminder;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ReminderRepository extends CrudRepository<Reminder,Double> {
}
