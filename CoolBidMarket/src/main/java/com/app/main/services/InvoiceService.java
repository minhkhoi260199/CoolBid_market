package com.app.main.services;

import com.app.main.models.Invoice;

public interface InvoiceService {
	
	public Iterable<Invoice> findAll();
	public Invoice findById(int id);
	
}
