<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="tmp" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="ctag" uri="http://customtags.cool"%>
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
								<strong>Order</strong> Detail
							</div>
							<div class="card-body card-block" style="margin:auto">
								<form action="" method="post" enctype="multipart/form-data"
											class="form-horizontal">
				                        <center><div class="form-group col"><h3><strong>${auction.product.name }</strong></h3></div></center>
										<hr>
				                        <div class="banner-img">
				                            <img class="card-img-top" src="" alt="Image 1">
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
								</form>
							
							</div>
							<div class="card-footer">
								<button type="submit" class="btn btn-light btn-sm">
									<i class="fa fa-dot-circle-o">
									<a href="${pageContext.request.contextPath }/seller/invoices" ></i>Back
								</button>
							
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
