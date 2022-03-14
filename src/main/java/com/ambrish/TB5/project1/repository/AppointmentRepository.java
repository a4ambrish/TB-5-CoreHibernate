package com.ambrish.TB5.project1.repository;

import com.ambrish.TB5.project1.Entity.Appointment;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface AppointmentRepository extends CrudRepository <Appointment, Double> {
}
