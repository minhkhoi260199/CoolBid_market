<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="section__content section__content--p35"
	style="margin-top: 50px; background-color: #666666; height: 50px;">
	<div class="header3-wrap">
		<div class="header__logo"></div>
		<div class="header__navbar">
			<ul class="list-unstyled">
				<c:forEach var="category" items="${categories}">
					<li>
						<a href="${pageContext.request.contextPath }/customer?type=${category.getId()}"> <i class="fas fa-shopping-basket"></i> <span
						class="bot-line"></span>${category.getName() }
						</a>
					</li>
				</c:forEach>
			</ul>
		</div>
	</div>
</div>
