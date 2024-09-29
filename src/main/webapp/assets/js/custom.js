function toggleMenu(x) {
    x.classList.toggle("active");
}

function showSearchInput() {
    const search = document.getElementById("search");

    if (search.style.display === "none" || search.style.display === "") {
        search.style.display = "block";
    } else {
        search.style.display = "none";
    }
}

function toggleLayer() {
    const layer = document.getElementById("overlay1");

    // Kiểm tra giá trị hiển thị của phần tử overlay
    if (layer.style.display === "none") {
        // layer.style.display = "block";
        layer.classList.toggle("active1");
    } else {
        layer.classList.toggle("active1");
        // layer.style.display = "none";
    }
}

function toggleSubMenu(event) {
    const target = event.parentElement.querySelector(".sub-menu");

    if (target.style.maxHeight === "0px" || !target.style.maxHeight) {
        target.style.maxHeight = "300px";
    } else {
        target.style.maxHeight = "0";
    }
}

function chooseSize(x) {
    // Xóa class 'sd' khỏi tất cả các thẻ checked-box
    let boxes = document.querySelectorAll(".checked-box label");
    let checkedImages = document.querySelectorAll(".checked-box label img");

    // Xóa class 'sd' và đặt opacity về 0 cho tất cả các thẻ
    boxes.forEach(function (box) {
        box.classList.remove("sd");
    });

    checkedImages.forEach(function (img) {
        img.style.opacity = "0";
    });

    // Thêm class 'sd' và đặt opacity = 1 cho thẻ được nhấp
    x.getElementsByTagName("label")[0].classList.add("sd");
    x.getElementsByTagName("img")[0].style.opacity = "1";

    // Kiểm tra input được chọn
    let input = x.querySelector(".checked-box input");
    if (input.checked) {
        console.log("Input được chọn có giá trị:", input.value);
    }
}

//


//
function change_icon(x) {
    console.log(x);

    if (x.style.transform === "rotateX(0deg)") {
        x.style.transform = "rotateX(180deg)";
    } else {
        x.style.transform = "rotateX(0deg)";
    }
}

function calculate(x) {
    const value = x.value;
    let quantity = document.querySelector(".value-quantity");

    // Lấy giá trị hiện tại từ input và chuyển nó thành số
    let currentValue = parseInt(quantity.value);

    // Kiểm tra giá trị của nút được nhấn và thay đổi giá trị
    if (value === "+") {
        currentValue += 1;
    } else if (value === "-" && currentValue > 1) {
        currentValue -= 1;
    }

    // Cập nhật giá trị mới cho input
    quantity.value = currentValue;
    console.log(currentValue);

    quantity.innerHTML = currentValue;
}
function open_menu_user(x) {
    const target = x.parentElement.querySelector('.nav-bar-user');

    if (target.style.display === "none" || target.style.display === "") {
        target.classList.remove('fade-out');
        target.classList.add('fade-in');
        target.style.display = "block";
    } else {
        target.classList.remove('fade-in');
        target.classList.add('fade-out');

        // Đợi hết animation rồi ẩn phần tử
        setTimeout(() => {
            target.style.display = "none";
        }, 800);  // 1 giây là thời gian của animation fadeOutUpV2
    }
}
