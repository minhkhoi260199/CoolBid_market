<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
                            <h1 class="title-4">- CATEGORIES -
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
                        <div class="col-md-7" style="margin: auto">
                            <!-- DATA TABLE -->
                            <h3 class="title-5 m-b-35">Categories table</h3>
                            <div class="table-data__tool">
                                <div id="addCategory" class="table-data__tool-right">
                                    <button onClick="createCategory()" class="au-btn au-btn-icon au-btn--green au-btn--small">
                                        <i class="zmdi zmdi-plus"></i>add item</button>
                                </div>
                            </div>
                            <div
								class="table-responsive table-responsive-data2">
                                <table class="table table-data2">
                                    <thead>
                                        <tr>
                                            <th>Category ID</th>
                                            <th>Category Name</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
	                                    <c:forEach var="category" items="${categories }">
                                        <tr class="tr-shadow">
                                            <td>${category.id }</td>
                                            <td id="categoryName_${category.id }">${category.name }</td>                            
                                            <td>
                                                <div class="table-data-feature">
                                                    <button class="item" onClick="edit(${category.id},'${category.name }')" title="Edit">
                                                        <i class="zmdi zmdi-edit"></i>
                                                    </button>
                                                    <button class="item" onClick="remove(${category.id})" title="Delete">
                                                        <i class="zmdi zmdi-delete"></i>
                                                    </button>
                                                </div>
                                            </td>
                                            
                                        </tr>
                                        </c:forEach>
                                        <tr class="spacer"></tr>
                                    </tbody>
                                </table>
                            </div>
                            <!-- END DATA TABLE -->
                        </div>
                    </div>
                </div>
            </section>
            
            <script type="text/javascript">
            	function createCategory(){
					$(`#addCategory`).html(`<h4>New category:</h4><br/><div style="float: left; padding: 2px; border: 1px solid grey"><input id="inputNewCate" type="text" placeholder="type new category"/></div>`
							+ `<button style="margin-left: 20px" type="button" title="Submit" onClick="create()" class="btn btn-success btn-sm"><i class="zmdi zmdi-check"></i></button>`
							+ `<button type="button" title="Cancel" onClick="closeForm()" class="btn btn-danger btn-sm"><i class="zmdi zmdi-close"></i></button>`);
                }
                function create(){
					let newValue = $(`#inputNewCate`).val();
					let data = {
							"name": newValue,
						};
					$.ajax({
							url: "${pageContext.request.contextPath }/api/product/createCategory",
							method: "POST",
							data: JSON.stringify(data),
							contentType: "application/json",
							dataType: 'json',
							success: function(res) {
							}
						})
					location.reload();
				}
				function closeForm(){
					$(`#addCategory`).html(`<button onClick="createCategory()" class="au-btn au-btn-icon au-btn--green au-btn--small"><i class="zmdi zmdi-plus"></i>add item</button>`);
				}
				function edit(id, name){
					console.log('EDIT');
					let contentId = `#categoryName_`+ id;
					console.log(contentId);
					console.log(name);
					$(contentId).html(`<div style="float: left; padding: 2px; border: 1px solid grey"><input id="edit_`+ id +`" type="text" value="`+ name +`"/>`
							+ `<button type="button" title="Submit" onClick="submit(`+id+`)" class="btn btn-success btn-sm"><i class="zmdi zmdi-check"></i></button>`
							+ `<button type="button" title="Cancel" onClick="cancel(`+id+`,'`+name+`')" class="btn btn-danger btn-sm"><i class="zmdi zmdi-close"></i></button></div>`
							);
				}
				function cancel(id, content){
					let contentId = `#categoryName_`+ id;
					$(contentId).html(content);
				}
				
				function submit(id){
					let editId = `#edit_`+ id;
					let newValue = $(editId).val();
					let data = {
							"id": id,
							"name": newValue,
						};
					if ( id != "") {
						$.ajax({
							url: "${pageContext.request.contextPath }/api/product/createCategory",
							method: "POST",
							data: JSON.stringify(data),
							contentType: "application/json",
							dataType: 'json',
							success: function(res) {
			
							}
						})
						cancel(id, newValue);
					}
				}
				function remove(id){
					if ( id != "") {
						$.ajax({
							url: "${pageContext.request.contextPath }/api/product/deleteCategory?id="+id,
							method: "POST",
							success: function(res) {
							}
						})
						location.reload();
					}
				}
            </script>
            <!-- END DATA TABLE-->
	</jsp:attribute>
</tmp:adminTemplate>