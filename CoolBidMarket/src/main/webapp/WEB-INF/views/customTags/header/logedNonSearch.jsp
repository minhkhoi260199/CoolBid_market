<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
            <header class="header-desktop">
                <aside class="menu-sidebar d-none d-lg-block">
                    <div class="logo">
                        <a href="${pageContext.request.contextPath }">
                            <img src="${pageContext.request.contextPath }/resources/images/icon/logo-market.png" alt="Cool Market" />
                        </a>
                    </div>
                </aside>
        
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="header-wrap">
                            <form class="form-header" action="" method="POST">
                                <input class="au-input au-input--xl" type="text" name="search" id="searchProductName" placeholder="Search for datas &amp; reports..." />
                                <button class="au-btn--submit" type="button" id="searchButton">
                                    <i class="zmdi zmdi-search"></i>
                                </button>
                            </form>
                            <a href="${pageContext.request.contextPath }/buyer">
                                                        <button type="button" class="btn btn-success btn-sm">
                                <i class="zmdi zmdi-shopping-cart"></i>&nbsp; Your Autions</button>
                            </a>
                            <div class="header-button">
                                <div class="noti-wrap">
                                    <div class="noti__item js-item-menu">
                                        <i class="zmdi zmdi-notifications"></i>
                                        <span class="quantity">3</span>
                                        <div class="notifi-dropdown js-dropdown">
                                            <div class="notifi__title">
                                                <p>You have 3 Notifications</p>
                                            </div>
                                            <div class="notifi__item">
                                                <div class="bg-c1 img-cir img-40">
                                                    <i class="zmdi zmdi-email-open"></i>
                                                </div>
                                                <div class="content">
                                                    <p>You got a email notification</p>
                                                    <span class="date">April 12, 2018 06:50</span>
                                                </div>
                                            </div>
                                            <div class="notifi__item">
                                                <div class="bg-c2 img-cir img-40">
                                                    <i class="zmdi zmdi-account-box"></i>
                                                </div>
                                                <div class="content">
                                                    <p>Your account has been blocked</p>
                                                    <span class="date">April 12, 2018 06:50</span>
                                                </div>
                                            </div>
                                            <div class="notifi__item">
                                                <div class="bg-c3 img-cir img-40">
                                                    <i class="zmdi zmdi-file-text"></i>
                                                </div>
                                                <div class="content">
                                                    <p>You got a new file</p>
                                                    <span class="date">April 12, 2018 06:50</span>
                                                </div>
                                            </div>
                                            <div class="notifi__footer">
                                                <a href="${pageContext.request.contextPath }/resources/#">All notifications</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="account-wrap">
                                    <div class="account-item clearfix js-item-menu">
                                        <div class="image">
                                            <img src="${pageContext.request.contextPath }/resources/images/icon/avatar-01.jpg" alt="John Doe" />
                                        </div>
                                        <div class="content">
                                            <a class="js-acc-btn" href="${pageContext.request.contextPath }/resources/#">${users.username }</a>
                                        </div>
                                        <div class="account-dropdown js-dropdown">
                                            <div class="info clearfix">
                                                <div class="image">
                                                    <a href="${pageContext.request.contextPath }/resources/#">
                                                        <img src="${pageContext.request.contextPath }/resources/images/icon/avatar-01.jpg" alt="John Doe" />
                                                    </a>
                                                </div>
                                                <div class="content">
                                                    <h5 class="name">
                                                        <a href="${pageContext.request.contextPath }/resources/#">${users.name }</a>
                                                    </h5>
                                                    <span class="email">${users.email }</span>
                                                </div>
                                            </div>
                                            <div class="account-dropdown__body">
                                                <div class="account-dropdown__item">
                                                    <a href="${pageContext.request.contextPath }/customer/profile">
                                                        <i class="zmdi zmdi-account"></i>Account</a>
                                                </div>
                                                <div class="account-dropdown__item">
                                                    <a href="${pageContext.request.contextPath }/seller">
                                                        <i class="zmdi zmdi-money"></i>You sell something ?</a>
                                                </div>
                                            </div>
                                            <div class="account-dropdown__footer">
                                                <a href="${pageContext.request.contextPath }/resources/#">
                                                    <i class="zmdi zmdi-power"></i>Logout</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </header>