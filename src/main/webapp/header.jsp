<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<link
        rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"
        integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg=="
        crossorigin="anonymous"
        referrerpolicy="no-referrer"
/>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<link rel="stylesheet" href="assets/css/header.css">

<!-- Begin Header -->
<header id="myHeader" class="no-index fixed">
    <!-- Container -->
    <div class="container bg-white">
        <div class="row mid">
            <!-- Large-screen -->
            <div class="col-12 text-center d-none d-md-none d-lg-block">
                <!-- Logo -->
                <a href="home-control" class="logo">
                    <img
                            src="./assets/img/logo-no-bg.png"
                            alt=""
                    />
                </a>
            </div>
            <!-- Logo -->

            <!-- Main Header -->
            <div
                    style="margin: auto"
                    class="menu-border-top col-10 text-center d-none d-md-none d-lg-block"
            >
                <nav class="main-nav">
                    <ul class="menu-main-menu">
                        <li class="main-menu-items"><a href="home-control">HOME</a></li>
                        <li class="main-menu-items">
                            <a href="">LOOK BOOK</a>
                            <ul class="sub-menu shadow">
                                <li class="sub-menu-item">
                                    <a>LB25 - TULIP TEMPTATION</a>
                                </li>
                                <li class="sub-menu-item">
                                    <a>LB24 - JARDIN d'AGRUMES</a>
                                </li>
                                <li class="sub-menu-item">
                                    <a>LB23 - NAUTICA VOYAGE</a>
                                </li>
                                <li class="sub-menu-item">
                                    <a>LB22 - ALICE IN WONDERLAND</a>
                                </li>
                                <li class="sub-menu-item"><a>LB21 - SPACE COWBOY</a></li>
                            </ul>
                        </li>
                        <li class="main-menu-items"><a href="product">SHOP</a>
                            <ul class="sub-menu shadow">
                                <li><a class="sub-menu-item"
                                       href="product-load-byCID?cid=1">SOMI</a>
                                </li>
                                <li><a class="sub-menu-item"
                                       href="product-load-byCID?cid=1">T-SHIRT</a>
                                </li>
                                <li><a class="sub-menu-item"
                                       href="#">VEST/BLAZZER</a>
                                </li>
                                <li><a class="sub-menu-item"
                                       href="#">SWEATER/HOODIE</a>
                                </li>
                                <li><a class="sub-menu-item"
                                       href="product-load-byCID?cid=3">ÁO KHOÁC</a>
                                </li>
                                <li><a class="sub-menu-item"
                                       href="product-load-byCID?cid=2">QUẦN</a>
                                </li>

                            </ul>

                        </li>

                        <li class="main-menu-items"><a href="#">ACCESSORY</a></li>
                        <li class="main-menu-items"><a href="about.jsp">ABOUT US</a></li>
                        <li class="main-menu-items"><a href="contact.jsp">CONTACT</a></li>
                    </ul>
                </nav>

                <!-- btn-search -->
                <div class="search">
                    <button type="button" onclick="showSearchInput()">
                        <img
                                class="icon-img"
                                src="https://theme.hstatic.net/1000348721/1000449307/14/pic-search.png?v=609"
                                alt="icon-search"
                        />
                    </button>
                    <div class="ct" id="search" style="display: none">
                        <form action="search-control" method="post" class="form-search my-3 ms-2">
                            <div class="form-input">

                                <input name="txt"
                                       value="${search_Value}"
                                       type="text"
                                       placeholder="Tìm kiếm..."
                                />
                                <button type="submit">
                                    <i class="fa fa-search"></i>
                                </button>

                            </div>
                        </form>
                    </div>
                </div>

                <div class="cart-login mt-2 me-2">
                    <div class="search" style="margin-right: 15px">
                        <img
                                class="icon-img"
                                src="https://theme.hstatic.net/1000348721/1000449307/14/cart-icon.png?v=609"
                                alt=""
                        />
                    </div>
                    <div class="search">
                        <a type="button" href="#" style="font-size: 18px"  onclick="open_menu_user(this)">
                            <i
                                    style="font-size: 21px"
                                    class="fa-solid fa-circle-user"
                            ></i>
