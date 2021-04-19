package com.app.main.repositories;

import org.springframework.data.repository.CrudRepository;

import com.app.main.models.Invoice;

public interface InvoiceRepository extends CrudRepository<Invoice, Integer> {

}
