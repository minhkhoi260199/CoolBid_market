<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</head>
<body>
	<h3>Product List</h3>
	<div>
		<div class="row form-group">
			<div class="col-md-12 appendItem" id="appendItem">
			</div>
		</div>
	</div>
</body>
<script>
	function renderHtml(posItem){
		let html = "";
		html = "
			<div class='col-md-4 form-control'>
				<div class="card" style="width: 18rem;">
				  <img class="card-img-top" src="..." alt="Card image cap">
					  <div class="card-body">
					    <h5 class="card-title">Card title</h5>
					    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
					    <a href="#" class="btn btn-primary">Go somewhere</a>
					  </div>
				</div>
			</div>
		";
		return html;
	}

	function getDataFromServer() {
		$.ajax({
			url: "${pageContext.request.contextPath }/api/product/listProduct",
			method: "POST",
			success: function(res) {
				if (res.result) {
					let products = res.products;
					let html = "";
					for (let i = 0; i < products.list; i++) {
						html += renderHtml(i)
					}
					$("#appendItem").html(html);
				}
			},
			error: function(res) {

			}
		})
	}
	$(document).ready(function() {
		getDataFromServer();
	})
</script>
</html>