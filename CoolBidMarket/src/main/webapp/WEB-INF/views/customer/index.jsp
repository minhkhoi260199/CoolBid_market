<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="tmp" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="ctag" uri="http://customtags.cool"%>
<tmp:customerTemplate title="Cool Bid Market">
	<jsp:attribute name="content">
			<ctag:indexHeader/>
			<ctag:category />
            <!-- MAIN CONTENT-->
            <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="row" id="itemList">

                    </div>

                     <div style="text-align: center; display: flex; justify-content: center">
	                      <button type="button" id="previousButton" style="font-weight: bold; font-size: 25px; margin-right: 10px"> < </button>
		                  <select style="width: 7%;" class="form-control select2" id="paginationSelect" name="paginationSelect" data-placeholder="Select Page" value="">
		                    
		                  </select>
	                      <button type="button" id="nextButton" style="margin-left: 10px; font-weight: bold; font-size: 25px"> > </button>
	                </div>

                </div>
            </div>
            <!-- MAIN CONTENT-->
    <script src = "${pageContext.request.contextPath }/resources/js/common/common.js"></script>
	<script>
		let type = '${type}' != "specialCase" ? ${type} : 0;
		let limit = 12;
		$(".select2").select2({});
		let totalPage = 1;

		function convertSecondToHoursDuration(secondDuration) {
			let hourDuration = 0;
			hourDuration = secondDuration / 3600;
			hourDuration = formatNumberToString(hourDuration, 3);
			return hourDuration;
		}
				
		function renderHtml(item, posItem){
			let html = "";
			let imageName = item.image ? item.image : "demo.png";
			let productName = item.productName ? item.productName : "";
			let startPrice = item.startPrice ? formatNumberToString(item.startPrice,3) : 0;
			let gap = item.gap ? formatNumberToString(item.gap,3) : 0;
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

		function getDataFromServer(page = 1) {
			let keyword = $("#searchProductName").val();
			let keywordParam = "";
			if (keyword != "") {
				keywordParam += "&keyword="+keyword;
			}
			$.ajax({
				url: "${pageContext.request.contextPath }/api/customer/listAvailableProduct?page="+page+"&length="+limit+keywordParam+"&type="+type,
				method: "POST",
				success: function(res) {
					if (res) {
						if (res.customerProducts) {
							let products = res.customerProducts;
							let html = "";
							for (let i = 0; i < products.length; i++) {
								html += renderHtml(products[i],i);
							}
							$("#itemList").html(html);
						}
						if (res.totalProducts) {
							let totalRecord = res.totalProducts || 0;
							totalPage = formatNumberToString(totalRecord / 12, 4);
							totalPage = formatStringToNumber(totalPage, 4);
							if (totalRecord == 0) {
								totalPage = 1;
							}
							if (totalRecord%12 != 0) {
								totalPage = totalPage + 1;
							}
						}
					}
					let html = "";
					for (let i = 1; i <= totalPage; i++) {
						let iString = formatNumberToString(i, 4);
						html += '<option value="'+iString+'">'+iString+'/'+totalPage+'</option>';
					}
					$("#paginationSelect").html(html);
					$("#paginationSelect").val(page).trigger("change");
				},
				error: function(res) {

				}
			})
		}

		$("#previousButton").on("click", function() {
			changePageFunction(-1);
		})
		
		$("#nextButton").on("click", function() {
			changePageFunction(1);
		})
		
		async function changePageFunction(editChangePage) {
			let currentPageString = $("#paginationSelect").val();

			let currentPage = 1;
			if (currentPageString) {
				currentPage = formatStringToNumber(currentPageString, 4);
			}

			if ( (currentPage > 1 && editChangePage == -1) || (currentPage < totalPage && editChangePage == 1) ) {
				let changePage = currentPage + editChangePage;
				changePage = formatNumberToString(changePage, 4);
				$("#paginationSelect").val(changePage).trigger("change").trigger("select2:select");
			}
		}

		$("#paginationSelect").on("select2:select", function() {
			getDataFromServer($(this).val());
		});
		
		$(document).ready(function() {
			getDataFromServer();
		})
		
		$("#searchButton").on("click", function() {
			getDataFromServer(1);
		});
		
	</script>
	</jsp:attribute>
</tmp:customerTemplate>