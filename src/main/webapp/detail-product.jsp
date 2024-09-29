<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 9/11/2024
  Time: 8:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<title>Product</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

<link
        rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"
        integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg=="
        crossorigin="anonymous"
        referrerpolicy="no-referrer"
/>

<link rel="stylesheet" href="assets/css/header.css">
<link rel="stylesheet" href="assets/css/custom.css">

<!-- S-Top Nav / Header -->
<jsp:include page="header.jsp"></jsp:include>
<!-- E-Top Nav / Header -->

<div class="detailPage mt-250 ">
    <div class="container">
        <div class="row">
            <div class="col-md-6 com-sm-6 col-xs-12" style="position: relative">
                <div class="slider-image">
                    <div id="slider" class="flexslide">
                        <ul class="slides">
                            <li>
                    <span>
                      <a href="">
                        <img
                                class="product-image-feature"
                                src="${detail.image}"
                                alt=""
                                style="max-width: 90% !important"
                        />
                      </a>
                    </span>
                            </li>
                        </ul>
                    </div>
                </div>

                <!--  -->
<%--                <div id="carousel">--%>
<%--                    <div class="flex-viewport">--%>
<%--                        <ul class="slides">--%>
<%--                            <li class="product-thumb checked">--%>
<%--                                <a href=""--%>
<%--                                ><img--%>
<%--                                        src="${detail.image}"--%>
<%--                                        alt=""--%>
<%--                                /></a>--%>
<%--                            </li>--%>
<%--                            <li class="product-thumb checked">--%>
<%--                                <a href=""--%>
<%--                                ><img--%>
<%--                                        src="${detail.image}"--%>
<%--                                        alt=""--%>
<%--                                /></a>--%>
<%--                            </li>--%>
<%--                            <li class="product-thumb checked">--%>
<%--                                <a href=""--%>
<%--                                ><img--%>
<%--                                        src="${detail.image}"--%>
<%--                                        alt=""--%>
<%--                                /></a>--%>
<%--                            </li>--%>
<%--                            <li class="product-thumb checked">--%>
<%--                                <a href=""--%>
<%--                                ><img--%>
<%--                                        src="${detail.image}"--%>
<%--                                        alt=""--%>
<%--                                /></a>--%>
<%--                            </li>--%>
<%--                        </ul>--%>
<%--                    </div>--%>
<%--                </div>--%>

            </div>
            <div class="col-md-6 com-sm-6 col-xs-12">
                <div class="description-product">
                    <div class="info-desc">
                        <h2>${detail.name}</h2>
                        <div class="price pdPrice">
                            <span id="pro-price"> ${detail.price}00đ </span>
                        </div>
                        <div class="script-product-detail">
                            <div class="fundin-wrapper">
                                <span class="fundin-panel"> Trả sau đến 12 tháng với </span>
                                <a href="" class="fundin-action"
                                ><img
                                        src="https://assets.fundiin.vn/merchant/logo_transparent.png"
                                        alt=""
                                /></a>
                            </div>
                        </div>

                        <div class="fundin-promotion-panel">
                            <div class="fundin-promotion-panel-inner">
                                <img
                                        src="./assets/img/percentage-svgrepo-com.svg"
                                        class="rounded float-start"
                                        alt="..."
                                        width="50px"
                                        height="50px"
                                />
                                <span class="promotion-panel-description">
                      <span style="color: #fafafa">Giảm đến</span>
                      <span style="color: #212121"></span>
                      <span>
                        <strong style="color: #fffdc3">100k</strong>
                      </span>
                      <span style="color: #212121"></span>
                      <span style="color: #fafafa"
                      >khi thanh toán qua Fundiin.</span
                      >
                      <a
                              class="fundin-promotion-trigger"
                              style="color: #fff !important"
                      >Xem thêm</a
                      >
                    </span>
                            </div>
                        </div>
                        <div class="short-desc mt-4">
                            <p class="fw-bold fs-4"> Mô tả:
                            </p>
                            <p>
                                ${detail.description}
                            </p>
                        </div>
                    </div>
                    <div class="qty-cart">
                        <form id="form-quantity" action="">
                            <input
                                    class="minus"
                                    type="button"
                                    value="-"
                                    onclick="calculate(this)"
                            />
                            <input
                                    class="value-quantity"
                                    type="text"
                                    name="quantity"
                                    value="1"
                            />
                            <input
                                    class="plus"
                                    type="button"
                                    value="+"
                                    onclick="calculate(this)"
                            />
                            <div class="size-option">
                                <div class="header-s">Kích thước</div>
                                <div class="select-size d-flex">
                                    <div class="checked-box" onclick="chooseSize(this)">
                                        <input type="radio" name="option1" value="S" s/>
                                        <label class="">
                                            S
                                            <img
                                                    class="img-checked"
                                                    src="https://theme.hstatic.net/1000348721/1000449307/14/select-pro.png?v=609"
                                                    alt=""
                                            />
                                        </label>
                                    </div>
                                    <div class="checked-box" onclick="chooseSize(this)">
                                        <input type="radio" name="option1" value="M"/>
                                        <label class="">
                                            M
                                            <img
                                                    class="img-checked"
                                                    src="https://theme.hstatic.net/1000348721/1000449307/14/select-pro.png?v=609"
                                                    alt=""
                                            />
                                        </label>
                                    </div>
                                    <div class="checked-box" onclick="chooseSize(this)">
                                        <input type="radio" name="option1" value="L"/>
                                        <label class="">
                                            L
                                            <img
                                                    class="img-checked"
                                                    src="https://theme.hstatic.net/1000348721/1000449307/14/select-pro.png?v=609"
                                                    alt=""
                                            />
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="btn-cart">
                                <button type="submit" class="add-to-c">Thêm vào giỏ</button>
                            </div>
                        </form>

                    </div>
                </div>

            </div>
        </div>
    </div>


</div>
<!-- Start Footer -->
<jsp:include page="footer.jsp"></jsp:include>
<!-- Close Footer  -->
<script src="./assets/js/custom.js"></script>