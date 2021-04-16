<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="tmp" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="ctag" uri="http://customtags.cool" %>
<tmp:customerTemplate title="Cool Bid Market">
	<jsp:attribute name="content">
			<ctag:category/>
            <!-- MAIN CONTENT-->
            <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="row" id="itemList">

                    </div>

                        <!--Pagination-->
                        <ul class="pagination home-product__pagination">
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

                </div>
            </div>
            <!-- MAIN CONTENT-->
	<script>
		let start = 0;
		let limit = 12;
		function formatNumberToString(number, type){
		    if (number == null) {
		        number = 0;
		    }
		    if (type == 1) {
		        number = number.toString();
		        let num1 = parseFloat(number);
		        return num1.toLocaleString("vi");
		    } else if (type == 2) {
		        number = Math.round((parseFloat(number) + Number.EPSILON) * 10) / 10;
		        number = number.toString();
		        let arrayNumber = number.split(".");
		        let num1 = arrayNumber[0];
		        let num2 = arrayNumber[1];
		        num1 = parseFloat(num1).toLocaleString("en");
		        if (num2 > 0) {
		            num1 = num1 + "." + num2;
		        }
		        return num1;
		    }
		}

		function convertSecondToHoursDuration(secondDuration) {
			let hourDuration = 0;
			hourDuration = secondDuration / 3600;
			hourDuration = formatNumberToString(hourDuration, 2);
			return hourDuration;
		}
				
		function renderHtml(item, posItem){
			let html = "";
			let imageName = item.image ? item.image : "demo.png";
			let productName = item.productName ? item.productName : "";
			let startPrice = item.startPrice ? formatNumberToString(item.startPrice,2) : 0;
			let gap = item.gap ? formatNumberToString(item.gap,2) : 0;
			let statusId = item.status ? item.status : 4;
			let status = "SOLD";

			let id = item.id ? item.id : "";
			let className = "badge badge-danger float-right mt-1";
			if (statusId == 4) {
				status = "ON AUCTION";
				className = "badge badge-success float-right mt-1";
			}

			let seconDuration = item.amountTime ? item.amountTime : 0;
			let hourDuration = convertSecondToHoursDuration(seconDuration);
			html = `
				<div class='col-md-3'>
					<a href="${pageContext.request.contextPath }/auction?id=`+id+`">
		            <div class='card'>
		                <img style="width: 400px; height: 250px" class='card-img-top' src='${pageContext.request.contextPath }/uploads/images/`+imageName+`' alt='Card image cap'>
		                <div class='card-body'>
		                    <h4 class='card-title mb-3'>`+productName+`</h4>
		                    <p class='card-text' style='font-weight: bolder;'>Start Price: `+startPrice+`$
		                    </p>
		                    <p class='card-text'>Min per bid: + `+gap+`$
		                    </p>
		                    <p class='card-text'>Bidding for `+hourDuration+` hours
		                    </p>
		                    <small>
		                        <span class='`+className+`'>`+status+`</span>
		                    </small>
		                </div>
		            </div>
		        </div>
			`;
			return html;
		}

		function getDataFromServer() {
			$.ajax({
				url: "${pageContext.request.contextPath }/api/customer/listAvailableProduct?start="+start+"&length="+limit,
				method: "POST",
				success: function(res) {
					console.log(res);
		
					if (res) {
						let products = res;
						let html = "";
						for (let i = 0; i < products.length; i++) {
							html += renderHtml(products[i],i);
						}
						$("#itemList").html(html);
					}
				},
				error: function(res) {

				}
			})
		}
		
		function getDataFromServer1() {
			let html = "";
			for (let i = 0; i < 12; i++) {
				html += renderHtml(i);
			}
			$("#itemList").html(html);
		}
		$(document).ready(function() {
			getDataFromServer();
		})
	</script>
	</jsp:attribute>
</tmp:customerTemplate>