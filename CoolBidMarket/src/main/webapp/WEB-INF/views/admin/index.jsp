<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
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
                            <h1 class="title-4">- CoolAdmin -
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
                            <h3 class="title-5 m-b-35">data table</h3>
                            <div class="table-data__tool">
                                <div class="table-data__tool-left">
                                    <div
										class="rs-select2--light rs-select2--md">
                                        <select class="js-select2"
											name="property">
                                            <option selected="selected">All Properties</option>
                                            <option value="">Option 1</option>
                                            <option value="">Option 2</option>
                                        </select>
                                        <div class="dropDownSelect2"></div>
                                    </div>
                                    <div
										class="rs-select2--light rs-select2--sm">
                                        <select class="js-select2"
											name="time">
                                            <option selected="selected">Today</option>
                                            <option value="">3 Days</option>
                                            <option value="">1 Week</option>
                                        </select>
                                        <div class="dropDownSelect2"></div>
                                    </div>
                                    <button class="au-btn-filter">
                                        <i class="zmdi zmdi-filter-list"></i>filters</button>
                                </div>
                                <div class="table-data__tool-right">
                                    <button
										class="au-btn au-btn-icon au-btn--green au-btn--small">
                                        <i class="zmdi zmdi-plus"></i>add item</button>
                                    <div
										class="rs-select2--dark rs-select2--sm rs-select2--dark2">
                                        <select class="js-select2"
											name="type">
                                            <option selected="selected">Export</option>
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
                                            <th>name</th>
                                            <th>email</th>
                                            <th>description</th>
                                            <th>date</th>
                                            <th>status</th>
                                            <th>price</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
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
                                            <td>Lori Lynch</td>
                                            <td>
                                                <span
												class="block-email">lori@example.com</span>
                                            </td>
                                            <td class="desc">Samsung S8 Black</td>
                                            <td>2018-09-27 02:12</td>
                                            <td>
                                                <span
												class="status--process">Processed</span>
                                            </td>
                                            <td>$679.00</td>
                                            <td>
                                                <div
													class="table-data-feature">
                                                    <button class="item"
														data-toggle="tooltip" data-placement="top" title="Send">
                                                        <i
															class="zmdi zmdi-mail-send"></i>
                                                    </button>
                                                    <button class="item"
														data-toggle="tooltip" data-placement="top" title="Edit">
                                                        <i
															class="zmdi zmdi-edit"></i>
                                                    </button>
                                                    <button class="item"
														data-toggle="tooltip" data-placement="top" title="Delete">
                                                        <i
															class="zmdi zmdi-delete"></i>
                                                    </button>
                                                    <button class="item"
														data-toggle="tooltip" data-placement="top" title="More">
                                                        <i
															class="zmdi zmdi-more"></i>
                                                    </button>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr class="spacer"></tr>
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
                                            <td>Lori Lynch</td>
                                            <td>
                                                <span
												class="block-email">john@example.com</span>
                                            </td>
                                            <td class="desc">iPhone X 64Gb Grey</td>
                                            <td>2018-09-29 05:57</td>
                                            <td>
                                                <span
												class="status--process">Processed</span>
                                            </td>
                                            <td>$999.00</td>
                                            <td>
                                                <div
													class="table-data-feature">
                                                    <button class="item"
														data-toggle="tooltip" data-placement="top" title="Send">
                                                        <i
															class="zmdi zmdi-mail-send"></i>
                                                    </button>
                                                    <button class="item"
														data-toggle="tooltip" data-placement="top" title="Edit">
                                                        <i
															class="zmdi zmdi-edit"></i>
                                                    </button>
                                                    <button class="item"
														data-toggle="tooltip" data-placement="top" title="Delete">
                                                        <i
															class="zmdi zmdi-delete"></i>
                                                    </button>
                                                    <button class="item"
														data-toggle="tooltip" data-placement="top" title="More">
                                                        <i
															class="zmdi zmdi-more"></i>
                                                    </button>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr class="spacer"></tr>
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
                                            <td>Lori Lynch</td>
                                            <td>
                                                <span
												class="block-email">lyn@example.com</span>
                                            </td>
                                            <td class="desc">iPhone X 256Gb Black</td>
                                            <td>2018-09-25 19:03</td>
                                            <td>
                                                <span
												class="status--denied">Denied</span>
                                            </td>
                                            <td>$1199.00</td>
                                            <td>
                                                <div
													class="table-data-feature">
                                                    <button class="item"
														data-toggle="tooltip" data-placement="top" title="Send">
                                                        <i
															class="zmdi zmdi-mail-send"></i>
                                                    </button>
                                                    <button class="item"
														data-toggle="tooltip" data-placement="top" title="Edit">
                                                        <i
															class="zmdi zmdi-edit"></i>
                                                    </button>
                                                    <button class="item"
														data-toggle="tooltip" data-placement="top" title="Delete">
                                                        <i
															class="zmdi zmdi-delete"></i>
                                                    </button>
                                                    <button class="item"
														data-toggle="tooltip" data-placement="top" title="More">
                                                        <i
															class="zmdi zmdi-more"></i>
                                                    </button>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr class="spacer"></tr>
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
                                            <td>Lori Lynch</td>
                                            <td>
                                                <span
												class="block-email">doe@example.com</span>
                                            </td>
                                            <td class="desc">Camera C430W 4k</td>
                                            <td>2018-09-24 19:10</td>
                                            <td>
                                                <span
												class="status--process">Processed</span>
                                            </td>
                                            <td>$699.00</td>
                                            <td>
                                                <div
													class="table-data-feature">
                                                    <button class="item"
														data-toggle="tooltip" data-placement="top" title="Send">
                                                        <i
															class="zmdi zmdi-mail-send"></i>
                                                    </button>
                                                    <button class="item"
														data-toggle="tooltip" data-placement="top" title="Edit">
                                                        <i
															class="zmdi zmdi-edit"></i>
                                                    </button>
                                                    <button class="item"
														data-toggle="tooltip" data-placement="top" title="Delete">
                                                        <i
															class="zmdi zmdi-delete"></i>
                                                    </button>
                                                    <button class="item"
														data-toggle="tooltip" data-placement="top" title="More">
                                                        <i
															class="zmdi zmdi-more"></i>
                                                    </button>
                                                </div>
                                            </td>
                                        </tr>
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
                        <ul class="pagination home-product__pagination"
				style="margin-top: 20px;">
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

            <!-- MAIN CONTENT-->
            <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="card">
                                    <div class="card-header">Credit Card</div>
                                    <div class="card-body">
                                        <div class="card-title">
                                            <h3
												class="text-center title-2">Pay Invoice</h3>
                                        </div>
                                        <hr>
                                        <form action="" method="post"
											novalidate="novalidate">
                                            <div class="form-group">
                                                <label for="cc-payment"
													class="control-label mb-1">Payment
                                                    amount</label>
                                                <input id="cc-pament"
													name="cc-payment" type="text" class="form-control"
													aria-required="true" aria-invalid="false" value="100.00">
                                            </div>
                                            <div
												class="form-group has-success">
                                                <label for="cc-name"
													class="control-label mb-1">Name on card</label>
                                                <input id="cc-name"
													name="cc-name" type="text"
													class="form-control cc-name valid" data-val="true"
													data-val-required="Please enter the name on card"
													autocomplete="cc-name" aria-required="true"
													aria-invalid="false" aria-describedby="cc-name-error">
                                                <span
													class="help-block field-validation-valid"
													data-valmsg-for="cc-name" data-valmsg-replace="true"></span>
                                            </div>
                                            <div class="form-group">
                                                <label for="cc-number"
													class="control-label mb-1">Card number</label>
                                                <input id="cc-number"
													name="cc-number" type="tel"
													class="form-control cc-number identified visa" value=""
													data-val="true"
													data-val-required="Please enter the card number"
													data-val-cc-number="Please enter a valid card number"
													autocomplete="cc-number">
                                                <span class="help-block"
													data-valmsg-for="cc-number" data-valmsg-replace="true"></span>
                                            </div>
                                            <div class="row">
                                                <div class="col-6">
                                                    <div
														class="form-group">
                                                        <label
															for="cc-exp" class="control-label mb-1">Expiration</label>
                                                        <input
															id="cc-exp" name="cc-exp" type="tel"
															class="form-control cc-exp" value="" data-val="true"
															data-val-required="Please enter the card expiration"
															data-val-cc-exp="Please enter a valid month and year"
															placeholder="MM / YY" autocomplete="cc-exp">
                                                        <span
															class="help-block" data-valmsg-for="cc-exp"
															data-valmsg-replace="true"></span>
                                                    </div>
                                                </div>
                                                <div class="col-6">
                                                    <label
														for="x_card_code" class="control-label mb-1">Security
                                                        code</label>
                                                    <div
														class="input-group">
                                                        <input
															id="x_card_code" name="x_card_code" type="tel"
															class="form-control cc-cvc" value="" data-val="true"
															data-val-required="Please enter the security code"
															data-val-cc-cvc="Please enter a valid security code"
															autocomplete="off">

                                                    </div>
                                                </div>
                                            </div>
                                            <div>
                                                <button
													id="payment-button" type="submit"
													class="btn btn-lg btn-info btn-block">
                                                    <i
														class="fa fa-lock fa-lg"></i>&nbsp;
                                                    <span
														id="payment-button-amount">Pay $100.00</span>
                                                    <span
														id="payment-button-sending" style="display: none;">Sending…</span>
                                                </button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="card">
                                    <div class="card-header">
                                        <strong>Company</strong>
                                        <small> Form</small>
                                    </div>
                                    <div class="card-body card-block">
                                        <div class="form-group">
                                            <label for="company"
												class=" form-control-label">Company</label>
                                            <input type="text"
												id="company" placeholder="Enter your company name"
												class="form-control">
                                        </div>
                                        <div class="form-group">
                                            <label for="vat"
												class=" form-control-label">VAT</label>
                                            <input type="text" id="vat"
												placeholder="DE1234567890" class="form-control">
                                        </div>
                                        <div class="form-group">
                                            <label for="street"
												class=" form-control-label">Street</label>
                                            <input type="text"
												id="street" placeholder="Enter street name"
												class="form-control">
                                        </div>
                                        <div class="row form-group">
                                            <div class="col-8">
                                                <div class="form-group">
                                                    <label for="city"
														class=" form-control-label">City</label>
                                                    <input type="text"
														id="city" placeholder="Enter your city"
														class="form-control">
                                                </div>
                                            </div>
                                            <div class="col-8">
                                                <div class="form-group">
                                                    <label
														for="postal-code" class=" form-control-label">Postal
                                                        Code</label>
                                                    <input type="text"
														id="postal-code" placeholder="Postal Code"
														class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="country"
												class=" form-control-label">Country</label>
                                            <input type="text"
												id="country" placeholder="Country name" class="form-control">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="card">
                                    <div class="card-header">
                                        <strong>Basic Form</strong> Elements
                                    </div>
                                    <div class="card-body card-block">
                                        <form action="" method="post"
											enctype="multipart/form-data" class="form-horizontal">
                                            <div class="row form-group">
                                                <div
													class="col col-md-3">
                                                    <label
														class=" form-control-label">Static</label>
                                                </div>
                                                <div
													class="col-12 col-md-9">
                                                    <p
														class="form-control-static">Username</p>
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div
													class="col col-md-3">
                                                    <label
														for="text-input" class=" form-control-label">Text
                                                        Input</label>
                                                </div>
                                                <div
													class="col-12 col-md-9">
                                                    <input type="text"
														id="text-input" name="text-input" placeholder="Text"
														class="form-control">
                                                    <small
														class="form-text text-muted">This is a help text</small>
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div
													class="col col-md-3">
                                                    <label
														for="email-input" class=" form-control-label">Email
                                                        Input</label>
                                                </div>
                                                <div
													class="col-12 col-md-9">
                                                    <input type="email"
														id="email-input" name="email-input"
														placeholder="Enter Email" class="form-control">
                                                    <small
														class="help-block form-text">Please enter your email</small>
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div
													class="col col-md-3">
                                                    <label
														for="password-input" class=" form-control-label">Password</label>
                                                </div>
                                                <div
													class="col-12 col-md-9">
                                                    <input
														type="password" id="password-input" name="password-input"
														placeholder="Password" class="form-control">
                                                    <small
														class="help-block form-text">Please enter a complex
                                                        password</small>
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div
													class="col col-md-3">
                                                    <label
														for="disabled-input" class=" form-control-label">Disabled
                                                        Input</label>
                                                </div>
                                                <div
													class="col-12 col-md-9">
                                                    <input type="text"
														id="disabled-input" name="disabled-input"
														placeholder="Disabled" disabled="" class="form-control">
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div
													class="col col-md-3">
                                                    <label
														for="textarea-input" class=" form-control-label">Textarea</label>
                                                </div>
                                                <div
													class="col-12 col-md-9">
                                                    <textarea
														name="textarea-input" id="textarea-input" rows="9"
														placeholder="Content..." class="form-control"></textarea>
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div
													class="col col-md-3">
                                                    <label for="select"
														class=" form-control-label">Select</label>
                                                </div>
                                                <div
													class="col-12 col-md-9">
                                                    <select
														name="select" id="select" class="form-control">
                                                        <option
															value="0">Please select</option>
                                                        <option
															value="1">Option #1</option>
                                                        <option
															value="2">Option #2</option>
                                                        <option
															value="3">Option #3</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div
													class="col col-md-3">
                                                    <label
														for="selectLg" class=" form-control-label">Select
                                                        Large</label>
                                                </div>
                                                <div
													class="col-12 col-md-9">
                                                    <select
														name="selectLg" id="selectLg"
														class="form-control-lg form-control">
                                                        <option
															value="0">Please select</option>
                                                        <option
															value="1">Option #1</option>
                                                        <option
															value="2">Option #2</option>
                                                        <option
															value="3">Option #3</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div
													class="col col-md-3">
                                                    <label
														for="selectSm" class=" form-control-label">Select
                                                        Small</label>
                                                </div>
                                                <div
													class="col-12 col-md-9">
                                                    <select
														name="selectSm" id="SelectLm"
														class="form-control-sm form-control">
                                                        <option
															value="0">Please select</option>
                                                        <option
															value="1">Option #1</option>
                                                        <option
															value="2">Option #2</option>
                                                        <option
															value="3">Option #3</option>
                                                        <option
															value="4">Option #4</option>
                                                        <option
															value="5">Option #5</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div
													class="col col-md-3">
                                                    <label
														for="disabledSelect" class=" form-control-label">Disabled
                                                        Select</label>
                                                </div>
                                                <div
													class="col-12 col-md-9">
                                                    <select
														name="disabledSelect" id="disabledSelect" disabled=""
														class="form-control">
                                                        <option
															value="0">Please select</option>
                                                        <option
															value="1">Option #1</option>
                                                        <option
															value="2">Option #2</option>
                                                        <option
															value="3">Option #3</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div
													class="col col-md-3">
                                                    <label
														for="multiple-select" class=" form-control-label">Multiple
                                                        select</label>
                                                </div>
                                                <div
													class="col col-md-9">
                                                    <select
														name="multiple-select" id="multiple-select" multiple=""
														class="form-control">
                                                        <option
															value="1">Option #1</option>
                                                        <option
															value="2">Option #2</option>
                                                        <option
															value="3">Option #3</option>
                                                        <option
															value="4">Option #4</option>
                                                        <option
															value="5">Option #5</option>
                                                        <option
															value="6">Option #6</option>
                                                        <option
															value="7">Option #7</option>
                                                        <option
															value="8">Option #8</option>
                                                        <option
															value="9">Option #9</option>
                                                        <option
															value="10">Option #10</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div
													class="col col-md-3">
                                                    <label
														class=" form-control-label">Radios</label>
                                                </div>
                                                <div
													class="col col-md-9">
                                                    <div
														class="form-check">
                                                        <div
															class="radio">
                                                            <label
																for="radio1" class="form-check-label ">
                                                                <input
																type="radio" id="radio1" name="radios" value="option1"
																class="form-check-input">Option 1
                                                            </label>
                                                        </div>
                                                        <div
															class="radio">
                                                            <label
																for="radio2" class="form-check-label ">
                                                                <input
																type="radio" id="radio2" name="radios" value="option2"
																class="form-check-input">Option 2
                                                            </label>
                                                        </div>
                                                        <div
															class="radio">
                                                            <label
																for="radio3" class="form-check-label ">
                                                                <input
																type="radio" id="radio3" name="radios" value="option3"
																class="form-check-input">Option 3
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div
													class="col col-md-3">
                                                    <label
														class=" form-control-label">Inline Radios</label>
                                                </div>
                                                <div
													class="col col-md-9">
                                                    <div
														class="form-check-inline form-check">
                                                        <label
															for="inline-radio1" class="form-check-label ">
                                                            <input
															type="radio" id="inline-radio1" name="inline-radios"
															value="option1" class="form-check-input">One
                                                        </label>
                                                        <label
															for="inline-radio2" class="form-check-label ">
                                                            <input
															type="radio" id="inline-radio2" name="inline-radios"
															value="option2" class="form-check-input">Two
                                                        </label>
                                                        <label
															for="inline-radio3" class="form-check-label ">
                                                            <input
															type="radio" id="inline-radio3" name="inline-radios"
															value="option3" class="form-check-input">Three
                                                        </label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div
													class="col col-md-3">
                                                    <label
														class=" form-control-label">Checkboxes</label>
                                                </div>
                                                <div
													class="col col-md-9">
                                                    <div
														class="form-check">
                                                        <div
															class="checkbox">
                                                            <label
																for="checkbox1" class="form-check-label ">
                                                                <input
																type="checkbox" id="checkbox1" name="checkbox1"
																value="option1" class="form-check-input">Option 1
                                                            </label>
                                                        </div>
                                                        <div
															class="checkbox">
                                                            <label
																for="checkbox2" class="form-check-label ">
                                                                <input
																type="checkbox" id="checkbox2" name="checkbox2"
																value="option2" class="form-check-input"> Option 2
                                                            </label>
                                                        </div>
                                                        <div
															class="checkbox">
                                                            <label
																for="checkbox3" class="form-check-label ">
                                                                <input
																type="checkbox" id="checkbox3" name="checkbox3"
																value="option3" class="form-check-input"> Option 3
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div
													class="col col-md-3">
                                                    <label
														class=" form-control-label">Inline Checkboxes</label>
                                                </div>
                                                <div
													class="col col-md-9">
                                                    <div
														class="form-check-inline form-check">
                                                        <label
															for="inline-checkbox1" class="form-check-label ">
                                                            <input
															type="checkbox" id="inline-checkbox1"
															name="inline-checkbox1" value="option1"
															class="form-check-input">One
                                                        </label>
                                                        <label
															for="inline-checkbox2" class="form-check-label ">
                                                            <input
															type="checkbox" id="inline-checkbox2"
															name="inline-checkbox2" value="option2"
															class="form-check-input">Two
                                                        </label>
                                                        <label
															for="inline-checkbox3" class="form-check-label ">
                                                            <input
															type="checkbox" id="inline-checkbox3"
															name="inline-checkbox3" value="option3"
															class="form-check-input">Three
                                                        </label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div
													class="col col-md-3">
                                                    <label
														for="file-input" class=" form-control-label">File
                                                        input</label>
                                                </div>
                                                <div
													class="col-12 col-md-9">
                                                    <input type="file"
														id="file-input" name="file-input"
														class="form-control-file">
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div
													class="col col-md-3">
                                                    <label
														for="file-multiple-input" class=" form-control-label">Multiple File input</label>
                                                </div>
                                                <div
													class="col-12 col-md-9">
                                                    <input type="file"
														id="file-multiple-input" name="file-multiple-input"
														multiple="" class="form-control-file">
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="card-footer">
                                        <button type="submit"
											class="btn btn-primary btn-sm">
                                            <i
												class="fa fa-dot-circle-o"></i> Submit
                                        </button>
                                        <button type="reset"
											class="btn btn-danger btn-sm">
                                            <i class="fa fa-ban"></i> Reset
                                        </button>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-header">
                                        <strong>Inline</strong> Form
                                    </div>
                                    <div class="card-body card-block">
                                        <form action="" method="post"
											class="form-inline">
                                            <div class="form-group">
                                                <label
													for="exampleInputName2" class="pr-1  form-control-label">Name</label>
                                                <input type="text"
													id="exampleInputName2" placeholder="Jane Doe" required=""
													class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label
													for="exampleInputEmail2" class="px-1  form-control-label">Email</label>
                                                <input type="email"
													id="exampleInputEmail2" placeholder="jane.doe@example.com"
													required="" class="form-control">
                                            </div>
                                        </form>
                                    </div>
                                    <div class="card-footer">
                                        <button type="submit"
											class="btn btn-primary btn-sm">
                                            <i
												class="fa fa-dot-circle-o"></i> Submit
                                        </button>
                                        <button type="reset"
											class="btn btn-danger btn-sm">
                                            <i class="fa fa-ban"></i> Reset
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="card">
                                    <div class="card-header">
                                        <strong>Horizontal</strong> Form
                                    </div>
                                    <div class="card-body card-block">
                                        <form action="" method="post"
											class="form-horizontal">
                                            <div class="row form-group">
                                                <div
													class="col col-md-3">
                                                    <label
														for="hf-email" class=" form-control-label">Email</label>
                                                </div>
                                                <div
													class="col-12 col-md-9">
                                                    <input type="email"
														id="hf-email" name="hf-email" placeholder="Enter Email..."
														class="form-control">
                                                    <span
														class="help-block">Please enter your email</span>
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div
													class="col col-md-3">
                                                    <label
														for="hf-password" class=" form-control-label">Password</label>
                                                </div>
                                                <div
													class="col-12 col-md-9">
                                                    <input
														type="password" id="hf-password" name="hf-password"
														placeholder="Enter Password..." class="form-control">
                                                    <span
														class="help-block">Please enter your password</span>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="card-footer">
                                        <button type="submit"
											class="btn btn-primary btn-sm">
                                            <i
												class="fa fa-dot-circle-o"></i> Submit
                                        </button>
                                        <button type="reset"
											class="btn btn-danger btn-sm">
                                            <i class="fa fa-ban"></i> Reset
                                        </button>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-header">
                                        <strong>Normal</strong> Form
                                    </div>
                                    <div class="card-body card-block">
                                        <form action="" method="post"
											class="">
                                            <div class="form-group">
                                                <label for="nf-email"
													class=" form-control-label">Email</label>
                                                <input type="email"
													id="nf-email" name="nf-email" placeholder="Enter Email.."
													class="form-control">
                                                <span class="help-block">Please enter your email</span>
                                            </div>
                                            <div class="form-group">
                                                <label for="nf-password"
													class=" form-control-label">Password</label>
                                                <input type="password"
													id="nf-password" name="nf-password"
													placeholder="Enter Password.." class="form-control">
                                                <span class="help-block">Please enter your password</span>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="card-footer">
                                        <button type="submit"
											class="btn btn-primary btn-sm">
                                            <i
												class="fa fa-dot-circle-o"></i> Submit
                                        </button>
                                        <button type="reset"
											class="btn btn-danger btn-sm">
                                            <i class="fa fa-ban"></i> Reset
                                        </button>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-header">
                                        Input
                                        <strong>Grid</strong>
                                    </div>
                                    <div class="card-body card-block">
                                        <form action="" method="post"
											class="form-horizontal">
                                            <div class="row form-group">
                                                <div
													class="col col-sm-3">
                                                    <input type="text"
														placeholder=".col-sm-3" class="form-control">
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div
													class="col col-sm-4">
                                                    <input type="text"
														placeholder=".col-sm-4" class="form-control">
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div
													class="col col-sm-5">
                                                    <input type="text"
														placeholder=".col-sm-5" class="form-control">
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div
													class="col col-sm-6">
                                                    <input type="text"
														placeholder=".col-sm-6" class="form-control">
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div
													class="col col-sm-7">
                                                    <input type="text"
														placeholder=".col-sm-7" class="form-control">
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div
													class="col col-sm-8">
                                                    <input type="text"
														placeholder=".col-sm-8" class="form-control">
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div
													class="col col-sm-9">
                                                    <input type="text"
														placeholder=".col-sm-9" class="form-control">
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div
													class="col col-sm-10">
                                                    <input type="text"
														placeholder=".col-sm-10" class="form-control">
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div
													class="col col-sm-11">
                                                    <input type="text"
														placeholder=".col-sm-11" class="form-control">
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div
													class="col col-sm-12">
                                                    <input type="text"
														placeholder=".col-sm-12" class="form-control">
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="card-footer">
                                        <button type="submit"
											class="btn btn-primary btn-sm">
                                            <i class="fa fa-user"></i> Login
                                        </button>
                                        <button type="reset"
											class="btn btn-danger btn-sm">
                                            <i class="fa fa-ban"></i> Reset
                                        </button>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-header">
                                        Input
                                        <strong>Sizes</strong>
                                    </div>
                                    <div class="card-body card-block">
                                        <form action="" method="post"
											class="form-horizontal">
                                            <div class="row form-group">
                                                <div
													class="col col-sm-5">
                                                    <label
														for="input-small" class=" form-control-label">Small
                                                        Input</label>
                                                </div>
                                                <div
													class="col col-sm-6">
                                                    <input type="text"
														id="input-small" name="input-small"
														placeholder=".form-control-sm"
														class="input-sm form-control-sm form-control">
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div
													class="col col-sm-5">
                                                    <label
														for="input-normal" class=" form-control-label">Normal
                                                        Input</label>
                                                </div>
                                                <div
													class="col col-sm-6">
                                                    <input type="text"
														id="input-normal" name="input-normal" placeholder="Normal"
														class="form-control">
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div
													class="col col-sm-5">
                                                    <label
														for="input-large" class=" form-control-label">Large
                                                        Input</label>
                                                </div>
                                                <div
													class="col col-sm-6">
                                                    <input type="text"
														id="input-large" name="input-large"
														placeholder=".form-control-lg"
														class="input-lg form-control-lg form-control">
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="card-footer">
                                        <button type="submit"
											class="btn btn-primary btn-sm">
                                            <i
												class="fa fa-dot-circle-o"></i> Submit
                                        </button>
                                        <button type="reset"
											class="btn btn-danger btn-sm">
                                            <i class="fa fa-ban"></i> Reset
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="card">
                                    <div class="card-header">
                                        <strong>Validation states</strong> Form
                                    </div>
                                    <div class="card-body card-block">
                                        <div
											class="has-success form-group">
                                            <label for="inputIsValid"
												class=" form-control-label">Input is valid</label>
                                            <input type="text"
												id="inputIsValid"
												class="is-valid form-control-success form-control">
                                        </div>
                                        <div
											class="has-warning form-group">
                                            <label for="inputIsInvalid"
												class=" form-control-label">Input is
                                                invalid</label>
                                            <input type="text"
												id="inputIsInvalid" class="is-invalid form-control">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="card">
                                    <div class="card-header">
                                        <strong>Validation states</strong> with optional icons
                                        <em>(deprecated)</em>
                                    </div>
                                    <div class="card-body card-block">
                                        <div
											class="has-success form-group">
                                            <label for="inputSuccess2i"
												class=" form-control-label">Input with
                                                success</label>
                                            <input type="text"
												id="inputSuccess2i"
												class="form-control-success form-control">
                                        </div>
                                        <div
											class="has-warning form-group">
                                            <label for="inputWarning2i"
												class=" form-control-label">Input with
                                                warning</label>
                                            <input type="text"
												id="inputWarning2i"
												class="form-control-warning form-control">
                                        </div>
                                        <div
											class="has-danger has-feedback form-group">
                                            <label for="inputError2i"
												class=" form-control-label">Input with
                                                error</label>
                                            <input type="text"
												id="inputError2i" class="form-control-danger form-control">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="card">
                                    <div class="card-header">
                                        <strong>Icon/Text</strong> Groups
                                    </div>
                                    <div class="card-body card-block">
                                        <form action="" method="post"
											class="form-horizontal">
                                            <div class="row form-group">
                                                <div
													class="col col-md-12">
                                                    <div
														class="input-group">
                                                        <div
															class="input-group-addon">
                                                            <i
																class="fa fa-user"></i>
                                                        </div>
                                                        <input
															type="text" id="input1-group1" name="input1-group1"
															placeholder="Username" class="form-control">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div
													class="col col-md-12">
                                                    <div
														class="input-group">
                                                        <input
															type="email" id="input2-group1" name="input2-group1"
															placeholder="Email" class="form-control">
                                                        <div
															class="input-group-addon">
                                                            <i
																class="far fa-envelope"></i>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div
													class="col col-md-12">
                                                    <div
														class="input-group">
                                                        <div
															class="input-group-addon">
                                                            <i
																class="fa fa-euro"></i>
                                                        </div>
                                                        <input
															type="text" id="input3-group1" name="input3-group1"
															placeholder=".." class="form-control">
                                                        <div
															class="input-group-addon">.00</div>
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="card-footer">
                                        <button type="submit"
											class="btn btn-success btn-sm">
                                            <i
												class="fa fa-dot-circle-o"></i> Submit
                                        </button>
                                        <button type="reset"
											class="btn btn-danger btn-sm">
                                            <i class="fa fa-ban"></i> Reset
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="card">
                                    <div class="card-header">
                                        <strong>Buttons</strong> Groups
                                    </div>
                                    <div class="card-body card-block">
                                        <form action="" method="post"
											class="form-horizontal">
                                            <div class="row form-group">
                                                <div
													class="col col-md-12">
                                                    <div
														class="input-group">
                                                        <div
															class="input-group-btn">
                                                            <button
																class="btn btn-primary">
                                                                <i
																	class="fa fa-search"></i> Search
                                                            </button>
                                                        </div>
                                                        <input
															type="text" id="input1-group2" name="input1-group2"
															placeholder="Username" class="form-control">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div
													class="col col-md-12">
                                                    <div
														class="input-group">
                                                        <input
															type="email" id="input2-group2" name="input2-group2"
															placeholder="Email" class="form-control">
                                                        <div
															class="input-group-btn">
                                                            <button
																class="btn btn-primary">Submit</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div
													class="col col-md-12">
                                                    <div
														class="input-group">
                                                        <div
															class="input-group-btn">
                                                            <button
																class="btn btn-primary">
                                                                <i
																	class="fa fa-facebook"></i>
                                                            </button>
                                                        </div>
                                                        <input
															type="text" id="input3-group2" name="input3-group2"
															placeholder="Search" class="form-control">
                                                        <div
															class="input-group-btn">
                                                            <button
																class="btn btn-primary">
                                                                <i
																	class="fa fa-twitter"></i>
                                                            </button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="card-footer">
                                        <button type="submit"
											class="btn btn-success btn-sm">
                                            <i
												class="fa fa-dot-circle-o"></i> Submit
                                        </button>
                                        <button type="reset"
											class="btn btn-danger btn-sm">
                                            <i class="fa fa-ban"></i> Reset
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="card">
                                    <div class="card-header">
                                        <strong>Dropdowns</strong> Groups
                                    </div>
                                    <div class="card-body card-block">
                                        <form class="form-horizontal">
                                            <div class="row form-group">
                                                <div
													class="col col-md-12">
                                                    <div
														class="input-group">
                                                        <div
															class="input-group-btn">
                                                            <div
																class="btn-group">
                                                                <button
																	type="button" data-toggle="dropdown"
																	aria-haspopup="true" aria-expanded="false"
																	class="dropdown-toggle btn btn-primary">Dropdown</button>
                                                                <div
																	tabindex="-1" aria-hidden="true" role="menu"
																	class="dropdown-menu">
                                                                    <button
																		type="button" tabindex="0" class="dropdown-item">Action</button>
                                                                    <button
																		type="button" tabindex="0" class="dropdown-item">Another Action</button>
                                                                    <button
																		type="button" tabindex="0" class="dropdown-item">Something else
                                                                        here</button>
                                                                    <div
																		tabindex="-1" class="dropdown-divider"></div>
                                                                    <button
																		type="button" tabindex="0" class="dropdown-item">Separated link</button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <input
															type="text" id="input1-group3" name="input1-group3"
															placeholder="Username" class="form-control">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div
													class="col col-md-12">
                                                    <div
														class="input-group">
                                                        <input
															type="email" id="input2-group3" name="input2-group3"
															placeholder="Email" class="form-control">
                                                        <div
															class="input-group-btn">
                                                            <div
																class="btn-group">
                                                                <button
																	type="button" data-toggle="dropdown"
																	aria-haspopup="true" aria-expanded="false"
																	class="dropdown-toggle btn btn-primary">Dropdown</button>
                                                                <div
																	tabindex="-1" aria-hidden="true" role="menu"
																	class="dropdown-menu">
                                                                    <button
																		type="button" tabindex="0" class="dropdown-item">Action</button>
                                                                    <button
																		type="button" tabindex="0" class="dropdown-item">Another Action</button>
                                                                    <button
																		type="button" tabindex="0" class="dropdown-item">Something else
                                                                        here</button>
                                                                    <div
																		tabindex="-1" class="dropdown-divider"></div>
                                                                    <button
																		type="button" tabindex="0" class="dropdown-item">Separated link</button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div
													class="col col-md-12">
                                                    <div
														class="input-group">
                                                        <div
															class="input-group-btn">
                                                            <div
																class="btn-group">
                                                                <button
																	type="button" data-toggle="dropdown"
																	aria-haspopup="true" aria-expanded="false"
																	class="dropdown-toggle btn btn-primary">Action</button>
                                                                <div
																	tabindex="-1" aria-hidden="true" role="menu"
																	class="dropdown-menu">
                                                                    <button
																		type="button" tabindex="0" class="dropdown-item">Action</button>
                                                                    <button
																		type="button" tabindex="0" class="dropdown-item">Another Action</button>
                                                                    <button
																		type="button" tabindex="0" class="dropdown-item">Something else
                                                                        here</button>
                                                                    <div
																		tabindex="-1" class="dropdown-divider"></div>
                                                                    <button
																		type="button" tabindex="0" class="dropdown-item">Separated link</button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <input
															type="text" id="input3-group3" name="input3-group3"
															placeholder=".." class="form-control">
                                                        <div
															class="input-group-btn">
                                                            <div
																class="btn-group">
                                                                <button
																	type="button" data-toggle="dropdown"
																	aria-haspopup="true" aria-expanded="false"
																	class="dropdown-toggle btn btn-primary">Dropdown</button>
                                                                <div
																	tabindex="-1" aria-hidden="true" role="menu"
																	class="dropdown-menu">
                                                                    <button
																		type="button" tabindex="0" class="dropdown-item">Action</button>
                                                                    <button
																		type="button" tabindex="0" class="dropdown-item">Another Action</button>
                                                                    <button
																		type="button" tabindex="0" class="dropdown-item">Something else
                                                                        here</button>
                                                                    <div
																		tabindex="-1" class="dropdown-divider"></div>
                                                                    <button
																		type="button" tabindex="0" class="dropdown-item">Separated link</button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="card-footer">
                                        <button type="submit"
											class="btn btn-success btn-sm">
                                            <i
												class="fa fa-dot-circle-o"></i> Submit
                                        </button>
                                        <button type="reset"
											class="btn btn-danger btn-sm">
                                            <i class="fa fa-ban"></i> Reset
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="card">
                                    <div class="card-header">
                                        Use the grid for big devices!
                                        <small>
                                            <code>.col-lg-*</code>
                                            <code>.col-md-*</code>
                                            <code>.col-sm-*</code>
                                        </small>
                                    </div>
                                    <div class="card-body card-block">
                                        <form action="" method="post"
											class="form-horizontal">
                                            <div class="row form-group">
                                                <div
													class="col col-md-8">
                                                    <input type="text"
														placeholder=".col-md-8" class="form-control">
                                                </div>
                                                <div
													class="col col-md-4">
                                                    <input type="text"
														placeholder=".col-md-4" class="form-control">
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div
													class="col col-md-7">
                                                    <input type="text"
														placeholder=".col-md-7" class="form-control">
                                                </div>
                                                <div
													class="col col-md-5">
                                                    <input type="text"
														placeholder=".col-md-5" class="form-control">
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div
													class="col col-md-6">
                                                    <input type="text"
														placeholder=".col-md-6" class="form-control">
                                                </div>
                                                <div
													class="col col-md-6">
                                                    <input type="text"
														placeholder=".col-md-6" class="form-control">
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div
													class="col col-md-5">
                                                    <input type="text"
														placeholder=".col-md-5" class="form-control">
                                                </div>
                                                <div
													class="col col-md-7">
                                                    <input type="text"
														placeholder=".col-md-7" class="form-control">
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div
													class="col col-md-4">
                                                    <input type="text"
														placeholder=".col-md-4" class="form-control">
                                                </div>
                                                <div
													class="col col-md-8">
                                                    <input type="text"
														placeholder=".col-md-8" class="form-control">
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="card-footer">
                                        <button type="submit"
											class="btn btn-primary btn-sm">Action</button>
                                        <button
											class="btn btn-danger btn-sm">Action</button>
                                        <button
											class="btn btn-warning btn-sm">Action</button>
                                        <button
											class="btn btn-info btn-sm">Action</button>
                                        <button
											class="btn btn-success btn-sm">Action</button>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="card">
                                    <div class="card-header">
                                        Input Grid for small devices!
                                        <small>
                                            <code>.col-*</code>
                                        </small>
                                    </div>
                                    <div class="card-body card-block">
                                        <form action="" method="post"
											class="form-horizontal">
                                            <div class="row form-group">
                                                <div class="col-4">
                                                    <input type="text"
														placeholder=".col-4" class="form-control">
                                                </div>
                                                <div class="col-8">
                                                    <input type="text"
														placeholder=".col-8" class="form-control">
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div class="col-5">
                                                    <input type="text"
														placeholder=".col-5" class="form-control">
                                                </div>
                                                <div class="col-7">
                                                    <input type="text"
														placeholder=".col-7" class="form-control">
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div class="col-6">
                                                    <input type="text"
														placeholder=".col-6" class="form-control">
                                                </div>
                                                <div class="col-6">
                                                    <input type="text"
														placeholder=".col-6" class="form-control">
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div class="col-7">
                                                    <input type="text"
														placeholder=".col-5" class="form-control">
                                                </div>
                                                <div class="col-5">
                                                    <input type="text"
														placeholder=".col-5" class="form-control">
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div class="col-8">
                                                    <input type="text"
														placeholder=".col-8" class="form-control">
                                                </div>
                                                <div class="col-4">
                                                    <input type="text"
														placeholder=".col-4" class="form-control">
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="card-footer">
                                        <button type="submit"
											class="btn btn-primary btn-sm">Action</button>
                                        <button
											class="btn btn-danger btn-sm">Action</button>
                                        <button
											class="btn btn-warning btn-sm">Action</button>
                                        <button
											class="btn btn-info btn-sm">Action</button>
                                        <button
											class="btn btn-success btn-sm">Action</button>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="card">
                                    <div class="card-header">Example Form</div>
                                    <div class="card-body card-block">
                                        <form action="" method="post"
											class="">
                                            <div class="form-group">
                                                <div class="input-group">
                                                    <div
														class="input-group-addon">Username</div>
                                                    <input type="text"
														id="username3" name="username3" class="form-control">
                                                    <div
														class="input-group-addon">
                                                        <i
															class="fa fa-user"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="input-group">
                                                    <div
														class="input-group-addon">Email</div>
                                                    <input type="email"
														id="email3" name="email3" class="form-control">
                                                    <div
														class="input-group-addon">
                                                        <i
															class="fa fa-envelope"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="input-group">
                                                    <div
														class="input-group-addon">Password</div>
                                                    <input
														type="password" id="password3" name="password3"
														class="form-control">
                                                    <div
														class="input-group-addon">
                                                        <i
															class="fa fa-asterisk"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            <div
												class="form-actions form-group">
                                                <button type="submit"
													class="btn btn-primary btn-sm">Submit</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="card">
                                    <div class="card-header">Example Form</div>
                                    <div class="card-body card-block">
                                        <form action="" method="post"
											class="">
                                            <div class="form-group">
                                                <div class="input-group">
                                                    <input type="text"
														id="username2" name="username2" placeholder="Username"
														class="form-control">
                                                    <div
														class="input-group-addon">
                                                        <i
															class="fa fa-user"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="input-group">
                                                    <input type="email"
														id="email2" name="email2" placeholder="Email"
														class="form-control">
                                                    <div
														class="input-group-addon">
                                                        <i
															class="fa fa-envelope"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="input-group">
                                                    <input
														type="password" id="password2" name="password2"
														placeholder="Password" class="form-control">
                                                    <div
														class="input-group-addon">
                                                        <i
															class="fa fa-asterisk"></i>
                                                    </div>
                                                </div>
                                            </div>
                                            <div
												class="form-actions form-group">
                                                <button type="submit"
													class="btn btn-secondary btn-sm">Submit</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="card">
                                    <div class="card-header">Example Form</div>
                                    <div class="card-body card-block">
                                        <form action="" method="post"
											class="">
                                            <div class="form-group">
                                                <div class="input-group">
                                                    <div
														class="input-group-addon">
                                                        <i
															class="fa fa-user"></i>
                                                    </div>
                                                    <input type="text"
														id="username" name="username" placeholder="Username"
														class="form-control">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="input-group">
                                                    <div
														class="input-group-addon">
                                                        <i
															class="fa fa-envelope"></i>
                                                    </div>
                                                    <input type="email"
														id="email" name="email" placeholder="Email"
														class="form-control">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="input-group">
                                                    <div
														class="input-group-addon">
                                                        <i
															class="fa fa-asterisk"></i>
                                                    </div>
                                                    <input
														type="password" id="password" name="password"
														placeholder="Password" class="form-control">
                                                </div>
                                            </div>
                                            <div
												class="form-actions form-group">
                                                <button type="submit"
													class="btn btn-success btn-sm">Submit</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
			
			
	
	</jsp:attribute>
</tmp:adminTemplate>