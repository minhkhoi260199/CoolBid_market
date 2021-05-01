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
                            <h1 class="title-4">- CUSTOMERS -
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
                            <h3 class="title-5 m-b-35">Customers table</h3>
                            <div class="table-data__tool">

                            </div>
                            <div
								class="table-responsive table-responsive-data2">
                                <table class="table table-data2">
                                    <thead>
                                        <tr>
                                            <th>Customer ID</th>
                                            <th>Username</th>
                                            <th>Name</th>
                                            <th>Phone</th>
                                            <th>Address</th>
                                            <th>Email</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach var="user" items="${users }">
                                        <tr class="tr-shadow">
                                            <td>${user.id }</td>
                                            <td>${user.username }</td>
                                            <td>${user.name }</td>
                                            <td>${user.phone }</td>
                                            <td>${user.address }</td>
                                            <td>
                                                <span class="block-email">${user.email }</span>
                                            </td>                             
                                            <td>
                                                <div
													class="table-data-feature">
			                                        <button class="btn btn-success btn-sm">
			                                        	<i class="fa fa-dot-circle-o"></i> Ban
			                                        </button>
			                                        <button class="btn btn-danger btn-sm">
			                                            <i class="fa fa-ban"></i> Unban
			                                        </button>
                                                </div>
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