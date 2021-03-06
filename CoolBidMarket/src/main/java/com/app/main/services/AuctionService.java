package com.app.main.services;

import java.util.List;

import com.app.main.models.Auction;
import com.app.main.models.AuctionProduct;

public interface AuctionService {
	public Auction save(Auction auction);
	
	public List<AuctionProduct> getListAuction(int productId, int startRecord);
	public Integer countTotalAuctionByProductId(int productId);
	
	public List<Auction> getListAuctionByPrice(int product_id, double auctionPrice);
	
	public Auction getLastPriceByProductId(int product_id);
	
	public Auction  getAuctionByStatusAndProductId(int product_id, int status);
	
	public List<Auction> getListAuctionWon();
	
	public List<Auction> getListAuctionGroupByProduct(int id);
	
	public Auction getProductId(int id);
}
