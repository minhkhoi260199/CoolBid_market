<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="tmp" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="ctag" uri="http://customtags.cool"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<tmp:customerTemplate title="Invoice detail">
	<jsp:attribute name="content">
		<ctag:nonSearchHeader/>
		<div class="main-content" style="margin-top: 70px;">
		<div class="section__content section__content--p30">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-6" style="margin: auto;">
						<div class="card">
							<div class="card-header">
								<strong>Invoice</strong> Detail
							</div>
							<div class="card-body card-block">
							<form action="${paypalConfig.posturl }" method="post" enctype="multipart/form-data"
										class="form-horizontal"> 
									<!-- PayPal Setting -->
									<input type="hidden" name="upload" value="1" />
									<input type="hidden" name="return" value="${paypalConfig.returnurl }" /> 
									<input type="hidden" name="cmd" value="_cart" />
									<input type="hidden" name="business" value="${paypalConfig.business}" />
									
									<div class="form-group col"><h3><strong>${auction.product.name }</strong></h3></div>
										<hr>
				                        <div class="banner-img">
				                            <img class="card-img-top" src="http://via.placeholder.com/640x360" alt="Image 1">
				                        </div>
				                        <hr>
										<div class="form-group row">
											<div class="col col-lg-6">
										      	<label><strong>Start Time</strong></label>
										   		<p class="card-text form-control">${auction.product.startTime }</p>
										    </div>
										    <div class="col col-lg-6">
										      	<label><strong>End Time</strong></label>
										      <p class="card-text form-control">${auction.time } </p>
										    </div>
									    </div>
				             			<hr>
				             			<div class="form-group row">
											<div class="col col-lg-12">
										      	<label><strong>Price</strong></label>
										   		<p class="card-text form-control">${auction.price }</p>
										    </div>
										    <div class="col col-lg-12">
										      	<label><strong>Buyer</strong></label>
										   		<p class="card-text form-control">${auction.users.name }</p>
										    </div>
										     <div class="col col-lg-12">
										      	<label><strong>Email</strong></label>
										   		<p class="card-text form-control">${auction.users.email }</p>
										    </div>
									    </div>
										<div>										
											<input type="hidden" name="item_number_${i.index + 1 }" value="${auction.id }">
											<input type="hidden" name="item_name_${i.index + 1 }" value="${auction.product.name }">
											<input type="hidden" name="quantity_${i.index + 1 }" value="1">
											<input type="hidden" name="amount_${i.index + 1 }" value="${auction.price }">
										</div>
									</div>
									<div class="card-footer">
										<button type="submit"  class="btn btn-primary btn-sm">
											<i class="fa fa-dot-circle-o"></i> Pay now (PayPal)
										</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
				<div class="row"></div>
			</div>
		</div>
	</div>
		
	</jsp:attribute>
</tmp:customerTemplate>
