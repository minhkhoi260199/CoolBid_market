<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="tmp" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="ctag" uri="http://customtags.cool"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<tmp:customerTemplate title="Invoice Detail">
	<jsp:attribute name="content">
			<ctag:customerHeader/>
			<ctag:buyerNav />
            <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-12">
                                <!-- DATA TABLE -->
                                <h3 class="title-5 m-b-35">data table</h3>
                                <div class="table-data__tool">
                                    <div class="table-data__tool-left">
                                        <div
										class="rs-select2--light rs-select2--md">
                                            <select class="js-select2"
											name="property">
                                                <option
												selected="selected">All Properties</option>
                                                <option value="">Option 1</option>
                                                <option value="">Option 2</option>
                                            </select>
                                            <div class="dropDownSelect2"></div>
                                        </div>
                                        <div
										class="rs-select2--light rs-select2--sm">
                                            <select class="js-select2"
											name="time">
                                                <option
												selected="selected">Today</option>
                                                <option value="">3 Days</option>
                                                <option value="">1 Week</option>
                                            </select>
                                            <div class="dropDownSelect2"></div>
                                        </div>
                                        <button class="au-btn-filter">
                                            <i
											class="zmdi zmdi-filter-list"></i>filters</button>
                                    </div>
                                    <div class="table-data__tool-right">
                                        <button
										class="au-btn au-btn-icon au-btn--green au-btn--small">
                                            <i class="zmdi zmdi-plus"></i>add item</button>
                                        <div
										class="rs-select2--dark rs-select2--sm rs-select2--dark2">
                                            <select class="js-select2"
											name="type">
                                                <option
												selected="selected">Export</option>
                                                <option value="">Option 1</option>
                                                <option value="">Option 2</option>
                                            </select>
                                            <div class="dropDownSelect2"></div>
                                        </div>
                                    </div>
                                </div>
                                <div
								class="table-responsive table-responsive-data2">
                                    <table class="table table-data2">
                                        <thead>
                                            <tr>
                                                <th>
                                                    <label
												class="au-checkbox">
                                                        <input
													type="checkbox">
                                                        <span
													class="au-checkmark"></span>
                                                    </label>
                                                </th>
                                                <th>product name</th>
	                                            <th>seller</th>
	                                            <th>category</th>
	                                            <th>price</th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>                                    
										<c:forEach var="product" items="${products }">
                                        <tr class="tr-shadow">
                                            <td>
                                                <label
												class="au-checkbox">
                                                    <input
													type="checkbox">
                                                    <span
													class="au-checkmark"></span>
                                                </label>
                                            </td>
                                            <td>${product.name }</td>
                                            <td>${product.users.username }</td>
                                            <td>${product.category.name }</td>
                                            <td>${product.gap }</td>   	                                                            
                                            <td>
  												<div
													class="table-data-feature">
                                                        <button
														class="item" data-toggle="tooltip" data-placement="top"
														title="Send">
														<a href="${pageContext.request.contextPath }/buyer/invoiceDetail/${product.id}" >
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