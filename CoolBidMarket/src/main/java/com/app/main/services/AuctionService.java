package com.app.main.services;

import java.util.List;

import com.app.main.models.Auction;
import com.app.main.models.AuctionProduct;

public interface AuctionService {
	public Auction save(Auction auction);
	
	public List<AuctionProduct> getListAuction(int productId, int startRecord);
	public Integer countTotalAuctionByProductId(int productId);
	
	public List<Auction> getListAuctionByPrice(int product_id, double auctionPrice);
}
