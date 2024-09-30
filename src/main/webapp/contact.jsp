<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<title>Contact Us</title>
<link
        rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"
        integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg=="
        crossorigin="anonymous"
        referrerpolicy="no-referrer"
/>
<link rel="stylesheet" href="./assets/css/header.css"/>

<!-- S-Top Nav / Header -->
<jsp:include page="header.jsp"></jsp:include>
<!-- E-Top Nav / Header -->

<div class="container mt-200 slide-in">
    <div class="head-title">
        <p class="content-title">HOW TO CONTACT TUNGDO CLIENT</p>
        <p class="content-title">SERVICES</p>
        <p class="sub-content-title" style="margin-top: 8px">
            Choose your preferred method of contact and connect with us
        </p>
    </div>

    <div class="wrapper">
        <div class="grid-contact-content">
            <div class="phone-content content-item">
                <h2>Phone</h2>
                <div class="des-info">
                    <p>
                        Monday - Saturday from 9 AM to 11 PM (EST). Sunday from 10 AM to
                        9 PM (EST).
                    </p>
                </div>
                <div class="contact-info">
                    <i class="fa-solid fa-phone icon-contact"></i>
                    <a href=""> Call Us +1.877.482.2430 </a>
                </div>
            </div>
            <div class="email-content content-item">
                <h2>EMAIL</h2>
                <div class="des-info">
                    <p>Your inquiry will receive a response from a Client Advisor</p>
                </div>
                <div class="contact-info">
                    <i class="fa-regular fa-envelope icon-contact"></i>
                    <a href="">Write Us</a>
                </div>
            </div>
            <div class="chat-content content-item">
                <h2>CHAT</h2>
                <div class="des-info">
                    <p>
                        Monday - Saturday from 9 AM to 11 PM (EST). Sunday from 10 AM to
                        9 PM (EST).
                    </p>
                </div>
                <div class="contact-info">
                    <i
                            class="fa-solid fa-circle icon-contact"
                            style="color: #e27f22; font-size: 10px"
                    ></i>
                    <a href=""> Message Us </a>
                </div>
            </div>
            <div class="whatsapp-content content-item">
                <h2>WHATSAPP</h2>
                <div class="des-info">
                    <p>
                        Monday - Saturday from 9 AM to 11 PM (EST). Sunday from 10 AM to
                        9 PM (EST).
                    </p>
                </div>
                <div class="contact-info">
                    <i class="fa-brands fa-whatsapp icon-contact"></i>
                    <a href=""> WhatsApp Us </a>
                </div>
            </div>
        </div>
    </div>
    <div class="faq">
        <div class="head-title-faq">
            <p class="content-title-faq" style="font-size: 24px !important">
                FREQUENTLY ASKED QUESTIONS
            </p>
        </div>
        <!--  -->

        <div class="faq-content">
            <!--  -->
            <div class="ques-as" onclick="toggleFAQ(this)">
                <div class="question-content">
                    <p>How can I contact Gucci?</p>
                    <i
                            class="fa-solid fa-chevron-down icon-down"
                            style="transform: rotateX(0deg)"
                    ></i>
                </div>
                <div class="answer">
                    <p>
                        Lorem ipsum dolor sit amet consectetur adipisicing elit.
                        Pariatur, repellendus!
                    </p>
                </div>
            </div>

            <!--  -->
            <div class="ques-as" onclick="toggleFAQ(this)">
                <div class="question-content">
                    <p>
                        How quickly can I expect a reply if I contact Gucci Client
                        Service?
                    </p>
                    <i
                            class="fa-solid fa-chevron-down icon-down"
                            style="transform: rotateX(0deg)"
                    ></i>
                </div>
                <div class="answer">
                    <p>
                        Lorem ipsum dolor sit amet consectetur adipisicing elit.
                        Pariatur, repellendus!
                    </p>
                </div>
            </div>
            <!--  -->

            <div class="ques-as" onclick="toggleFAQ(this)">
                <div class="question-content">
                    <p>How do I get in touch with a specific boutique?</p>
                    <i
                            onclick="toggleFAQ(this)"
                            class="fa-solid fa-chevron-down icon-down"
                            style="transform: rotateX(0deg)"
                    ></i>
                </div>
                <div class="answer" onclick="toggleFAQ(this)">
                    <p>
                        Lorem ipsum dolor sit amet consectetur adipisicing elit.
                        Pariatur, repellendus!
                    </p>
                </div>
            </div>
            <!--  -->

            <div class="ques-as" onclick="toggleFAQ(this)">
                <div class="question-content">
                    <p>Do you offer customer service in multiple languages?</p>
                    <i
                            onclick="toggleFAQ(this)"
                            class="fa-solid fa-chevron-down icon-down"
                            style="transform: rotateX(0deg)"
                    ></i>
                </div>
                <div class="answer">
                    <p>
                        Lorem ipsum dolor sit amet consectetur adipisicing elit.
                        Pariatur, repellendus!
                    </p>
                </div>
            </div>
            <!--  -->

            <div class="ques-as" onclick="toggleFAQ(this)">
                <div class="question-content">
                    <p>How does an appointment with Gucci work?</p>
                    <i
                            onclick="toggleFAQ(this)"
                            class="fa-solid fa-chevron-down icon-down"
                            style="transform: rotateX(0deg)"
                    ></i>
                </div>
                <div class="answer">
                    <p>
                        Lorem ipsum dolor sit amet consectetur adipisicing elit.
                        Pariatur, repellendus!
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="./assets/js/custom.js"></script>
<!-- Start Footer -->
<jsp:include page="footer.jsp"></jsp:include>
<!-- Close Footer -->

