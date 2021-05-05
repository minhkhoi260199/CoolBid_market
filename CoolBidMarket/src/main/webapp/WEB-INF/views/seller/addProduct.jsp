<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="tmp" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="ctag" uri="http://customtags.cool"%>
<tmp:customerTemplate title="Sell product">
	<jsp:attribute name="content">
		<ctag:nonSearchHeader/>
		<div class="main-content" style="margin-top: 70px;">
			<div class="section__content section__content--p30">
				<div class="container-fluid">
					<div class="row">
						<div class="col-lg-6" style="margin: auto;">
							<div class="card">
								<div class="card-header">
									<strong>Product</strong> Information
								</div>
								<div class="card-body card-block">
									<s:form action="${pageContenxt.request.contextPath }/seller/addProduct" method="post" enctype="multipart/form-data"
												id="formAddProduct" class="form-horizontal" modelAttribute="product">
										<div class="row form-group">
											<div class="col col-md-3">
												<label for="name" class=" form-control-label">Product name :</label> <s:errors path="name" style="color:red; font-style:italic"></s:errors>
											</div>
											<div class="col-12 col-md-9">
												<s:input id="name" name="name"
															placeholder="Enter product name" class="form-control" path="name"/> <small
															class="form-text text-muted">Enter product name</small>
											</div>
										</div>
										<div class="row form-group">
											<div class="col col-md-3">
												<label for="description" class=" form-control-label">Description</label>
											</div>
											<div class="col-12 col-md-9">
												<s:textarea name="description" id="description" rows="9" path="description"
															placeholder="Description..." class="form-control"></s:textarea>
											</div>
										</div>
										<div class="row form-group">
											<div class="col col-md-3">
												<label for="start_price" class=" form-control-label">Start Price</label> <s:errors path="startPrice" style="color:red; font-style:italic"></s:errors>
											</div>
											<div class="col-12 col-md-9">
												<s:input type="text" id="startPrice" name="startPrice" path="startPrice"
															placeholder="Start Price" class="form-control"/>
											</div>
										</div>
										<div class="row form-group">
											<div class="col col-md-3">
												<label for="gap" class=" form-control-label">Gap</label> <s:errors path="gap" style="color:red; font-style:italic"></s:errors>
											</div>
											<div class="col-12 col-md-9">
												<s:input type="text" id="gap" name="gap" path="gap"
															placeholder="Gap" class="form-control"/>
											</div>
										</div>							
										
										<div class="row form-group">
											<div class="col col-md-3">
												<label for="amount_time_id" class=" form-control-label">Amount Time</label> <span  id="error_amount_time_id" style="color:red; font-style:italic"></span>
											</div>
											<div class="col-12 col-md-9">
												<select name="amount_time_id" id="amount_time_id" class="form-control select2" data-placeholder="Select amount time">

												</select>
											</div>
										</div>
										
										<div class="row form-group">
											<div class="col col-md-3">
												<label for="category" class=" form-control-label">Category</label> <span id="error_category" style="color:red; font-style:italic"></span>
											</div>
											<div class="col col-md-9">
												<select name="category" id="category"
															class="form-control select2">
												</select>
											</div>
										</div>
										
										<div class="row form-group">
											<div class="col col-md-3">
												<label for="file-input" class=" form-control-label">Image</label>
											</div>
											<div class="col-12 col-md-9">
												<input type="file" id="file" name="file"
															class="form-control-file">
											</div>
										</div>
									</s:form>
								</div>
								<div class="card-footer">
									<button type="submit" class="btn btn-primary btn-sm" id="submitButton">
										<i class="fa fa-dot-circle-o"></i> Submit
									</button>
									<button type="button" class="btn btn-danger btn-sm" id="resetButton">
										<i class="fa fa-ban"></i> Reset
									</button>
								</div>
							</div>
						</div>
					</div>
					<div class="row"></div>
				</div>
			</div>
		</div>
		<script>
			$(".select2").select2({
				//allowClear: true,
			})
		
			
			function convertSecondToTimeString(distance) {
				var days = Math.floor(distance / (60 * 60 * 24));
				var hours = Math.floor((distance % (60 * 60 * 24))
						/ (60 * 60));
				var minutes = Math.floor((distance % (60 * 60))
						/ (60));
				var seconds = Math.floor((distance % (60)));
				
				let dayString = "";
				if (days > 0) {
					dayString = days + " days ";
				}
				
				let minuteString = "";
				if (minutes > 0) {
					minuteString = minutes + " minutes ";
				}

				let hourString = "";
				if (hours > 0) {
					hourString = hours + " hours ";
				}

				let secondString = "";
				if (seconds > 0) {
					secondString = seconds + " seconds ";
				}
	
				let stringDate = dayString + hourString + minuteString + secondString;
				return stringDate;
			}
			
			function appendToSelectBox(id, data, colValue, colOption){
				let html = "";
				for(let i = 0; i < data.length; i++) {
					let item = data[i];
					if (id == "amount_time_id") {
						html += '<option value="'+item[colValue]+'">'+convertSecondToTimeString(item[colOption])+'</option>'; 
					} else {
						html += '<option value="'+item[colValue]+'">'+item[colOption]+'</option>';
					}
				}
				$('#'+id).append(html);
			}
			function getData(){
				$.ajax({
					url: "${pageContext.request.contextPath }/api/product/getDataList",
					type: "GET",
					success: function(res) {

						if (res.customAmountTimes && res.customAmountTimes.length > 0) {
							appendToSelectBox("amount_time_id", res.customAmountTimes, "id", "amountTimeName");
						}
						if (res.customCategories && res.customCategories.length > 0) {
							appendToSelectBox("category", res.customCategories, "id", "name");
						}

					},
					error: function(res) {

					}
				})
			}
			$(document).ready(function(){
				getData();
				$("#submitButton").on("click", function() {
					if ($("#amount_time_id").val() == "" || $("#amount_time_id").val() == null) {
						$("#error_amount_time_id").html("Can't be empty");
						return;
					}
					if ($("#category").val() == "" || $("#category").val() == null) {
						$("#error_category").html("Can't be empty");
						return;
					}
					$("#formAddProduct").submit();
				})

				$("#resetButton").on("click", function() {
					$("#name").val("");
					$("#description").val("");
					$("#startPrice").val("");
					$("#text").val("");
					$("#startPrice").val("");
					$("#gap").val("");
					$("#amount_time_id").val($("#amount_time_id").find("option:first-child").val()).trigger("change");
					$("#category").val($("#category").find("option:first-child").val()).trigger("change");
					$("#file").val("");
				});

			})
		</script>
	</jsp:attribute>
</tmp:customerTemplate>
