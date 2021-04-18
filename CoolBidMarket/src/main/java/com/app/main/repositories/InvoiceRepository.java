package com.app.main.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.app.main.models.Invoice;
import com.app.main.models.Product;

@Repository("invoiceRepository")
public interface InvoiceRepository extends CrudRepository<Invoice, Integer> {

}
