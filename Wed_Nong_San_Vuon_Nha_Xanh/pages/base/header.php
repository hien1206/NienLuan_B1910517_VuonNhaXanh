<?php
if (isset($_GET['logout']) && $_GET['logout'] == 1) {
    unset($_SESSION['account_email']);
    unset($_SESSION['account_id']);
    header('Location:index.php');
}
?>
<?php
// Thông tin kết nối cơ sở dữ liệu
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "Wed_Nong_San_Vuon_Nha_Xanh";

// Tạo kết nối cơ sở dữ liệu
$connection = mysqli_connect($servername, $username, $password, $dbname);

// Kiểm tra kết nối
if (!$connection) {
    die("Kết nối cơ sở dữ liệu thất bại: " . mysqli_connect_error());
}
// Kiểm tra xem người dùng đã đăng nhập hay chưa
if (isset($_SESSION['account_email']) && isset($_SESSION['account_id'])) {
    // Lấy thông tin tài khoản từ cơ sở dữ liệu dựa trên email hoặc ID đăng nhập
    $account_id = $_SESSION['account_id']; // Đặt account_id dựa trên thông tin đăng nhập của bạn

    $query = "SELECT account_name FROM account WHERE account_id = '$account_id'";
    $result = mysqli_query($connection, $query);

    if ($result && mysqli_num_rows($result) > 0) {
        $row = mysqli_fetch_assoc($result);
        $account_name = $row['account_name'];
    } else {
        $account_name = ""; // Nếu không có dữ liệu, gán giá trị mặc định cho $account_name
    }
} else {
    $account_name = ""; // Nếu không có thông tin đăng nhập, gán giá trị mặc định cho $account_name
}
?>
<style>
    .voice-btn.recognizing .action__icon-on {
        display: block;
    }
    .voice-btn.recognizing .action__icon-off {
        display: none;
    }/* Đảm bảo các mục menu nằm ngang */
.nav__list {
    display: flex; /* Xếp các mục theo hàng ngang */
    list-style: none;
    padding: 0;
    margin: 0;
}

/* Các mục trong menu */
.nav__item {
    margin-right: 0px; /* Khoảng cách giữa các mục */
}

/* Định dạng các mục trong danh mục sản phẩm */
.categories {
    position: relative;
}

.categories__list {
    display: flex; /* Hiển thị các danh mục sản phẩm theo hàng ngang */
    list-style: none;
    margin: 0;
    padding: 0;
}

.categories__list li {
    margin-right: 20px;
}

.categories__list a {
    text-decoration: none;
    color: #333;
    font-weight: bold;
    padding: 10px;
    display: block;
}/* Cài đặt font chữ toàn trang */
body {
    font-family: 'Arial', sans-serif; /* Hoặc sử dụng font khác như 'Roboto', 'Helvetica' tùy vào sở thích */
    font-size: 16px; /* Chọn kích thước chữ phù hợp cho toàn trang */
    color: #333; /* Màu chữ chính cho toàn bộ trang */
    line-height: 1.6; /* Đảm bảo khoảng cách giữa các dòng rõ ràng */
}

/* Các mục menu chính và phụ */
.nav__anchor {
    text-decoration: none;
    color: #333; /* Màu chữ chính của các mục menu */
    font-size: 16px;
    font-weight: 600; /* Font đậm cho các mục menu chính */
    padding: 10px 15px;
    border-radius: 5px;
    transition: all 0.3s ease; /* Hiệu ứng khi hover */
}

/* Hover trên các mục menu */
.nav__anchor:hover {
    background-color: #007bff; /* Nền khi hover */
    color: #fff; /* Màu chữ khi hover */
}

/* Các mục danh mục sản phẩm trong Cửa hàng */
.categories__list a {
    text-decoration: none;
    color: #333; /* Màu chữ cho các mục trong danh mục sản phẩm */
    font-size: 14px;
    font-weight: 500; /* Font nửa đậm */
    padding: 8px 12px;
    display: block;
    border-radius: 5px;
    transition: all 0.3s ease;
}

/* Hover trên các mục danh mục sản phẩm */
.categories__list a:hover {
    background-color: #e0e0e0;
    color: #007BFF;
}

/* Màu chữ cho các mục trong giỏ hàng, tìm kiếm và các nút xã hội */
.header__action--link,
.social__item a {
    color: #333; /* Màu chữ đồng bộ cho các icon và nút */
    display: inline-block;
    padding: 8px 12px;
    border-radius: 5px;
    transition: all 0.3s ease;
}

/* Hover trên các icon giỏ hàng và các icon xã hội */
.header__action--link:hover,
.social__item:hover {
    background-color: #007BFF;
    color: #fff; /* Màu chữ trắng khi hover */
}

/* Chỉnh sửa phần các mục trong phần giới thiệu, blog, liên hệ */
.nav__item a {
    font-size: 13px; /* Font chữ đồng bộ với các mục menu khác */
    color: #333; /* Màu chữ đồng bộ */
    font-weight: 600;
    padding: 10px 15px;
    transition: all 0.3s ease;
}

/* Hover cho các mục Giới thiệu, Blog, Liên hệ */
.nav__item a:hover {
    background-color: #007BFF;
    color: #fff;
}

/* Điều chỉnh độ mượt của các tiêu đề */
h1, h2, h3, h4, h5, h6 {
    font-family: 'Arial', sans-serif;
    color: #333;
    font-weight: bold;
}

/* Màu chữ của các đoạn văn bản */
p {
    color: #333; /* Đảm bảo màu chữ đồng nhất cho các đoạn văn */
    font-size: 16px;
}

/* Tạo khoảng cách giữa các đoạn văn */
p + p {
    margin-top: 15px;
}


