package com.app.main.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.main.models.Auction;
import com.app.main.models.AuctionProduct;
import com.app.main.repositories.AuctionRepository;


@Service("auctionService")
public class AuctionServiceImpl implements AuctionService {
	@Autowired
	AuctionRepository auctionRepository;

	@Override
	public Auction save(Auction auction) {
		// TODO Auto-generated method stub
		return auctionRepository.save(auction);
	}

	@Override
	public List<AuctionProduct> getListAuction(int productId, int startRecord) {
		// TODO Auto-generated method stub
		List<Auction> auctions = auctionRepository.getListAuctionByProductId(productId, startRecord);
		List<AuctionProduct> auctionProducts = new ArrayList<AuctionProduct>();
		for (Auction auction : auctions) {
			AuctionProduct auctionProduct = new AuctionProduct();
			auctionProduct.setIdAuction(auction.getId());
			auctionProduct.setIdProduct(auction.getProduct().getId());
			auctionProduct.setPrice(auction.getPrice());
			auctionProduct.setAuctionTime(auction.getTime());
			auctionProduct.setFullName(auction.getUsers().getName());
			auctionProducts.add(auctionProduct);
		}
		return auctionProducts;
	}

	@Override
	public Integer countTotalAuctionByProductId(int productId) {
		// TODO Auto-generated method stub
		return auctionRepository.countTotalAuctionByProductId(productId);
	}

	@Override
	public List<Auction> getListAuctionByPrice(int product_id, double auctionPrice) {
		// TODO Auto-generated method stub
		return auctionRepository.getListAuctionByPrice(product_id, auctionPrice);
	}
	
	
}
