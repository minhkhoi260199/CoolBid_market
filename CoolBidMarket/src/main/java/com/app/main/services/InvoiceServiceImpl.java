package com.app.main.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.main.models.Invoice;
import com.app.main.repositories.InvoiceRepository;

@Service("invoiceService")
public class InvoiceServiceImpl implements InvoiceService {

	@Autowired
	InvoiceRepository invoiceRepository;
	@Override
	public Iterable<Invoice> findAll() {
		// TODO Auto-generated method stub
		return invoiceRepository.findAll();
	}
	@Override
	public Invoice findById(int id) {
		// TODO Auto-generated method stub
		return invoiceRepository.findById(id).get();
	}
}
