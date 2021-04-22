package com.app.main.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.main.models.Invoice;
import com.app.main.repositories.InvoiceRepository;

@Service("invoiceService")
public class InvoiceServiceImpl implements InvoiceService {

	@Autowired
	InvoiceRepository invoiceServiceImpl;
	@Override
	public Invoice save(Invoice invoice) {
		// TODO Auto-generated method stub
		return invoiceServiceImpl.save(invoice);
	}
	@Override
	public Invoice getInvoiceByProductId(int productId) {
		// TODO Auto-generated method stub
		return invoiceServiceImpl.getInvoiceByProductId(productId);
	}

	
}