/* Thay đổi màu khi hover */
.categories__list a:hover {
    color: #007BFF;
    background-color: #f1f1f1;
}

</style>
<header class="header">
    <div class="header__topbar">
        <div class="container p-relative d-flex space-between align-center">
            <p class="h4">Chào mừng <?php echo $account_name; ?> đến với chúng tôi</p>
            <?php if (isset($_SESSION['account_email'])) { ?>
                <a class="h4 login-btn p-absolute" href="index.php?logout=1">ĐĂNG XUẤT</a>
            <?php } else { ?>
                <a class="h4 login-btn p-absolute" href="index.php?page=login">ĐĂNG NHẬP</a>
            <?php } ?>
        </div>
    </div>
    <div class="header__main">
        <div class="container">
            <div class="header__container d-flex align-center space-between">
                <div class="header__logo d-flex justify-center align-center">
                    <a href="index.php" class="d-inline-block">
                        <img class="d-block w-100 svg__icon" src="./assets/images/logo/Vườn Nhà Xanh 2.png" alt="Logo" style="width: 200px; height: 100px;">
                    </a>
                </div>
                <nav class="header__nav">
                    <ul class="nav__list d-flex align-center">
                        <!-- Mục Cửa hàng -->
                        <!-- <li class="nav__item">
                            <a class="nav__anchor h7" href="index.php?page=products">Trang chủ</a>
                        </li> -->

                        <!-- Danh sách các danh mục sản phẩm hiển thị theo hàng ngang -->
                        <li class="nav__item categories">

                            <ul class="categories__list h7">
                                <?php
                                $sql_category_list = "SELECT * FROM category ORDER BY category_id DESC";
                                $query_category_list = mysqli_query($mysqli, $sql_category_list);
                                while ($row_category = mysqli_fetch_array($query_category_list)) {
                                ?>
                                    <li ><a class="h7 nav__anchor" href="index.php?page=products&category_id=<?php echo $row_category['category_id'] ?>"><?php echo $row_category['category_name'] ?></a></li>
                                <?php
                                }
                                ?>
                            </ul>
                        </li>

                        <!-- Các mục Giới thiệu, Blog, Liên hệ -->
                        <li class="nav__item">
                            <a class="nav__anchor h7" href="index.php?page=about">Giới thiệu</a>
                        </li>
                        <li class="nav__item">
                            <a class="nav__anchor h7" href="index.php?page=blog">Món ngon</a>
                        </li>
                        <li class="nav__item">
                            <a class="nav__anchor h7" href="index.php?page=contact">Liên hệ</a>
                        </li>
                    </ul>
                </nav>
                <div class="header__action d-flex align-center">
                    <div class="header__action--item d-flex align-center p-relative">
                        <form action="index.php?page=search" method="POST" class="d-flex align-center" id="search-box">
                            <input type="text" placeholder="Tìm kiếm sản phẩm ..." id="input-search" name="keyword" class="search__input" required>
                            <button type="submit" name="search" class="header__action--link search-btn p-absolute d-inline-block">
                                <img class="action__icon svg__icon d-block" src="./assets/images/icon/icon-search.svg" alt="search" />
                            </button>
                        </form>
                    </div>
                    <div class="header__action--item align-center d-none md-flex">
                        <a class="header__action--link d-inline-block" href="<?php if (isset($_SESSION['account_email'])) {
                                                                                echo "index.php?page=my_account&tab=account_info";
                                                                            } else {
                                                                                echo "index.php?page=login";
                                                                            } ?>">
                            <img class="action__icon svg__icon d-block" src="./assets/images/icon/icon-person.svg" alt="person" />
                        </a>
                    </div>
                    <div class="header__action--item d-flex align-center">
                        <a class="header__action--link d-inline-block" href="index.php?page=cart">
                            <?php
                            if (isset($_SESSION['cart']) && count($_SESSION['cart']) > 0) {
                            ?>
                                <div class="icon-cart d-flex align-center justify-center p-relative">
                                    <img class="action__icon svg__icon d-block" src="./assets/images/icon/cart-open.svg" alt="cart">
                                    <span class="cart-count p-absolute d-flex align-center justify-center h6"><?php echo count($_SESSION['cart']) ?></span>
                                </div>
                            <?php
                            } else {
                            ?>
                                <img class="action__icon svg__icon d-block" src="./assets/images/icon/icon-cart.svg" alt="cart">
                            <?php
                            }
                            ?>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>

<script>
    function voiceInput() {
        var inputSearch = document.getElementById('input-search');
        var searchBtn = document.querySelector('.voice-btn');
        // Tạo một đối tượng SpeechRecognition
        const recognition = new webkitSpeechRecognition();
        // Đặt thuộc tính cho đối tượng recognition
        recognition.lang = 'vi-VN'; // Ngôn ngữ được nhận dạng
        recognition.continuous = false; // Nhận dạng liên tục (true) hoặc một lần (false)

        // Sự kiện khi nhận dạng giọng nói thành công
        recognition.onresult = function(event) {
            const transcript = event.results[0][0].transcript;
            inputSearch.value = transcript; // In ra kết quả nhận dạng giọng nói
        };

        recognition.onstart = function() {
            searchBtn.classList.add('recognizing'); // Thêm class để áp dụng hiệu ứng khi bắt đầu nhận dạng
        };

        recognition.onend = function() {
            searchBtn.classList.remove('recognizing'); // Xóa class khi kết thúc nhận dạng
        };

        // Sự kiện khi xảy ra lỗi trong quá trình nhận dạng
        recognition.onerror = function(event) {
            console.error(event.error);
        };

        // Bắt đầu ghi âm và nhận dạng giọng nói
        recognition.start();
    }
</script>