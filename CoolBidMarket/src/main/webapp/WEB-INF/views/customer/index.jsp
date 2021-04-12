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
		function renderHtml(posItem){
			let html = "";
			html = `
				<div class='col-md-3'>
					<a href="${pageContext.request.contextPath }/auction">
		            <div class='card'>
		                <img class='card-img-top' src='${pageContext.request.contextPath }/resources/images/prd_img_3.jpg' alt='Card image cap'>
		                <div class='card-body'>
		                    <h4 class='card-title mb-3'>YOHE Motorcycle Helmet</h4>
		                    <p class='card-text' style='font-weight: bolder;'>Current Price: 119$
		                    </p>
		                    <p class='card-text'>Min per bid: +1$
		                    </p>
		                    <p class='card-text'>Bidding for 24 hours
		                    </p>
		                    <small>
		                        <span class='badge badge-danger float-right mt-1'>SOLD</span>
		                    </small>
		                </div>
		            </div>
		        </div>
			`;
			return html;
		}

		function getDataFromServer() {
			$.ajax({
				url: "${pageContext.request.contextPath }/api/product/listProduct?start="+start+"&length="+limit,
				method: "POST",
				success: function(res) {
					console.log(res);
					return;
					if (res.result) {
						let products = res.products;
						let html = "";
						for (let i = 0; i < products.list.length; i++) {
							html += renderHtml(i)
						}
						$("#appendItem").html(html);
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