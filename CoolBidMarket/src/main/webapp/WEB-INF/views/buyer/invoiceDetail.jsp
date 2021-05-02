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
								<strong>Account</strong> Profile
							</div>
							<div class="card-body card-block">
							<form action="${paypalConfig.posturl }" method="post" enctype="multipart/form-data"
										class="form-horizontal"> 
									<!-- PayPal Setting -->
									<input type="hidden" name="upload" value="1" />
									<input type="hidden" name="return" value="${paypalConfig.returnurl }" /> 
									<input type="hidden" name="cmd" value="_cart" />
									<input type="hidden" name="business" value="${paypalConfig.business}" />
									
									<div class="row form-group">
										<div class="col col-md-3">
											<label class=" form-control-label">ID:</label>
										</div>
										<div class="col-12 col-md-9">
											<p class="form-control-static">${auction.id }</p>
										</div>
										<div class="col col-md-3">
											<label class=" form-control-label">Product name:</label>
										</div>
										<div class="col-12 col-md-9">
											<p class="form-control-static">${auction.product.name }</p>
										</div>
										<div class="col col-md-3">
											<label class=" form-control-label">Price:</label>
										</div>
										<div class="col-12 col-md-9">
											<p class="form-control-static">${auction.price }</p>
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
											<i class="fa fa-dot-circle-o"></i> Submit
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
