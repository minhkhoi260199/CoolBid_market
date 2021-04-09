<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="tmp" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="ctag" uri="http://customtags.cool"%>
<tmp:customerTemplate title="Auction Detail">
	<jsp:attribute name="content">
	
	<ctag:category/>
	
		            <div class="main-content">
                <div class="section__content section__content--p30">
                        <div class="row">
                            <div class="col-md-8">
                                <h2 class="title-1 m-b-25">Product</h2>
                                <div class="card">
                                    <div style="height: 20px;"></div>
                                    <div class="row">
                                        <div class="col-md-4">
                                            <img class="card-img-top "
										src="${pageContext.request.contextPath }/resources/images/prd_img_4.jpg" alt="Card image cap" sizes="cover">
                                        </div>
                                        <div class="col-md-4"
									style="padding: 30px;">
                                            <h4 class="card-title mb-3">LS2 Motorcycle Helmet</h4>
                                            <p class="card-text"
										style="font-weight: bolder;">Current Price: 100$
                                            </p>
                                            <p class="card-text">Min per bid: +2$
                                            </p>
                                            <p class="card-text">Description<br>Description<br>Description<br>
                                            </p>
                                            <small>
                                                <span
										class="badge badge-success float-right mt-1">BIDDING</span>
                                            </small>
                                        </div>
                                        <div class="col-md-4"
									style="padding: 50px; border-left: #666666 solid 1px;">
                                            <div class="row"
										style="padding: 20px;">
                                                <p id="demo"
											style="font-size: 20px; font-weight: bolder; color: red; float: right; margin-bottom: 30px;"></p>
                                            </div>
                                            <div class="row">
                                            <form action=""
											method="post" class="form-horizontal">
                                                <div
												class="row form-group">
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
                                                        </div>
                                                    </div>
                                                </div>
                                                <button type="submit"
												class="btn btn-success btn-sm"
												style="float: right; padding: 5px 20px;">
                                                    <i
													class="fa fa-dot-circle-o"></i> BID
                                                </button>
        
                                            </form>
                                            </div>
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="col-md-12"
									style="padding: 60px;">
                                            More Detail about description
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <h3 class="title-1 m-b-25">Auction</h3>
                                <div
							class="table-responsive table--no-card m-b-40">
                                    <table
								class="table table-borderless table-striped table-earning">
                                        <thead>
                                            <tr>
                                                <th>Time</th>
                                                <th>Name</th>
                                                <th>Price</th>
                                            </tr>
                                        </thead>
                                    </table>
                                    <div
								style="overflow-y: scroll; height: 300px;">
                                        <table
									class="table table-borderless table-striped table-earning">
                                            <tbody>
                                                <tr>
                                                    <td>2018-09-22 00:43</td>
                                                    <td>United States</td>
                                                    <td
												class="text-right">$119,366.96</td>
                                                </tr>
                                                <tr>
                                                    <td>2018-09-22 00:43</td>
                                                    <td>Australia</td>
                                                    <td
												class="text-right">$70,261.65</td>
                                                </tr>
                                                <tr>
                                                    <td>2018-09-22 00:43</td>
                                                    <td>United Kingdom</td>
                                                    <td
												class="text-right">$46,399.22</td>
                                                </tr>
                                                <tr>
                                                    <td>2018-09-22 00:43</td>
                                                    <td>Turkey</td>
                                                    <td
												class="text-right">$35,364.90</td>
                                                </tr>
                                                <tr>
                                                    <td>2018-09-22 00:43</td>
                                                    <td>Germany</td>
                                                    <td
												class="text-right">$20,366.96</td>
                                                </tr>
                                                <tr>
                                                    <td>2018-09-22 00:43</td>
                                                    <td>France</td>
                                                    <td
												class="text-right">$10,366.96</td>
                                                </tr>
                                                <tr>
                                                    <td>2018-09-22 00:43</td>
                                                    <td>Australia</td>
                                                    <td
												class="text-right">$5,366.96</td>
                                                </tr>
                                                <tr>
                                                    <td>2018-09-22 00:43</td>
                                                    <td>Italy</td>
                                                    <td
												class="text-right">$1639.32</td>
                                                </tr>
                                                <tr>
                                                    <td>2018-09-22 00:43</td>
                                                    <td>United States</td>
                                                    <td
												class="text-right">$119,366.96</td>
                                                </tr>

                                                <tr>
                                                    <td>2018-09-22 00:43</td>
                                                    <td>United States</td>
                                                    <td
												class="text-right">$119,366.96</td>
                                                </tr>

                                                <tr>
                                                    <td>2018-09-22 00:43</td>
                                                    <td>United States</td>
                                                    <td
												class="text-right">$119,366.96</td>
                                                </tr>

                                                <tr>
                                                    <td>2018-09-22 00:43</td>
                                                    <td>United States</td>
                                                    <td
												class="text-right">$119,366.96</td>
                                                </tr>
                                                <tr>
                                                    <td>2018-09-22 00:43</td>
                                                    <td>United States</td>
                                                    <td
												class="text-right">$119,366.96</td>
                                                </tr>
                                            </tbody>
                                </table>
                                        </div>
                                </div>
                            </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
		<script>
			// Set the date we're counting down to
			var countDownDate = new Date("Jan 5, 2022 15:37:25").getTime();

			// Update the count down every 1 second
			var x = setInterval(function() {

				// Get today's date and time
				var now = new Date().getTime();

				// Find the distance between now and the count down date
				var distance = countDownDate - now;

				// Time calculations for days, hours, minutes and seconds
				var days = Math.floor(distance / (1000 * 60 * 60 * 24));
				var hours = Math.floor((distance % (1000 * 60 * 60 * 24))
						/ (1000 * 60 * 60));
				var minutes = Math.floor((distance % (1000 * 60 * 60))
						/ (1000 * 60));
				var seconds = Math.floor((distance % (1000 * 60)) / 1000);

				// Display the result in the element with id="demo"
				document.getElementById("demo").innerHTML = days + "d " + hours
						+ "h " + minutes + "m " + seconds + "s ";

				// If the count down is finished, write some text
				if (distance < 0) {
					clearInterval(x);
					document.getElementById("demo").innerHTML = "EXPIRED";
				}
			}, 1000);
		</script>
		
	
	</jsp:attribute>
</tmp:customerTemplate>