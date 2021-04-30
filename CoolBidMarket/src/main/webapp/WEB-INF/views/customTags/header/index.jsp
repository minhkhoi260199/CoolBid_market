<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<header class="header-desktop">
	<aside class="menu-sidebar d-none d-lg-block">
		<div class="logo">
			<a href="${pageContext.request.contextPath }"> <img
				src="${pageContext.request.contextPath }/resources/images/icon/logo-market.png"
				alt="Cool Market" />
			</a>
		</div>
	</aside>

	<div class="section__content section__content--p30">
		<div class="container-fluid">
			<div class="header-wrap">
				<form class="form-header" action="" method="POST">
					<input class="au-input au-input--xl" type="text" name="search"
						id="searchProductName"
						placeholder="Search for datas &amp; reports..." />
					<button class="au-btn--submit" type="button" id="searchButton">
						<i class="zmdi zmdi-search"></i>
					</button>
				</form>

				<div class="header-button">

					<div class="account-wrap">
						<a href="${pageContext.request.contextPath }/auth/login">
							<button type="button" class="btn btn-success btn-sm">Login</button>
						</a> <a href="${pageContext.request.contextPath }/auth/register">
							<button type="button" class="btn btn-warning btn-sm">Register</button>
						</a>
					</div>

				</div>
			</div>
		</div>
	</div>
</header>