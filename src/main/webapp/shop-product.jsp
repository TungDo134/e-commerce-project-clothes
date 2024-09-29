
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<title>SHOP</title>

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

<!-- Start Shop Product -->
<div class="container mt-250 slide-in">
    <div class="shop-product ">
        <div class="row">
            <!--  -->
            <c:forEach items="${listP}" var="o">
            <div class="col-md-3 col-sm-6 col-xs-6 mt-3">
                <div class="single-product mb-10">
                    <!-- p-pic -->
                    <div class="product-img img-full">
                        <a href="detail-control?pid=${o.id}"s>
                            <img
<%--                                    width="306px"--%>
<%--                                    height="380px"--%>
                                    src="${o.image}"
                                    alt=""
                            />

                        </a>
                        <a href="detail-control?pid=${o.id}" class="overplay-product">
                            <ul class="list-unstyled">
                                <li>XEM CHI TIẾT</li>
                            </ul>
                        </a>
                    </div>
                    <!-- p-pic -->
                    <div class="product-content">
                        <h2><a href="">${o.name}</a></h2>
                        <div class="product-price">
                            <div class="price-box">
                                <span class="regular-price">${o.price}00 đ</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            </c:forEach>
            <!--  -->

        </div>
    </div>
</div>
<!-- End Shop Product -->
<script src="./assets/js/custom.js"></script>