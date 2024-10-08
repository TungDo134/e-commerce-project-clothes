<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>E-Commerce</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="../assets/img/apple-icon.png">
    <link rel="shortcut icon" type="image/x-icon" href="../assets/img/favicon.ico">

    <link rel="stylesheet" href="../assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="../assets/css/templatemo.css">
    <link rel="stylesheet" href="../assets/css/custom.css">

    <!-- Load fonts style after rendering the layout styles -->
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
    <link rel="stylesheet" href="../assets/css/fontawesome.min.css">

    <!-- Slick -->
    <link rel="stylesheet" type="text/css" href="../assets/css/slick.min.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/slick-theme.css">
</head>

<body>
<!-- Start Top Nav / Header -->
<jsp:include page="../header.jsp"></jsp:include>
<!-- Close Top Nav  / Header  -->


<!-- Open Content -->
<section class="bg-light mt-6-custom">
    <div class="container pb-5">
        <div class="row">
            <div class="col-lg-5 mt-5">
                <div class="card mb-3">
                    <img class="card-img img-fluid" src="${detail.image}" alt="Card image cap"
                         id="product-detail">
                </div>
                <div class="row">
                    <!--Start Controls-->
                    <div class="col-1 align-self-center">
                        <a href="#multi-item-example" role="button" data-bs-slide="prev">
                            <i class="text-dark fas fa-chevron-left"></i>
                            <span class="sr-only">Previous</span>
                        </a>
                    </div>
                    <!--End Controls-->

                    <!--Start Carousel Wrapper-->
                    <div id="multi-item-example" class="col-10 carousel slide carousel-multi-item"
                         data-bs-ride="carousel">

                        <!--Start Slides-->
                        <div class="carousel-inner product-links-wap" role="listbox">

                            <div class="carousel-item active">
                                <div class="row">
                                    <c:forEach begin="1" end="3">
                                        <div class="col-4">
                                            <a href="#">
                                                <img class="card-img img-fluid"
                                                     src="${detail.image}"
                                                     alt="">
                                            </a>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>

                            <div class="carousel-item">
                                <div class="row">
                                    <c:forEach begin="1" end="3">
                                        <div class="col-4">
                                            <a href="#">
                                                <img class="card-img img-fluid"
                                                     src="${detail.image}"
                                                     alt="">
                                            </a>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>


                        </div>
                        <!--End Slides-->

                    </div>
                    <!--End Carousel Wrapper-->

                    <!--Start Controls-->
                    <div class="col-1 align-self-center">
                        <a href="#multi-item-example" role="button" data-bs-slide="next">
                            <i class="text-dark fas fa-chevron-right"></i>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                    <!--End Controls-->
                </div>
            </div>
            <!-- col end -->

            <div class="col-lg-7 mt-5">
                <div class="card">
                    <div class="card-body">
                        <h1 class="h2">${detail.name}</h1>
                        <p class="h3 py-2">${detail.price}00 đ</p>
                        <p class="py-2">
<%--                            <i class="fa fa-star text-warning"></i>--%>
<%--                            <i class="fa fa-star text-warning"></i>--%>
<%--                            <i class="fa fa-star text-warning"></i>--%>
<%--                            <i class="fa fa-star text-warning"></i>--%>
<%--                            <i class="fa fa-star text-secondary"></i>--%>
                            <span class="list-inline-item text-dark">Rating 4.8 | 36 Comments</span>
                        </p>
                        <ul class="list-inline">
                            <li class="list-inline-item">
                                <h6>Brand:</h6>
                            </li>
                            <li class="list-inline-item">
                                <p class="text-muted"><strong>Easy Wear</strong></p>
                            </li>
                        </ul>

                        <h6>Description:</h6>
                        <p class="fs-6">${detail.description}</p>
                        <ul class="list-inline">
                            <li class="list-inline-item">
                                <h6>Avaliable Color :</h6>
                            </li>
                            <li class="list-inline-item">
                                <p class="text-muted"><strong>White / Black</strong></p>
                            </li>
                        </ul>

                        <%--                        <h6>Specification:</h6>--%>
                        <%--                        <ul class="list-unstyled pb-3">--%>
                        <%--                            <li>Lorem ipsum dolor sit</li>--%>
                        <%--                            <li>Amet, consectetur</li>--%>
                        <%--                            <li>Adipiscing elit,set</li>--%>
                        <%--                            <li>Duis aute irure</li>--%>
                        <%--                            <li>Ut enim ad minim</li>--%>
                        <%--                            <li>Dolore magna aliqua</li>--%>
                        <%--                            <li>Excepteur sint</li>--%>
                        <%--                        </ul>--%>

                        <form action="" method="GET">
                            <input type="hidden" name="product-title" value="Activewear">
                            <div class="row">
                                <div class="col-auto">
                                    <ul class="list-inline pb-3">
                                        <li class="list-inline-item">Size :
                                            <input type="hidden" name="product-size" id="product-size" value="S">
                                        </li>
                                        <li class="list-inline-item"><span class="btn btn-success btn-size">S</span>
                                        </li>
                                        <li class="list-inline-item"><span class="btn btn-success btn-size">M</span>
                                        </li>
                                        <li class="list-inline-item"><span class="btn btn-success btn-size">L</span>
                                        </li>
                                        <li class="list-inline-item"><span class="btn btn-success btn-size">XL</span>
                                        </li>
                                    </ul>
                                </div>
                                <div class="col-auto">
                                    <ul class="list-inline pb-3">
                                        <li class="list-inline-item text-right">
                                            Quantity
                                            <input type="hidden" name="product-quanity" id="product-quanity" value="1">
                                        </li>
                                        <li class="list-inline-item"><span class="btn btn-success"
                                                                           id="btn-minus">-</span></li>
                                        <li class="list-inline-item"><span class="badge bg-secondary"
                                                                           id="var-value">1</span></li>
                                        <li class="list-inline-item"><span class="btn btn-success"
                                                                           id="btn-plus">+</span></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="row pb-3">
                                <div class="col d-grid">
                                    <button type="submit" class="btn btn-success btn-lg" name="submit" value="buy">Buy
                                    </button>
                                </div>
                                <div class="col d-grid">
                                    <button type="submit" class="btn btn-success btn-lg" name="submit"
                                            value="addtocard">Add To Cart
                                    </button>
                                </div>
                            </div>
                        </form>

                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Close Content -->

