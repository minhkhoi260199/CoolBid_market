package com.app.main.repositories;


import org.springframework.data.repository.query.Param;
import java.util.List;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.app.main.models.Invoice;
import com.app.main.models.Product;

@Repository("invoiceRepository")
public interface InvoiceRepository extends CrudRepository<Invoice, Integer> {
	@Query("from Invoice where auction.product.id = :productId")
	public Invoice getInvoiceByProductId(@Param("productId") int productId);
}
