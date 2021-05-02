<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tmp" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="ctag" uri="http://customtags.cool"%>
<tmp:adminTemplate title="Cool Bid Market">
	<jsp:attribute name="content">
	
		
			        <!-- PAGE CONTENT-->
        <div class="page-content--bgf7">
            <!-- WELCOME-->
            <section class="welcome p-t-10">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12"
							style="text-align: center; margin-top: 20px;">
                            <h1 class="title-4">- PRODUCTS -
                            </h1>
                            <hr class="line-seprate">
                        </div>
                    </div>
                </div>
            </section>
            <!-- END WELCOME-->

            <!-- DATA TABLE-->
            <section class="p-t-20">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <!-- DATA TABLE -->
                            <h3 class="title-5 m-b-35">Products table</h3>
                            <div class="table-data__tool">
                            </div>
                            <div
								class="table-responsive table-responsive-data2">
                                <table class="table table-data2">
                                    <thead>
                                        <tr>
                                        	<th>ID</th>
                                            <th>Product name</th>
                                            <th>Seller</th>
                                            <th>Category</th>
                                            <th>Start price</th>
                                            <th>Status</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach var="product" items="${products }">
                                        <tr class="tr-shadow">
                                        	<td>${product.id }</td>
                                            <td>${product.name }</td>
                                            <td>${product.users.username }</td>
                                            <td>${product.category.name }</td>
                                            <td>${product.startPrice }</td>
                                            <td id="statusColumn_${product.id }">
	                                            <c:if test="${product.status.id == 1 }">
	                                            	<div style="color:orange" >${product.status.name }</div>
	                                            </c:if>
	                                            <c:if test="${product.status.id == 2 }">
	                                            	<div style="color:red" >${product.status.name }</div>
	                                            </c:if>
	                                            <c:if test="${product.status.id == 4 }">
	                                            	<div style="color:green" >${product.status.name }</div>
	                                            </c:if>
	                                            <c:if test="${product.status.id == 5 }">
	                                            	<div style="color:blue" >${product.status.name }</div>
	                                            </c:if>
	                                            <c:if test="${product.status.id == 6 }">
	                                            	<div style="color:blue" >${product.status.name }</div>
	                                            </c:if>
                                            </td>      
                                            
                                                           
                                            <td id="buttonColumn_${product.id }">
	                                            <c:if test="${product.status.id == 1 }">
	                                                <div
														class="table-data-feature">
				                                        <button class="btn btn-success btn-sm" onClick="approveFunction(${product.id })">
				                                        	<i class="fa fa-dot-circle-o"></i> Approve
				                                        </button>
				                                        <button class="btn btn-danger btn-sm" onClick="rejectFunction(${product.id })">
				                                            <i class="fa fa-ban"></i> Reject
				                                        </button>
	                                                </div>
	                                            </c:if>        
                                            </td>
                                        </tr>
                                        <tr class="spacer"></tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                            <!-- END DATA TABLE -->
                        </div>
                    </div>
                </div>
            </section>
            <!-- END DATA TABLE-->
            <!--Pagination-->
            <ul class="pagination home-product__pagination" style="margin-top: 20px;">
				<li class="pagination-item">
					<a href="#" class="pagination-item__link">
						<i class="pagination-item__icon fas fa-angle-left"></i>
					</a>
				</li>
				<li class="pagination-item pagination-item--active">
					<a href="#" class="pagination-item__link">1</a>
				</li>
				<li class="pagination-item">
					<a href="#" class="pagination-item__link">2</a>
				</li>
				<li class="pagination-item">
					<a href="#" class="pagination-item__link">3</a>
				</li>
				<li class="pagination-item">
					<a href="#" class="pagination-item__link">4</a>
				</li>
				<li class="pagination-item">
					<a href="#" class="pagination-item__link">5</a>
				</li>
				<li class="pagination-item">
					<a href="#" class="pagination-item__link">...</a>
				</li>
				<li class="pagination-item">
					<a href="#" class="pagination-item__link">14</a>
				</li>

				<li class="pagination-item">
					<a href="#" class="pagination-item__link">
						<i class="pagination-item__icon fas fa-angle-right"></i>
					</a>
				</li>
			</ul>
            <!--END Pagination-->
	<script>
		function approveFunction(product_id) {
			if (product_id != "") {
				$.ajax({
					url: "${pageContext.request.contextPath }/api/product/approve?product_id="+product_id,
					method: "POST",
					success: function(res) {
						let statusId = `#statusColumn_`+product_id;
						let buttonId = `#buttonColumn_`+product_id;
						$(buttonId).html("");
						$(statusId).html(`<div style="color:green" >On Auction</div>`);
					}
				})
			}
		}

		function rejectFunction(product_id) {
			if (product_id != "") {
				$.ajax({
					url: "${pageContext.request.contextPath }/api/product/reject?product_id="+product_id,
					method: "POST",
					success: function(res) {
						let statusId = `#statusColumn_`+product_id;
						$(statusId).html(`<div style="color:red" >Denied</div>`);
					}
				})
			}
		}
	</script>
	</jsp:attribute>
</tmp:adminTemplate>