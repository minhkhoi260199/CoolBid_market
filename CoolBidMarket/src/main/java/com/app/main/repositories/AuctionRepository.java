package com.app.main.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.app.main.models.Auction;

public interface AuctionRepository extends CrudRepository<Auction, Integer> {
	@Query(nativeQuery = true, value = "select * from auction where product_id = :productId order by price DESC, time DESC limit :startRecord,10")
	public List<Auction> getListAuctionByProductId(@Param("productId") int productId, @Param("startRecord") int startRecord);
	
	@Query("select count(id) from Auction where product_id = :product_id")
	public Integer countTotalAuctionByProductId (@Param("product_id") int product_id);
	
	@Query(nativeQuery = true, value = "select * from auction where price >= :auctionPrice and product_id = :product_id")
	public List<Auction> getListAuctionByPrice(@Param("product_id") int product_id, @Param("auctionPrice") double auctionPrice);
	
	@Query(nativeQuery = true, value = "select * from auction where product_id = :product_id order by price DESC limit 0,1")
	public Auction getLastPriceByProductId(@Param("product_id") int product_id);
	
	@Query(nativeQuery = true, value = "select * from auction where product_id = :product_id and status = :status")
	public Auction getAuctionByStatusAndProductId(@Param("product_id") int product_id, @Param("status") int status);
	
	@Query(nativeQuery = true, value = "select * from auction where status = 9")
	public List<Auction> getAuctionWon();
	
	@Query(nativeQuery = true, value = "select * from auction where user_id = :user group by product_id")
	public List<Auction> getAuctionByUserIDForProduct(@Param("user") int user_id);
}
