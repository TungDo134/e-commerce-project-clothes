<%@ page import="java.util.List" %>
<%@ page import="entity.Product" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>E-Commerce</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<%--    <link rel="stylesheet" href="assets/css/bootstrap.min.css">--%>
<%--    <link rel="stylesheet" href="assets/css/templatemo.css">--%>

    <!-- Load fonts style after rendering the layout styles -->
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">

    <link rel="stylesheet" href="assets/css/fontawesome.min.css">
    <link rel="stylesheet" href="assets/css/custom.css">

</head>

<body>
<!-- S-Top Nav / Header -->
<jsp:include page="header.jsp"></jsp:include>
<!-- E-Top Nav / Header -->

<!-- Start New Banner Hero -->
<div id="carouselExampleFade" class="carousel slide carousel-fade mt-custom mt-250 " data-bs-ride="carousel">
    <div class="carousel-inner">
        <div class="carousel-item active ">
            <img src="https://theme.hstatic.net/1000348721/1000449307/14/slideshow_2.jpg?v=609" class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item ">
            <img src="https://theme.hstatic.net/1000348721/1000449307/14/slideshow_1.jpg?v=609" class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item ">
            <img src="https://theme.hstatic.net/1000348721/1000449307/14/slideshow_4.jpg?v=609" class="d-block w-100" alt="...">
        </div>


    </div>
    <button class="carousel-control-prev none-hover" type="button" data-bs-target="#carouselExampleFade"
            data-bs-slide="prev">

        <span class="carousel-control fs-1" aria-hidden="true"><i class="fas fa-chevron-left"
                                                                  style="color: #000000;"></i></span>
        <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next none-hover" type="button" data-bs-target="#carouselExampleFade"
            data-bs-slide="next">

        <span class="carousel-control fs-1" aria-hidden="true"><i class="fas fa-chevron-right"
                                                                  style="color: #000000;"></i></span>
        <span class="visually-hidden">Next</span>
    </button>
</div>
<!-- End New Banner Hero -->

<div class="container py-5 my-2 bg-white">
    <div class="row">
        <div class="col-12 col-md-6 mb-4">
            <a href="product">
                <img class="hover_banner" style="max-width: 100%; " src="https://theme.hstatic.net/1000348721/1000449307/14/xxx_4.jpg?v=609"
                     alt="CLOTHING BANNER">
            </a>
        </div>

        <div class="col-12 col-md-6 mb-4">
            <a href="#">
                <img class="hover_banner" style="max-width: 100%; " src="https://theme.hstatic.net/1000348721/1000449307/14/xxx_5.jpg?v=609"
                     alt="BAGS BANNER">
            </a>
        </div>
    </div>

</div>

