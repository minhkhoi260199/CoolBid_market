<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="tmp" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="ctag" uri="http://customtags.cool"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<tmp:customerTemplate title="Your Auctions">
	<jsp:attribute name="content">
			<ctag:customerHeader/>
			<ctag:buyerNav />
            <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-12">
                                <!-- DATA TABLE -->
                                <h3 class="title-5 m-b-35">Your auctioned products</h3>
                                <div
								class="table-responsive table-responsive-data2">
                                    <table class="table table-data2">
                                        <thead>
                                            <tr>
                                                <th>Product ID</th>
                                                <th>Product Name</th>
                                                <th>Category</th>
                                                <th>End Time</th>
                                                <th>Current price</th>
                                                <th>Your Price</th>
                                                <th>Status</th>
                                                <th>Goto Auction</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach var="product" items="${products }">
                                        	
                                        	<tr class="tr-shadow">
                                                <td>${product.id }</td>
                                                <td>${product.name} </td>
                                                <td>${product.category.name}</td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td>${product.status.name }</td>
                                                <td>
                                                <div class="table-data-feature">
                                                <a href="${pageContext.request.contextPath }/auction?id=${product.id }">
                                                    <button class="item" data-toggle="tooltip" data-placement="top" title="Detail">
                                                        <i class="zmdi zmdi-mail-send"></i>
                                                    </button>
                                                </a>
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
                </div>
            </div>
		
		
	</jsp:attribute>
</tmp:customerTemplate>