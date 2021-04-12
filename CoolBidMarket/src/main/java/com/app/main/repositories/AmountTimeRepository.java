package com.app.main.repositories;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.app.main.models.AmountTime;

public interface AmountTimeRepository extends CrudRepository<AmountTime, Integer> {

}
