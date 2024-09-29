

function Validator(options) {
    console.log(options)
    function getParent(element, selector) {
        while (element.parentElement) {
            if (element.parentElement.matches(selector)) {
                return element.parentElement;
            }
            element = element.parentElement;
        }
    }

    var selectorRules = {};

    // hàm validate

    function validate(inputElement, rule, errorElement) {
        var errorMessage;

        // lay ra cac rule cua selector
        var rules = selectorRules[rule.selector];

        // lap qua cac rule neu co loi thi ngung ktra
        for (var i = 0; i < rules.length; i++) {
            errorMessage = rules[i](inputElement.value);
            if (errorMessage) break;
        }

        if (errorMessage) {
            errorElement.innerText = errorMessage;
            getParent(inputElement, options.formGroupSelector).classList.add(
                "invalid"
            );
        } else {
            errorElement.innerText = "";
            getParent(inputElement, options.formGroupSelector).classList.remove(
                "invalid"
            );
        }
        return !errorMessage;
    }

    // hàm unValidate

    function unValidate(inputElement, errorElement) {
        errorElement.innerText = "";
        inputElement.parentElement.classList.remove("invalid");
    }

    // lấy ra toàn bộ form cần validate

    var formElement = document.querySelector(options.form);

    if (formElement) {
        // duyệt qua các rules

        formElement.onsubmit = function (e) {
            var isFormValid = true; // Biến kiểm tra form có hợp lệ hay không

            // Lặp qua từng rules và validate
            options.rules.forEach(function (rule) {
                var inputElement = formElement.querySelector(rule.selector);
                var errorElement = getParent(
                    inputElement,
                    options.formGroupSelector
                ).querySelector(options.errorSelector);
                var isValid = validate(inputElement, rule, errorElement); // validate trả về true nếu có lỗi

                if (!isValid) {
                    isFormValid = false; // Nếu có lỗi, đánh dấu form không hợp lệ
                }
            });

            if (!isFormValid) {
                e.preventDefault(); // Nếu form không hợp lệ, ngăn chặn việc submit
            } else {
                // Nếu form hợp lệ, không cần gọi e.preventDefault()
                // Form sẽ được submit
            }
        };

        options.rules.forEach(function (rule) {
            if (Array.isArray(selectorRules[rule.selector])) {
                selectorRules[rule.selector].push(rule.test);
            } else {
                selectorRules[rule.selector] = [rule.test];
            }

            var inputElement = formElement.querySelector(rule.selector);
            var errorElement = getParent(
                inputElement,
                options.formGroupSelector
            ).querySelector(options.errorSelector);

            // check xem người dùng đã nhập điền thông tin vào ô input chưa

            if (inputElement) {
                inputElement.onblur = function () {
                    validate(inputElement, rule, errorElement);
                };

                inputElement.oninput = function () {
                    unValidate(inputElement, errorElement);
                };
            }
        });
    }
}

Validator.isRequired = function (selector, message) {
    return {
        selector: selector,
        test: function (value) {
            return value.trim() ? undefined : message || "Vui lòng nhập trường này";
        },
    };
};

Validator.isEmail = function (selector, message) {
    return {
        selector: selector,
        test: function (value) {
            const regex =
                /^(([^<>()[\]\.,;:\s@\"]+(\.[^<>()[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i;
            return regex.test(value) ? undefined : message || "Vui lòng nhập email";
        },
    };
};

Validator.minLength = function (selector, min, message) {
    return {
        selector: selector,
        test: function (value) {
            return value.length >= min
                ? undefined
                : message || `Vui lòng nhập tối thiểu ${min} kí tự `;
        },
    };
};

Validator.isConfirmed = function (selector, getValueConfirmed, message) {
    return {
        selector: selector,
        test: function (value) {
            return value === getValueConfirmed()
                ? undefined
                : message || "Giá trị nhập vào không chính xác";
        },
    };
};
