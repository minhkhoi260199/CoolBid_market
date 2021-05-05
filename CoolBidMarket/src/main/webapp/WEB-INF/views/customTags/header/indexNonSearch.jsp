<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<header class="header-desktop">
	<aside class="menu-sidebar d-none d-lg-block">
		<div class="logo">
			<a href="${pageContext.request.contextPath }/customer"> <img
				src="${pageContext.request.contextPath }/resources/images/icon/logo-market.png"
				alt="Cool Market" />
			</a>
		</div>
	</aside>

	<div class="section__content section__content--p30">
		<div class="container-fluid">
			<div class="header-wrap">

				<div class="header-button" style="margin-left: 750px">

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