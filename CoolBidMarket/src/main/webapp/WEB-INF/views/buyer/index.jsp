<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="tmp" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="ctag" uri="http://customtags.cool"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<tmp:customerTemplate title="Your Auctions">
	<jsp:attribute name="content">
			<ctag:nonSearchHeader/>
			<ctag:buyerNav />
            <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="row col-md-11" style="margin:auto">
                            <div class="col-md-12">
                                <!-- DATA TABLE -->
                                <h3 class="title-5 m-b-35">Your auctioned products</h3>
                                <div
								class="table-responsive table-responsive-data2">
                                    <table class="table table-data2">
                                        <thead>
                                            <tr>
                                                <th style="font-weight: bold">Product ID</th>
                                                <th style="font-weight: bold">Product Name</th>
                                                <th style="font-weight: bold">Category</th>
                                                <th style="font-weight: bold">On Bidding Time</th>
                                                <th style="font-weight: bold">Status</th>
                                                <th style="font-weight: bold">Goto Auction</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach var="product" items="${products }">
                                        	
                                        	<tr class="tr-shadow">
                                                <td>${product.id }</td>
                                                <td>${product.name} </td>
                                                <td>${product.category.name}</td>
                                                <td>${product.amountTime.amountTime / 60 }&nbsp&nbsp Minute</td>
                                                <td>
                                                	<c:if test="${product.status.id == 4 }">
                                                		<div style="color:blue">
                                                			${product.status.name } 
                                                		</div>
                                                	</c:if>
                                                	<c:if test="${product.status.id == 5 }">
                                                		<div style="color:red">
                                                			${product.status.name } 
                                                		</div>
                                                	</c:if>
                                                	
                                                </td>
                                                <td>
		                                          	 <a href="${pageContext.request.contextPath }/auction?id=${product.id }">
                                            	<button class="btn btn-warning btn-sm" ">
				                                     <!--i class="fa fa-dot-circle-o"></i--> Detail...
				                                </button>
				                                </a>
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