<!-- Start Featured Product -->
<section class="bg-light">
<%--    <div class="container py-5">--%>
<%--        <div class="row text-center py-3">--%>
<%--            <div class="col-lg-6 m-auto">--%>
<%--                <h1 class="h1">Featured Product</h1>--%>
<%--                <p>--%>
<%--                    Reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.--%>
<%--                    Excepteur sint occaecat cupidatat non proident.--%>
<%--                </p>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <div class="row">--%>
<%--            <div class="col-12 col-md-4 mb-4">--%>
<%--                <div class="card h-100">--%>
<%--                    <a href="shop-single.jsp">--%>
<%--                        <img src="./assets/img/feature_prod_01.jpg" class="card-img-top" alt="...">--%>
<%--                    </a>--%>
<%--                    <div class="card-body">--%>
<%--                        <ul class="list-unstyled d-flex justify-content-between">--%>
<%--                            <li>--%>
<%--                                <i class="text-warning fa fa-star"></i>--%>
<%--                                <i class="text-warning fa fa-star"></i>--%>
<%--                                <i class="text-warning fa fa-star"></i>--%>
<%--                                <i class="text-muted fa fa-star"></i>--%>
<%--                                <i class="text-muted fa fa-star"></i>--%>
<%--                            </li>--%>
<%--                            <li class="text-muted text-right">$240.00</li>--%>
<%--                        </ul>--%>
<%--                        <a href="shop-single.jsp" class="h2 text-decoration-none text-dark">Gym Weight</a>--%>
<%--                        <p class="card-text">--%>
<%--                            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt in culpa qui officia--%>
<%--                            deserunt.--%>
<%--                        </p>--%>
<%--                        <p class="text-muted">Reviews (24)</p>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="col-12 col-md-4 mb-4">--%>
<%--                <div class="card h-100">--%>
<%--                    <a href="shop-single.jsp">--%>
<%--                        <img src="./assets/img/feature_prod_02.jpg" class="card-img-top" alt="...">--%>
<%--                    </a>--%>
<%--                    <div class="card-body">--%>
<%--                        <ul class="list-unstyled d-flex justify-content-between">--%>
<%--                            <li>--%>
<%--                                <i class="text-warning fa fa-star"></i>--%>
<%--                                <i class="text-warning fa fa-star"></i>--%>
<%--                                <i class="text-warning fa fa-star"></i>--%>
<%--                                <i class="text-muted fa fa-star"></i>--%>
<%--                                <i class="text-muted fa fa-star"></i>--%>
<%--                            </li>--%>
<%--                            <li class="text-muted text-right">$480.00</li>--%>
<%--                        </ul>--%>
<%--                        <a href="shop-single.jsp" class="h2 text-decoration-none text-dark">Cloud Nike Shoes</a>--%>
<%--                        <p class="card-text">--%>
<%--                            Aenean gravida dignissim finibus. Nullam ipsum diam, posuere vitae pharetra sed, commodo--%>
<%--                            ullamcorper.--%>
<%--                        </p>--%>
<%--                        <p class="text-muted">Reviews (48)</p>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="col-12 col-md-4 mb-4">--%>
<%--                <div class="card h-100">--%>
<%--                    <a href="shop-single.jsp">--%>
<%--                        <img src="./assets/img/feature_prod_03.jpg" class="card-img-top" alt="...">--%>
<%--                    </a>--%>
<%--                    <div class="card-body">--%>
<%--                        <ul class="list-unstyled d-flex justify-content-between">--%>
<%--                            <li>--%>
<%--                                <i class="text-warning fa fa-star"></i>--%>
<%--                                <i class="text-warning fa fa-star"></i>--%>
<%--                                <i class="text-warning fa fa-star"></i>--%>
<%--                                <i class="text-warning fa fa-star"></i>--%>
<%--                                <i class="text-warning fa fa-star"></i>--%>
<%--                            </li>--%>
<%--                            <li class="text-muted text-right">$360.00</li>--%>
<%--                        </ul>--%>
<%--                        <a href="shop-single.jsp" class="h2 text-decoration-none text-dark">Summer Addides Shoes</a>--%>
<%--                        <p class="card-text">--%>
<%--                            Curabitur ac mi sit amet diam luctus porta. Phasellus pulvinar sagittis diam, et scelerisque--%>
<%--                            ipsum lobortis nec.--%>
<%--                        </p>--%>
<%--                        <p class="text-muted">Reviews (74)</p>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
    <div>
        <a href="product">
        <img class="w-100" src="https://dashboard.leanow.vn/upload/9-2023/1695398469078.webp">
        </a>
    </div>
</section>
<!-- End Featured Product -->

<%--Start slider--%>
<div class="container text-center pt-3">
    <div class="col-lg-6 m-auto pb-2">
        <h3 style="border-bottom: 4px solid #000000; color: #757070"
            class="fs-1 fw-normal d-inline-block pb-1">BEST SELLER
        </h3>
    </div>
</div>
<jsp:include page="best-seller.jsp"></jsp:include>
<%--End slider--%>


<!-- Start Footer -->
<jsp:include page="footer.jsp"></jsp:include>
<!-- Close Footer  -->

<!-- Start Script -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossOrigin="anonymous"></script>

<!-- End Script -->
</body>

</html>