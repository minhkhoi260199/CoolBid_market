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
                            <h1 class="title-4">- INVOICES -
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
                            <h3 class="title-5 m-b-35">Invoices table</h3>
                            <div class="table-data__tool">
                          	</div>
                            <div
								class="table-responsive table-responsive-data2">
                                <table class="table table-data2">
                                    <thead>
                                        <tr>
                                            <th>Invoice id</th>
                                            <th>Product name</th>
                                            <th>Seller</th>
                                            <th>Price</th>
                                            <th>Date</th>
                                            <th>Buyer</th>
                                            <th>Status</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach var="invoice" items="${invoices }">
                                        <tr class="tr-shadow">
                                            <td>${invoice.id }</td>
                                            <td>${invoice.product.name }</td>
                                            <td>${invoice.product.users.name }</td>
                                            <td>${invoice.price }</td>
                                            <td>${invoice.time }</td>
                                            <td>${invoice.users.name }</td>
                                            <td>
                                                <span class="status--process">${invoice.status.name }</span>
                                            </td>                             
                                            <td>
                                                <!--  div
													class="table-data-feature">
                                                    <button class="item"
														data-toggle="tooltip" data-placement="top" title="Delete">
                                                        <i
															class="zmdi zmdi-delete"></i>
                                                    </button>
                                                </div -->
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

	</jsp:attribute>
</tmp:adminTemplate>