<!-- Start Article -->
<section class="py-5">
    <div class="container">
        <div class="row text-left p-2 pb-3">
            <h4>Related Products</h4>
        </div>

        <!--Start Carousel Wrapper-->
        <div id="carousel-related-product">
            <c:forEach items="${listP}" var="o">
                <div class="p-2 pb-3">
                    <div class="product-wap card rounded-0">
                        <div class="card rounded-0">
                            <img class="card-img rounded-0 img-fluid" src="${o.image}">
                            <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                <ul class="list-unstyled">
                                    <li><a class="btn btn-success text-white" href="#"><i
                                            class="far fa-heart"></i></a></li>
                                    <li><a class="btn btn-success text-white mt-2" href="detail-control?pid=${o.id}"><i
                                            class="far fa-eye"></i></a></li>
                                    <li><a class="btn btn-success text-white mt-2" href=""><i
                                            class="fas fa-cart-plus"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="card-body">
                            <a href="detail-control?pid=${o.id}" class="h3 text-decoration-none">${o.name}</a>
                            <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
                                <li>M/L/X/XL</li>
                                <li class="pt-2">
                                    <span class="product-color-dot color-dot-red float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-blue float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-black float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-light float-left rounded-circle ml-1"></span>
                                    <span class="product-color-dot color-dot-green float-left rounded-circle ml-1"></span>
                                </li>
                            </ul>
<%--                            <ul class="list-unstyled d-flex justify-content-center mb-1">--%>
<%--                                <li>--%>
<%--                                    <i class="text-warning fa fa-star"></i>--%>
<%--                                    <i class="text-warning fa fa-star"></i>--%>
<%--                                    <i class="text-warning fa fa-star"></i>--%>
<%--                                    <i class="text-warning fa fa-star"></i>--%>
<%--                                    <i class="text-muted fa fa-star"></i>--%>
<%--                                </li>--%>
<%--                            </ul>--%>
                            <p class="text-center mb-0">${o.price}00 đ</p>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>

    </div>
</section>
<!-- End Article -->


<!-- Start Footer -->
<jsp:include page="../footer.jsp"></jsp:include>
<!-- Close Footer  -->

<!-- Start Script -->
<script src="../assets/js/jquery-1.11.0.min.js"></script>
<script src="../assets/js/jquery-migrate-1.2.1.min.js"></script>
<script src="../assets/js/bootstrap.bundle.min.js"></script>
<script src="../assets/js/templatemo.js"></script>
<script src="../assets/js/custom.js"></script>
<!-- End Script -->

<!-- Start Slider Script -->
<script src="../assets/js/slick.min.js"></script>
<script>
    $('#carousel-related-product').slick({
        infinite: true,
        arrows: false,
        slidesToShow: 4,
        slidesToScroll: 3,
        dots: true,
        responsive: [{
            breakpoint: 1024,
            settings: {
                slidesToShow: 3,
                slidesToScroll: 3
            }
        },
            {
                breakpoint: 600,
                settings: {
                    slidesToShow: 2,
                    slidesToScroll: 3
                }
            },
            {
                breakpoint: 480,
                settings: {
                    slidesToShow: 2,
                    slidesToScroll: 3
                }
            }
        ]
    });
</script>
<!-- End Slider Script -->

</body>

</html>