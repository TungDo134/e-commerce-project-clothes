<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="fixed-top">
    <!-- Start Top Nav -->
    <nav class="navbar navbar-expand-lg bg-dark navbar-light d-none d-lg-block" id="templatemo_nav_top">
        <div class="container text-light">
            <div class="w-100 d-flex justify-content-between">
                <div>
                    <i class="fa fa-envelope mx-2"></i>
                    <a class="navbar-sm-brand text-light text-decoration-none" href="#">info@company.com</a>
                    <i class="fa fa-phone mx-2"></i>
                    <a class="navbar-sm-brand text-light text-decoration-none" href="#">010-020-0340</a>
                </div>
                <div>
                    <a class="text-light" href="" rel="sponsored"><i
                            class="fab fa-facebook-f fa-sm fa-fw me-2"></i></a>
                    <a class="text-light" href=""><i
                            class="fab fa-instagram fa-sm fa-fw me-2"></i></a>
                    <a class="text-light" href=""><i
                            class="fab fa-twitter fa-sm fa-fw me-2"></i></a>
                    <a class="text-light" href=""><i
                            class="fab fa-linkedin fa-sm fa-fw"></i></a>
                </div>
            </div>
        </div>
    </nav>
    <!-- Close Top Nav -->

    <%--Header--%>
    <nav class="navbar navbar-expand-lg navbar-light shadow-sm bg-white">
        <div class="container d-flex justify-content-between align-items-center">
            <a class="navbar-brand text-success logo h2 align-self-center" href="home-control">
                E-Commerce
            </a>
            <button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse"
                    data-bs-target="#templatemo_main_nav" aria-controls="navbarSupportedContent" aria-expanded="false"
                    aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between"
                 id="templatemo_main_nav">
                <div class="flex-fill">
                    <ul class="nav navbar-nav d-flex justify-content-between mx-lg-auto">
                        <li class="nav-item">
                            <a class="nav-link fw-normal" href="home-control">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link fw-normal" href="../about.jsp">About</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link fw-normal" href="product">Shop</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link fw-normal" href="../contact.jsp">Contact</a>
                        </li>
                    </ul>
                </div>

                <div class="navbar align-self-center d-flex">
                    <div class="new_search">
                        <form action="search-control" method="post">
                            <input name="txt" value="${search_Value}" class="new_input_search" placeholder="Search..."
                                   type="text">
                            <a class="new_search_icon me-1" href="#">
                                <button class="button-search" type="submit"><i type="submit"
                                                                               class="fa fa-fw fa-search text-dark mr-2"></i>
                                </button>
                            </a>
                        </form>
                    </div>
                </div>

                <%-- Information --%>
                <a class="nav-icon position-relative text-decoration-none" href="#">
                    <i class="fa fa-fw fa-cart-arrow-down text-dark mr-1 me-2"></i>
                    <ul class="navbar-nav me-auto mb-2 me-2 mb-lg-0">
                        <li class="nav-item dropdown dropstart"><a
                                href="#" role="button"
                                data-bs-toggle="dropdown" aria-expanded="false">
                            <i class="fa fa-fw fa-user text-dark mr-3 "></i> </a>

                            <c:if test="${sessionScope.account!=null}">
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="#">Đơn hàng của tôi</a></li>
                                    <li><a class="dropdown-item" href="#">Thay đổi thông tin</a></li>
                                    <li><a class="dropdown-item" href="#">Đổi mật khẩu</a></li>

                                    <c:if test="${sessionScope.account.isSell==1}">
                                        <li><a class="dropdown-item" href="#">Quản lý sản phẩm</a></li>
                                    </c:if>

                                    <c:if test="${sessionScope.account.isAdmin==1}">
                                        <li><a class="dropdown-item" href="#">Quản lý tài khoản</a></li>
                                    </c:if>
                                    <li>
                                        <hr class="dropdown-divider">
                                    </li>
                                    <li><a class="dropdown-item" href="Log-Out_Control">Đăng xuất</a></li>
                                </ul>
                            </c:if>

                            <c:if test="${sessionScope.account==null}">
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="../sign_in.jsp">Đăng nhập</a></li>
                                </ul>
                            </c:if>
                        </li>
                    </ul>
                </a>
            </div>
        </div>
    </nav>
</div>
<!-- Close Header -->

