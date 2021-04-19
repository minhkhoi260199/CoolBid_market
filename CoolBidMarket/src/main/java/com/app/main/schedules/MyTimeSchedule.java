package com.app.main.schedules;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.TimeZone;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import com.app.main.models.Auction;
import com.app.main.models.Invoice;
import com.app.main.models.Product;
import com.app.main.models.Status;
import com.app.main.services.AuctionService;
import com.app.main.services.InvoiceService;
import com.app.main.services.ProductService;
import com.app.main.services.StatusService;

@Component
public class MyTimeSchedule {
	
	@Autowired
	ProductService productService;
	@Autowired
	InvoiceService invoiceService;
	@Autowired
	StatusService statusService;
	@Autowired
	AuctionService auctionService;
	@Scheduled(fixedDelay = 30000)
	public void taskAutoCompleteAuction() {
		TimeZone.setDefault(TimeZone.getTimeZone("GMT+7:00"));
		System.out.println("Task ran");
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String dateTime = simpleDateFormat.format(new Date());
		System.out.println(dateTime);
		List<Product> products = productService.findAllAvailableProductByDate(dateTime);
		
		for(Product product : products) {			
			System.out.println(product.getName());
			TimeZone tz = TimeZone.getTimeZone("Asia/Ho_Chi_Minh");
			Calendar startAuctionTime = Calendar.getInstance();
			
			startAuctionTime.setTimeZone(tz);
			startAuctionTime.setTime(product.getStartTime());
			
			Calendar endAuctionTime = Calendar.getInstance();
			endAuctionTime.setTimeZone(tz);
			endAuctionTime.setTime(product.getStartTime());
			endAuctionTime.add(Calendar.SECOND, product.getAmountTime().getAmountTime());
			Date current = new Date();
			System.out.println(startAuctionTime.getTime().compareTo(current) <= 0);
			System.out.println(endAuctionTime.getTime().compareTo(current) <= 0);
			if (startAuctionTime.getTime().compareTo(current) <= 0 && endAuctionTime.getTime().compareTo(current) <= 0) {
				Status status = statusService.findById(5);
				product.setStatus(status);
				productService.save(product);
				Auction auction = auctionService.getLastPriceByProductId(product.getId());
				Invoice invoice = new Invoice();
				invoice.setAuction(auction);
				invoice.setStatus(statusService.findById(1));
				invoice.setTime(new Date());
				invoiceService.save(invoice);
			}
			
		}
	}
}
