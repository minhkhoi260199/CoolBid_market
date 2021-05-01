<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="tmp" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="ctag" uri="http://customtags.cool"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<tmp:customerTemplate title="Your Invoices">
	<jsp:attribute name="content">
			<ctag:customerHeader/>
			<ctag:buyerNav />
            <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-12">
                                <!-- DATA TABLE -->
                                <h3 class="title-5 m-b-35">Your Invoices</h3>
                                <div
								class="table-responsive table-responsive-data2">
                                    <table class="table table-data2">
                                        <thead>
                                            <tr>
                                                <th>Invoice ID</th>
	                                            <th>Product</th>
	                                            <th>Seller</th>
	                                            <th>Price</th>
	                                            <th>Time</th>
                                            </tr>
                                        </thead>
                                        <tbody>                                    
										<c:forEach var="invoice" items="${invoices }">
                                        <tr class="tr-shadow">
                                            <td>${invoice.id }</td>
                                            <td>${invoice.product.name }</td>
                                            <td>${invoice.users.name }</td>
                                            <td>${invoice.price }</td>   
                                            <td>${invoice.time }</td>	                                                            
                                            <td>
  												<div
													class="table-data-feature">
                                                        <button
														class="item" data-toggle="tooltip" data-placement="top"
														title="Send">
														<a href="${pageContext.request.contextPath }/buyer/invoiceDetail/${invoice.id}" >
                                                            <i
															class="zmdi zmdi-mail-send"></i>
														</a>
                                                        </button>
                                                        <button
														class="item" data-toggle="tooltip" data-placement="top"
														title="Edit">
                                                            <i
															class="zmdi zmdi-edit"></i>
                                                        </button>
                                                        <button
														class="item" data-toggle="tooltip" data-placement="top"
														title="Delete">
                                                            <i
															class="zmdi zmdi-delete"></i>
                                                        </button>
                                                        <button
														class="item" data-toggle="tooltip" data-placement="top"
														title="More">
                                                            <i
															class="zmdi zmdi-more"></i>
                                                        </button>
                                                  </div>
                                            </td>
                                        </tr>
                                        <tr class="spacer"></tr>
                                        </c:forEach>
                                        
                                          <tr class="spacer"></tr>

                                        </tbody>
                                    </table>
                                </div>
                                                             
                                <!-- END DATA TABLE-->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
		
		
	</jsp:attribute>
</tmp:customerTemplate>