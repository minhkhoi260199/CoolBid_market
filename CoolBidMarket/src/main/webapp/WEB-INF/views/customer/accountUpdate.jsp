<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="tmp" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="ctag" uri="http://customtags.cool"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
<tmp:customerTemplate title="Profile">
	<jsp:attribute name="content">
		<ctag:nonSearchHeader/>
		<div class="main-content" style="margin-top: 70px;">
		<div class="section__content section__content--p30">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-6" style="margin: auto;">
						<div class="card">
							<div class="card-header">
								<strong>Account</strong> Profile
							</div>
							<div class="card-body card-block">
								<s:form action="${pageContext.request.contextPath }/customer/profile" method="post" enctype="multipart/form-data"
											class="form-horizontal" modelAttribute="users">
									<div class="row form-group">
										<div class="col col-md-3">
											<label class=" form-control-label">Username :</label>
										</div>
										<div class="col-12 col-md-9">					
											<s:hidden path="username"/>${users.username }			
											<s:hidden path="password"/>						
											<s:hidden path="status"/>				
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="text-input" class=" form-control-label">Name:</label>
										</div>
										<div class="col-12 col-md-9">
											<s:input path="name" type="text" id="name" name="name"
														placeholder="Name" class="form-control"/><small
														class="form-text text-muted">This is a help text</small>
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="email" class=" form-control-label">Email:</label>
										</div>
										<div class="col-12 col-md-9">
											<s:input path="email" type="email" id="email" name="email"
														placeholder="Email" class="form-control"/> <small
														class="help-block form-text"></small>
										</div>
									</div>									
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="text-input" class=" form-control-label">Phone:</label>
										</div>
										<div class="col-12 col-md-9">
											<s:input path="phone" type="text" id="phone" name="phone"
														placeholder="Enter Address" class="form-control"/> <small
														class="help-block form-text">Please enter your phone</small>
										</div>
									</div>
									<div class="row form-group">
										<div class="col col-md-3">
											<label for="text-input" class=" form-control-label">Address:</label>
										</div>
										<div class="col-12 col-md-9">
											<s:input path="address" type="text" id="address" name="address"
														placeholder="Enter Address" class="form-control"/> <small
														class="help-block form-text">Please enter your email</small>
										</div>
									</div>
									<div class="card-footer">
										<button type="submit" class="btn btn-primary btn-sm">
											<i class="fa fa-dot-circle-o"></i> Submit
										</button>							
									</div>
								</s:form>
							</div>
							
						</div>
					</div>
				</div>
				<div class="row"></div>
			</div>
		</div>
	</div>
		
	</jsp:attribute>
</tmp:customerTemplate>
