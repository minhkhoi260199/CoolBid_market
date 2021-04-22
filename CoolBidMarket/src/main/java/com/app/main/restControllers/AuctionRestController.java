package com.app.main.restControllers;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Date;
import java.util.List;
import java.util.TimeZone;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.app.main.models.Auction;
import com.app.main.models.AuctionProduct;
import com.app.main.models.CustomerProduct;
import com.app.main.models.Product;
import com.app.main.models.ReturnCustomProductAuction;
import com.app.main.models.ReturnListAuction;
import com.app.main.models.Users;
import com.app.main.services.AuctionService;
import com.app.main.services.ProductService;
import com.app.main.services.StatusService;
import com.app.main.services.UserService;

@RestController
@RequestMapping("api/auction")
public class AuctionRestController {
	
	@Autowired
	ProductService productService;
	
	@Autowired
	UserService userService;
	
	@Autowired
	AuctionService auctionService;
	
	@Autowired
	StatusService statusService;
	
	@RequestMapping(value="getDetail")
	public ResponseEntity<?> getDetailItem(@RequestParam("id") String idString){
		try {
			TimeZone.setDefault(TimeZone.getTimeZone("GMT+7:00"));
			int id = Integer.parseInt(idString);
			CustomerProduct customerProduct = productService.findDetailById(id);
			
			List<AuctionProduct> auctionProducts = auctionService.getListAuction(id, 0);
			
			Integer totalRecord = auctionService.countTotalAuctionByProductId(id);
			
			ReturnCustomProductAuction returnCustomProductAuction = new ReturnCustomProductAuction();
			returnCustomProductAuction.setCustomerProducts(customerProduct);
			returnCustomProductAuction.setAuctionProducts(auctionProducts);
			returnCustomProductAuction.setStatus(true);
			returnCustomProductAuction.setTotalRecord(totalRecord);
			
			return new ResponseEntity<>(returnCustomProductAuction, HttpStatus.OK);
		} catch (Exception e) {
			// TODO: handle exception
			return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
	}
	
	@RequestMapping(value="getAuctionList")
	public ResponseEntity<?> getAuctionList(@RequestParam("id") String idProductString, @RequestParam("numberPage") String numberPageString) {
		try {
			ReturnCustomProductAuction returnCustomProductAuction = new ReturnCustomProductAuction();
			if (idProductString != "" ) {
				int idProduct = Integer.parseInt(idProductString);
				int numberPage = Integer.parseInt(numberPageString);
				int startRecord = (10 * numberPage) - 10;
				List<AuctionProduct> auctionProducts = auctionService.getListAuction(idProduct, startRecord);
				Integer totalRecord = auctionService.countTotalAuctionByProductId(idProduct);
				
				returnCustomProductAuction.setCustomerProducts(null);
				returnCustomProductAuction.setAuctionProducts(auctionProducts);
				returnCustomProductAuction.setStatus(true);
				returnCustomProductAuction.setTotalRecord(totalRecord);
				
				return new ResponseEntity<>(returnCustomProductAuction, HttpStatus.OK);
			}
			returnCustomProductAuction.setStatus(false);
			returnCustomProductAuction.setCustomerProducts(null);
			returnCustomProductAuction.setAuctionProducts(null);
			returnCustomProductAuction.setTotalRecord(0);
			return new ResponseEntity<>(returnCustomProductAuction, HttpStatus.OK);
		} catch (Exception e) {
			// TODO: handle exception
			return new ResponseEntity<>(null, HttpStatus.BAD_REQUEST);
		}
	}
	
	@RequestMapping(value = "bidSubmit")
	public ResponseEntity<?> bidSubmit(@RequestParam("bid_price") String bid_price_string, @RequestParam("product_id") String product_id_string, Authentication authentication) {
		try {
			ReturnListAuction returnListAuction = new ReturnListAuction();
			TimeZone.setDefault(TimeZone.getTimeZone("GMT+7:00"));
			
			if (authentication != null && product_id_string != "" && bid_price_string != "") {	
				double bid_price = Double.parseDouble(bid_price_string);
				int product_id = Integer.parseInt(product_id_string);
				
				Product product = productService.findById(product_id);
				double startProductPrice = product.getStartPrice();
				double gapPrice= product.getGap();
				double minPrice = startProductPrice + gapPrice;
				if (product != null) {
					TimeZone tz = TimeZone.getTimeZone("Asia/Ho_Chi_Minh");
					Calendar startAuctionTime = Calendar.getInstance();
					
					startAuctionTime.setTimeZone(tz);
					startAuctionTime.setTime(product.getStartTime());
					
					Calendar endAuctionTime = Calendar.getInstance();
					endAuctionTime.setTimeZone(tz);
					endAuctionTime.setTime(product.getStartTime());
					endAuctionTime.add(Calendar.SECOND, product.getAmountTime().getAmountTime());
					
					Date current = new Date();
					if (startAuctionTime.getTime().compareTo(current) <= 0 && endAuctionTime.getTime().compareTo(current) >= 0) {
						Auction oldAuction = auctionService.getLastPriceByProductId(product_id);
						Double currentPrice = 0.0;
						if (oldAuction != null) {
							currentPrice = oldAuction.getPrice();
						} else {
							currentPrice = startProductPrice;
						}
						Double gapBetween = bid_price - currentPrice;

						if (bid_price >= minPrice && gapBetween >= gapPrice) {
							String username = authentication.getName();
							Users user = userService.findUserByUsername(username);
							
		//					TimeZone.setDefault(TimeZone.getTimeZone("GMT+7:00"));
							
							Auction auction = new Auction();
							auction.setUsers(user);
							auction.setPrice(bid_price);
							auction.setProduct(product);
							auction.setTime(current);
							auction.setStatus(statusService.findById(4));
							auctionService.save(auction);
							
							List<AuctionProduct> auctionProducts = auctionService.getListAuction(product_id, 0);
							
							returnListAuction.setAuctionProducts(auctionProducts);
							returnListAuction.setStatus(true);
							return new ResponseEntity<>(returnListAuction, HttpStatus.OK);
						}
					}
				}
			}
			returnListAuction.setAuctionProducts(null);
			returnListAuction.setStatus(false);
			return new ResponseEntity<>(returnListAuction, HttpStatus.OK);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.getMessage());
			return new ResponseEntity<>(null, HttpStatus.BAD_REQUEST);
		}
	}
}
