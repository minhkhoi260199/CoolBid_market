package com.app.main.services;

import com.app.main.models.Invoice;

public interface InvoiceService {
	public Invoice save(Invoice invoice);
	
	public Invoice getInvoiceByProductId(int productId);
}
