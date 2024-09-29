<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="container">
    <div class="row">
        <%-- Start PC --%>
        <div id="carouselExample" class="carousel slide d-sm-none d-md-block py-5" data-ride="carousel">

            <div class="carousel-inner">

                <div class="carousel-item active">
                    <div class="row">
                        <c:forEach begin="1" end="4">
                            <div class="col-md-3">
                                <img class="d-block w-100"
                                     src="https://fakeimg.pl/800x400/?retina=1&text=Logo 1&font=noto"
                                     alt="First slide">
                                <div class="card-body mt-2">
                                    <h5 class="card-title text-center">Card title</h5>
                                    <p class="fw-medium card-text show_txt text-center">100.000 đ</p>
                                </div>
                            </div>
                        </c:forEach>
                    </div>

                </div>
                <!-- Carousel Item 1 -->

                <div class="carousel-item">
                    <div class="row">
                        <c:forEach begin="1" end="4">
                            <div class="col-md-3">
                                <img class="d-block w-100"
                                     src="https://fakeimg.pl/800x400/?retina=1&text=Logo 2&font=noto"
                                     alt="First slide">
                                <div class="card-body mt-2">
                                    <h5 class="card-title text-center">Card title</h5>
                                    <p class="fw-medium card-text show_txt text-center">100.000 đ</p>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
                <!-- Carousel Item 2 -->

                <div class="carousel-item">
                    <div class="row">
                        <c:forEach begin="1" end="4">
                            <div class="col-md-3">
                                <img class="d-block w-100"
                                     src="https://fakeimg.pl/800x400/?retina=1&text=Logo 3&font=noto"
                                     alt="First slide">
                                <div class="card-body mt-2">
                                    <h5 class="card-title text-center">Card title</h5>
                                    <p class="fw-medium card-text show_txt text-center">100.000 đ</p>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>

            <div>
                <button class="carousel-control-prev none-hover" type="button" data-bs-target="#carouselExample"
                        data-bs-slide="prev">
                    <span class="carousel-control fs-3" aria-hidden="true"><i class="fas fa-chevron-left pb-5"
                                                                              style="color: #000000;"></i></span>
                    <span class="visually-hidden">Previous</span>
                </button>

                <button class="carousel-control-next none-hover" type="button" data-bs-target="#carouselExample"
                        data-bs-slide="next">
                    <span class="carousel-control fs-3" aria-hidden="true"><i class="fas fa-chevron-right pb-5"
                                                                              style="color: #000000;"></i></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>

            </div>
        </div>
        <%-- End PC --%>


        <%-- Start Mobile --%>
        <div id="carouselExampleMobile" class="carousel slide d-md-none d-lg-none d-xl-none mb-5" data-ride="carousel">

            <div class="carousel-inner">

                <div class="carousel-item active">
                    <div class="row">
                        <div class="col-6">
                            <img class="d-block w-100" src="https://fakeimg.pl/800x400/?retina=1&text=Logo 1&font=noto"
                                 alt="First slide">
                            <div class="card-body mt-2">
                                <h5 class="card-title text-center">Card title</h5>
                                <p class="fw-medium card-text show_txt text-center">100.000 đ</p>
                            </div>
                        </div>
                        <div class="col-6">
                            <img class="d-block w-100"
                                 src="https://fakeimg.pl/800x400/?retina=1&text=Logo 2&font=noto"
                                 alt="Fifth slide">
                            <div class="card-body mt-2">
                                <h5 class="card-title text-center">Card title</h5>
                                <p class="fw-medium card-text show_txt text-center">100.000 đ</p>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Carousel Item 1 -->

                <div class="carousel-item">

                    <div class="row">
                        <div class="col-6">
                            <img class="d-block w-100" src="https://fakeimg.pl/800x400/?retina=1&text=Logo 3&font=noto"
                                 alt="First slide">
                            <div class="card-body mt-2">
                                <h5 class="card-title text-center">Card title</h5>
                                <p class="fw-medium card-text show_txt text-center">100.000 đ</p>
                            </div>
                        </div>
                        <div class="col-6">
                            <img class="d-block w-100"
                                 src="https://fakeimg.pl/800x400/?retina=1&text=Logo 4&font=noto"
                                 alt="Fifth slide">
                            <div class="card-body mt-2">
                                <h5 class="card-title text-center">Card title</h5>
                                <p class="fw-medium card-text show_txt text-center">100.000 đ</p>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Carousel Item 2 -->

                <div class="carousel-item">
                    <div class="row">
                        <div class="col-6">
                            <img class="d-block w-100" src="https://fakeimg.pl/800x400/?retina=1&text=Logo 5&font=noto"
                                 alt="First slide">
                            <div class="card-body mt-2">
                                <h5 class="card-title text-center">Card title</h5>
                                <p class="fw-medium card-text show_txt text-center">100.000 đ</p>
                            </div>
                        </div>
                        <div class="col-6">
                            <img class="d-block w-100"
                                 src="https://fakeimg.pl/800x400/?retina=1&text=Logo 6&font=noto"
                                 alt="Fifth slide">
                            <div class="card-body mt-2">
                                <h5 class="card-title text-center">Card title</h5>
                                <p class="fw-medium card-text show_txt text-center">100.000 đ</p>
                            </div>
                        </div>
                    </div>
                </div>

                <button class="carousel-control-prev none-hover" type="button" data-bs-target="#carouselExampleMobile"
                        data-bs-slide="prev">
                    <span class="carousel-control fs-3" aria-hidden="true"><i class="fas fa-chevron-left pb-5"
                                                                              style="color: #000000;"></i></span>
                    <span class="visually-hidden">Previous</span>
                </button>

                <button class="carousel-control-next none-hover" type="button" data-bs-target="#carouselExampleMobile"
                        data-bs-slide="next">
                    <span class="carousel-control fs-3" aria-hidden="true"><i class="fas fa-chevron-right pb-5"
                                                                              style="color: #000000;"></i></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
        </div>
    </div>
</div>
    <%--  End Mobile--%>
<%--    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"--%>
<%--            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"--%>
<%--            crossorigin="anonymous"></script>--%>

