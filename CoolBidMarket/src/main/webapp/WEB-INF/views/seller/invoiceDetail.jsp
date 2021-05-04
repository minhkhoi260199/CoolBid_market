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
							<div class="card-body card-block">
								<form action="" method="post" enctype="multipart/form-data"
											class="form-horizontal">
									<div class="row form-group">
										<div class="col col-md-3">
											<label class=" form-control-label">ID :</label>
										</div>
										<div class="col-12 col-md-9">
											<p class="form-control-static">${auction.id }</p>
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="text-input" class=" form-control-label">Product Name:</label>
										</div>
										<div class="col-12 col-md-9">
											<p class="form-control-static">${auction.product.name }</p>
										</div>									
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="email-input" class=" form-control-label">Buyer:</label>
										</div>
										<div class="col-12 col-md-9">
											<p class="form-control-static">${auction.users.name }</p>
										</div>	
									</div>	
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="email-input" class=" form-control-label">Price:</label>
										</div>
										<div class="col-12 col-md-9">
											<p class="form-control-static">${auction.price }</p>
										</div>	
									</div>	
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="email-input" class=" form-control-label">Status:</label>
										</div>
										<div class="col-12 col-md-9">
											<p class="form-control-static">${auction.status.name }</p>
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
