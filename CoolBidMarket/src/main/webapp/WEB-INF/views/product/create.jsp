<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/css/select2.min.css">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/js/select2.full.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</head>
<body>
	<h3>Create Product</h3>
	<div>
		<form>
			Name: <input type="text" id="name" name="name">
			Description: <input type="text" id="description" name="description">
			Start Price: <input type="text" id="start_price" name="start_price">
			Gap: <input type="text" id="gap" name="gap">
			<button type="button" id="btnSubmit">Submit</button>
		</form>
	</div>
</body>
<script>
	$(".select2").select2({
		allowClear: true,
	});
	function appendToSelectBox(id, data){
		let html = "<option></option>";
		for(let i = 0; i < data.length; i++) {
			let item = data[i];
			html += '<option value="'+item.id+'">'+item.name+'</option>';
		}
		$('#'+id).append(html);
	}
	function getData(){
		$.ajax({
			url: "${pageContext.request.contextPath }/api/user/getRoleList",
			type: "GET",
			success: function(res) {
				appendToSelectBox("role", res);
			},
			error: function(res) {
				appendToSelectBox("role", []);
			}
		})
	}
	$(document).ready(function(){
		//getData();
		$("#btnSubmit").on("click", function(){
			let data = {
					"gap": $("#gap").val(),
					"startPrice": $("#start_price").val(),
					"description": $("#description").val(),
					"name": $("#name").val(),
				};
			$.ajax({
				url:"${pageContext.request.contextPath }/api/product/create",
				type: "POST",
				data: JSON.stringify(data),
				contentType: "application/json",
				dataType: 'json',
				success: function(res){
					if (res.result && res.errors && res.errors.length == 0) {
						console.log("Thanh cong");
						window.location.href = "${pageContext.request.contextPath }/product/index";
					} else {
						console.log(res);
						for (let i = 0; i < res.errors.length; i++) {
							let error = res.errors[i];
							let code = error.code;
							let nameError = error.field;
							let errorLine = "";
							if (code == "NotEmpty") {
								errorLine = "Can't be empty";
							}
							console.log(nameError, errorLine);
						}
					}
				},
				error: function(res){
					console.log("Error Web");
				}
			})	
		});
	})
</script>
</html>