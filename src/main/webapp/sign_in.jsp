<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>

    <!-- Font Awesome CDN -->
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"
            integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg=="
            crossorigin="anonymous"
            referrerpolicy="no-referrer"
    />
    <link rel="stylesheet" href="./assets/css/form.css" />
</head>
<body>
<div class="limiter">
    <div class="container-login">
        <div class="form-login">
            <div class="left-content">
                <img
                        src="https://colorlib.com/etc/lf/Login_v1/images/img-01.png"
                        alt=""
                />
            </div>
            <form action="Sign_In_Control" class="form" id="form-1">
                <span class="login-title">Member Login</span>
                <div class="form-group">
                    <i
                            class="icon-form-log-in-out fa-solid fa-envelope"
                            style="color: #a6aab0"
                    ></i>

                    <input
                            id="fullname"
                            name="fullname"
                            type="text"
                            placeholder="VD: Tùng Đỗ"
                            class="form-control"
                    />

                    <span class="form-message"></span>
                </div>
                <div class="form-group">
                    <i
                            class="icon-form-log-in-out fa-solid fa-lock"
                            style="color: #a0a2a7"
                    ></i>
                    <input
                            id="password"
                            name="password"
                            type="password"
                            placeholder="Nhập mật khẩu"
                            class="form-control"
                    />
                    <span class="form-message"></span>
                </div>
                <div class="btn-login-form">
                    <button type="submit" class="btn-login"><span>LOGIN</span></button>
                </div>
                <div class="text-center-1">
                    <span><a href="">Forgot Username/Password?</a></span>
                </div>

                <div class="text-center-2">
              <span
              >Don't have a account?<a
                      href="sign_up.jsp"
                      style="padding-right: 2px"
              >
                  Create here</a
              ></span
              >
                </div>
            </form>
        </div>
    </div>
</div>

<%----%>
<script src="./assets/js/validator.js"></script>

<script>
    // Output when validate
    Validator({
        form: "#form-1",
        formGroupSelector: ".form-group",
        errorSelector: ".form-message",
        rules: [
            Validator.isRequired("#fullname"),
            Validator.isRequired("#password"),
            Validator.minLength("#password", 3),
            Validator.isRequired("#password_confirmation"),
            Validator.isConfirmed(
                "#password_confirmation",
                function () {
                    return document.querySelector("#form-1 #password").value;
                },
                "Mật khẩu nhập lại không chính xác"
            ),
        ],
    });
</script>
</body>
</html>

