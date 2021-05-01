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
import com.app.main.models.Notify;
import com.app.main.models.Product;
import com.app.main.models.Status;
import com.app.main.services.AuctionService;
import com.app.main.services.InvoiceService;
import com.app.main.services.NotifyService;
import com.app.main.services.ProductService;
import com.app.main.services.StatusService;
import com.app.main.services.UserService;

@Component
public class MyTimeSchedule {
	
	@Autowired
	ProductService productService;
	@Autowired
	StatusService statusService;
	@Autowired
	AuctionService auctionService;
	@Autowired
	UserService userService;
	@Autowired
	NotifyService notifyService;
	
	@Scheduled(fixedDelay = 30000)
	public void taskAutoCompleteAuction() {
		TimeZone.setDefault(TimeZone.getTimeZone("GMT+7:00"));
		System.out.println("Task ran");
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String dateTime = simpleDateFormat.format(new Date());
		List<Product> products = productService.findAllAvailableProductByDate(dateTime);
		
		for(Product product : products) {			
			
			TimeZone tz = TimeZone.getTimeZone("Asia/Ho_Chi_Minh");
			Calendar startAuctionTime = Calendar.getInstance();
			
			startAuctionTime.setTimeZone(tz);
			startAuctionTime.setTime(product.getStartTime());
			
			Calendar endAuctionTime = Calendar.getInstance();
			endAuctionTime.setTimeZone(tz);
			endAuctionTime.setTime(product.getStartTime());
			endAuctionTime.add(Calendar.SECOND, product.getAmountTime().getAmountTime());
			Date current = new Date();
			if (startAuctionTime.getTime().compareTo(current) <= 0 && endAuctionTime.getTime().compareTo(current) <= 0) {
				Status status = statusService.findById(5);
				product.setStatus(status);
				productService.save(product);
				Auction auction = auctionService.getLastPriceByProductId(product.getId());
				Auction oldFinalAuction = auctionService.getAuctionByStatusAndProductId(product.getId(), 9);
				if (auction != null && oldFinalAuction == null) {
					auction.setStatus(statusService.findById(9));
					String content = "The product " + product.getName() + " will be sold for " + String.valueOf(auction.getPrice()) + "$" ;
					Notify notify = new Notify();
					notify.setUsers(auction.getProduct().getUsers());
					notify.setContent(content);
					notify.setStatus(statusService.findById(10));
					notifyService.save(notify);
					auctionService.save(auction);
					
					String content1 = "You got the product " + product.getName() + " for " + String.valueOf(auction.getPrice()) + "$" ;
					Notify notify1 = new Notify();
					notify1.setUsers(auction.getUsers());
					notify1.setContent(content1);
					notify1.setStatus(statusService.findById(10));
					notifyService.save(notify1);
					
				} else if (auction != null && oldFinalAuction != null) {
					auction.setStatus(statusService.findById(2));
					auctionService.save(auction);
				} else {
					Status status1 = statusService.findById(2);
					product.setStatus(status1);
					productService.save(product);
					
					String content = "The product " + product.getName() + " can't be sold" ;
					Notify notify = new Notify();
					notify.setUsers(product.getUsers());
					notify.setContent(content);
					notify.setStatus(statusService.findById(10));
					notifyService.save(notify);
				}
			}
			
		}
	}
}
