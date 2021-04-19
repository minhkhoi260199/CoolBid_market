<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="tmp" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="ctag" uri="http://customtags.cool"%>
<tmp:customerTemplate title="Auction Detail">
	<jsp:attribute name="content">
	
	<ctag:category />
		            <div class="main-content">
                		<div class="section__content section__content--p30">
	                        <div class="row">
	                            <div class="col-md-8">
	                                <h2 class="title-1 m-b-25">Product</h2>
	                                <div class="card">
	                                    <div style="height: 20px;"></div>
	                                    <div class="row">
	                                        <div class="col-md-4">
	                                            <img class="card-img-top" id="imgProduct" src="${pageContext.request.contextPath }/resources/images/prd_img_4.jpg"
														alt="Card image cap" sizes="cover">
	                                        </div>
	                                        <div class="col-md-4" style="padding: 30px;">
	                                            <h4 class="card-title mb-3" id="nameProduct">LS2 Motorcycle Helmet</h4>
	                                            <p class="card-text" style="font-weight: bolder;" id="priceProduct">Start Price: 100$</p>
	                                            <p class="card-text" id="bidProduct">Min per bid: +2$</p>
	                                             <p class="card-text" id="sellerProduct">
	                                            	Category: <span id = "category_name"></span>
	                                            </p>
	                                             <p class="card-text" id="sellerProduct">
	                                            	Seller: <span id = "seller_name"></span>
	                                            </p>
	                                            <small id="statusProduct">
	                                                <span class="badge badge-success float-right mt-1" id="" style="width: 100px; height: 30px;vertical-align: middle !important;text-align: center;padding-top: 9px !important;font-size: 12px;">BIDDING</span>
	                                            </small>
	                                        </div>
	                                        <div class="col-md-4" style="padding: 50px; border-left: #666666 solid 1px;">
	                                            <div class="row" style="padding: 20px;">
	                                                <p id="demo" style="font-size: 20px; font-weight: bolder; color: red; float: right; margin-bottom: 30px;"></p>
	                                            </div>
	                                            <div class="row">
		                                            <form action="" method="" class="form-horizontal">
		                                                <div class="row form-group">
		                                                    <div class="col col-md-12">
		                                                        <div class="input-group">
		                                                            <div class="input-group-addon">
		                                                                <i class="fa fa-euro"></i>
		                                                            </div>
		                                                            <input type="text" id="bid_price" name="bid_price" placeholder="..." class="form-control">
		                                                        </div>
		                                                    </div>
		                                                </div>
		                                                <button type="button" id="acceptBid" class="btn btn-success btn-sm" style="float: right; padding: 5px 20px;">
		                                                    <i class="fa fa-dot-circle-o"></i> BID
		                                                </button>
		                                            </form>
	                                            </div>
	                                        </div>
	                                    </div>
	                                    <hr>
	                                    <div class="row">
	                                        <div class="col-md-12" style="padding: 60px;" id="descriptionProduct">

	                                        </div>
	                                    </div>
	                                </div>
	                            </div>
	                            <div class="col-lg-4">
	                                <h3 class="title-1 m-b-25">Auction</h3>
	                                <div class="table-responsive table--no-card m-b-40">
	                                    <table class="table table-borderless table-striped table-earning">
	                                        <thead>
	                                            <tr>
	                                                <th>Time</th>
	                                                <th>Name</th>
	                                                <th>Price</th>
	                                            </tr>
	                                        </thead>
	                                    </table>
	                                    <div style="overflow-y: scroll; height: 300px;">
	                                        <table id ="tableAuction" class="table table-borderless table-striped table-earning">
	                                            <tbody id="bodyAuction">
	                                         
	                                            </tbody>
	                                		</table>
	                                    </div>
	                                </div>
	                                <div style="text-align:center; display: flex; justify-content: center">
	                                		<button type="button" id="previousButton" style="font-weight: bold; font-size: 25px; margin-right:10px"> < </button>
		                                	<select style="width:20%" class="form-control select2" id="paginationSelect" name="paginationSelect" data-placeholder="Select Page" value="">
		                                		<option value="1" selected>1/2</option>
		                                		<option value="2">2/2</option>
		                                	</select>
	                                		<button type="button" id="nextButton" style="margin-left:10px; font-weight: bold; font-size: 25px"> > </button>
	                                </div>
	                            </div>
                            </div>
                        </div>
                    </div>

        <script src = "${pageContext.request.contextPath }/resources/js/common/common.js"></script>
		<script>
			$(".select2").select2({});
			let id = ${id};

		
			function appendToTable(res) {
				let html = "";
				for(let i = 0; i < res.length; i++) {
					let timeAuction = formatDate(res[i].auctionTime);
					let fullName = res[i].fullName ? res[i].fullName : "";
					let price = res[i].price ? formatNumberToString(res[i].price, 2) : 0;
					html += `
						<tr>
							<td>`+timeAuction+`</td>
							<td>`+fullName+`</td>
							<td>$`+price+`</td>
						</tr>
						`;
					
				}
				$("#bodyAuction").html(html);
			}

			$("#acceptBid").on("click", function() {
				let bid_price = $("#bid_price").val();

				let dataSent = {bid_price: $("#bid_price").val(),product_id: id,};
				let stringSent = JSON.stringify(dataSent);

				$.ajax({
					url: "${pageContext.request.contextPath}/api/auction/bidSubmit?bid_price="+bid_price+"&product_id="+id,
					method: "POST",
					type: "JSON",
					success: function (res) {
						if (res.status) {
							swal({
								title: "Success",
								text: "Bidding Successfully",
								icon: "success",
								button: "Close",
							}).then((value) => {
								appendToTable(res.auctionProducts);
							})
						} else {
							swal({
								title: "Warning",
								text: "Bidding Failed",
								icon: "warning",
								button: "Close",
							});
						}			
					}
				});
				let checkCurrentPage = $("#paginationSelect").val() ? $("#paginationSelect").val() : 1;
				getListAuction(checkCurrentPage);
			});

			function getListAuction(numberPage) {
				$.ajax({
					url: "${pageContext.request.contextPath}/api/auction/getAuctionList?id="+id+"&numberPage="+numberPage,
					method: "GET",
					success: function(res) {
						let selectedValue = $("#paginationSelect").val()
						let totalRecord = res.totalRecord ? res.totalRecord : 0;
						totalPage = Math.round(totalRecord / 10);
						if (totalPage == 0) {
							totalPage = 1;
						}
						let auctionProducts = res.auctionProducts;
						appendToTable(auctionProducts);
						let html = "";
						for (let i = 1; i <= totalPage; i++) {
							let iString = formatNumberToString(i, 2);
							html += '<option value="'+iString+'">'+iString+'/'+totalPage+'</option>';
						}
						$("#paginationSelect").html(html);
						$("#paginationSelect").val(selectedValue).trigger("change");
					}
				});
			}
			let totalPage = 1;
			function getDataFromServer() {
				$.ajax({
					url: "${pageContext.request.contextPath}/api/auction/getDetail?id="+id,
					method: "GET",
					success: function(res) {
						console.log(res);
						if (res != null && res.status) {
							if (res.customerProducts != null) {
								let customerProduct = res.customerProducts;
								let imageName = customerProduct.image ? customerProduct.image : "demo.png";
								let sourceImg = "${pageContext.request.contextPath }/uploads/images/"+imageName;
								let productName = customerProduct.productName ? customerProduct.productName : "";
								let startPrice = customerProduct.startPrice ? formatNumberToString(customerProduct.startPrice, 2) : 0;
								let categoryName = customerProduct.categoryName ? customerProduct.categoryName : "";
								let sellerName = customerProduct.sellerName ? customerProduct.sellerName : "";
								let description = customerProduct.description ? customerProduct.description : "";
								$("#imgProduct").attr("src", sourceImg);
								$("#imgProduct").css("height", "350px");
								$("#nameProduct").html(productName);
								$("#priceProduct").html("Start Price: "+startPrice+"$");
								$("#category_name").html(categoryName);
								$("#seller_name").html(sellerName);
								$("#descriptionProduct").html(description);

								let gap = customerProduct.gap ? formatNumberToString(customerProduct.gap, 2) : 0;
								//Min per bid: +2$
								$("#bidProduct").html("Min per bid: +" + gap + "$" );
								let dateTime = "";
								let defautStartTime = "";
								if (customerProduct.startTime) {
									defautStartTime = customerProduct.startTime;
									let second = customerProduct.amountTime ? customerProduct.amountTime : 0;
									dateTime = formatDateSpecial(defautStartTime, second);
								}
								countDown(dateTime, defautStartTime);
							}

							if (res.auctionProducts != null) {
								appendToTable(res.auctionProducts);
							}

							let totalRecord = res.totalRecord ? res.totalRecord : 0;
							totalPage = Math.round(totalRecord / 10);
							if (totalPage == 0) {
								totalPage = 1;
							}
							let html = "";
							for (let i = 1; i <= totalPage; i++) {
								let iString = formatNumberToString(i, 2);
								let selected = "";
								if (i == 1) {
									selected = "selected";
								}
								html += '<option value="'+iString+'" '+selected+'>'+iString+'/'+totalPage+'</option>';
							}
							$("#paginationSelect").html(html);
						}
					}
				})
			}

			$(document).ready(function() {
				getDataFromServer();
			});
			// Set the date we're counting down to

			// Update the count down every 1 second
			function countDown(dateTime, defautStartTime) {
				var x = setInterval(function() {
					
					// Get today's date and time
					var now = new Date().getTime();
					var countDownDate = new Date(dateTime).getTime();

					var startTimeCheck = new Date(defautStartTime).getTime();

					if (dateTime != "" && defautStartTime != "" && now > startTimeCheck) {
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
							$("#acceptBid").prop("disabled", true);
							$("#statusProduct").html(`<span class="badge badge-danger float-right mt-1" id="" style="width: 100px; height: 30px;vertical-align: middle !important;text-align: center;padding-top: 9px !important;font-size: 12px;">SOLD</span>`);
						}
					} else {
						document.getElementById("demo").innerHTML = "COMING SOON";
						$("#acceptBid").prop("disabled", true);
						$("#statusProduct").html(`<span class="badge badge-success float-right mt-1" id="" style="width: 100px; height: 30px;vertical-align: middle !important;text-align: center;padding-top: 9px !important;font-size: 12px;">COMING SOON</span>`);
					}
				}, 1000);
			}

			$("#previousButton").on("click", function() {
				changePageFunction(-1);
			})
			
			$("#nextButton").on("click", function() {
				changePageFunction(1);
			})

			$(document).on("select2:select", "#paginationSelect", function() {
				getListAuction($(this).val())
			});
			
			async function changePageFunction(editChangePage) {
				let currentPageString = $("#paginationSelect").val();

				let currentPage = 0;
				if (currentPageString) {
					currentPage = formatStringToNumber(currentPageString, 2);
				}

				if ( (currentPage > 1 && editChangePage == -1) || (currentPage < totalPage && editChangePage == 1) ) {
					let changePage = currentPage + editChangePage;
					changePage = formatNumberToString(changePage, 2);
					$("#paginationSelect").val(changePage).trigger("change").trigger("select2:select");
				}
			}
	
		</script>
	</jsp:attribute>
</tmp:customerTemplate>