<%--                            Login--%>
                        </a>
                        <div class="nav-bar-user" style="display: none">

                            <ul class="list-unstyled">
                                <c:if test="${sessionScope.acc.isAdmin==1}">
                                    <li>
                                        <a>Manager Account</a>
                                    </li>

                                </c:if>

                                <c:if test="${sessionScope.acc.isSell==1}">
                                    <li>
                                        <a>Manager Product</a>
                                    </li>

                                </c:if>


                                <c:if test="${sessionScope.acc !=null}">
                                    <li>
                                        <a>Information</a>
                                    </li>
                                    <li>
                                        <a href="Log-Out_Control">Sign Out</a>
                                    </li>
                                </c:if>

                                <c:if test="${sessionScope.acc==null}">
                                    <li>
                                        <a href="sign_in.jsp">Sign In</a>
                                    </li>
                                </c:if>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- btn-search -->
            </div>
            <!-- Main Header -->
        </div>
    </div>

    <!-- Small Screen -->
    <div class="col-12 text-center d-md-block d-lg-none">
        <!-- Logo -->
        <a href="home-control" class="logo">
            <img
                    src="./assets/img/LOGO.png"
                    alt=""
            />
        </a>
    </div>
    <!-- Logo -->

    <div class="sub-nav d-md-block d-lg-none" onclick="toggleMenu(this)">
        <button class="menu-icon" onclick="toggleLayer(),toggleMenu(this)">
            <i class="icon-line"></i>
            <i class="icon-line"></i>
            <i class="icon-line"></i>
        </button>

        <div class="menu-mobile" onclick="event.stopPropagation()">
            <div class="bar">
                <a href="" class="nv-logo">
                    <img
                            style="max-width: 200px; margin-left: 15px"
                            src="https://theme.hstatic.net/1000348721/1000449307/14/logo.png?v=609"
                            alt=""
                    />
                </a>

                <form action="" class="form-search my-3 ms-2">
                    <input type="text" name="" placeholder="Tìm kiếm..."/>
                    <button type="submit">
                        <i class="fa fa-search"></i>
                    </button>
                </form>
                <!-- Menu -->
                <nav>
                    <ul class="menu-main-menu">
                        <li class="main-menu-items"><a href="#">HOME</a></li>
                        <li class="main-menu-items">
                            <button
                                    type="button"
                                    class="nav-drop"
                                    style="transform: rotateX(0deg)"
                                    onclick="toggleSubMenu(this), change_icon(this)"
                            >
                                <i class="fa-solid fa-chevron-down"></i>
                            </button>
                            <a href="">LOOK BOOK</a>
                            <ul class="sub-menu">
                                <li class="sub-menu-item">
                                    <a>LB25 - TULIP TEMPTATION</a>
                                </li>
                                <li class="sub-menu-item">
                                    <a>LB24 - JARDIN d'AGRUMES</a>
                                </li>
                                <li class="sub-menu-item">
                                    <a>LB23 - NAUTICA VOYAGE</a>
                                </li>
                                <li class="sub-menu-item">
                                    <a>LB22 - ALICE IN WONDERLAND</a>
                                </li>
                                <li class="sub-menu-item"><a>LB21 - SPACE COWBOY</a></li>
                            </ul>
                        </li>
                        <li class="main-menu-items">
                            <button
                                    type="button"
                                    class="nav-drop"
                                    style="transform: rotateX(0deg)"
                                    onclick="toggleSubMenu(this), change_icon(this)"
                            >
                                <i class="fa-solid fa-chevron-down"></i>
                            </button>
                            <a href="">SHOP</a>
                            <ul class="sub-menu">
                                <li><a class="sub-menu-item"
                                       href="product-load-byCID?cid=1">SOMI</a>
                                </li>
                                <li><a class="sub-menu-item"
                                       href="product-load-byCID?cid=1">T-SHIRT</a>
                                </li>
                                <li><a class="sub-menu-item"
                                       href="#">VEST/BLAZZER</a>
                                </li>
                                <li><a class="sub-menu-item"
                                       href="#">SWEATER/HOODIE</a>
                                </li>
                                <li><a class="sub-menu-item"
                                       href="product-load-byCID?cid=3">ÁO KHOÁC</a>
                                </li>
                                <li><a class="sub-menu-item"
                                       href="product-load-byCID?cid=2">QUẦN</a>
                                </li>
                            </ul>
                        </li>
                        <li class="main-menu-items"><a href="">ABOUT US</a></li>
                        <li class="main-menu-items"><a href="">CONTACT</a></li>
                    </ul>
                </nav>
                <!-- Menu -->
            </div>
        </div>
    </div>
    <!-- Small Screen -->
</header>
<!-- End Header -->

<!-- Layer for mobile menu -->
<div id="overlay1" class="overlay1"></div>
<!-- Layer for mobile menu -->

<!-- <script
src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
crossorigin="anonymous"
></script> -->
<script src="./assets/js/custom.js"></script>

