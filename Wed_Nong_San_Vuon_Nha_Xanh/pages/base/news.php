<?php
$sql_article_list = "SELECT * FROM article ORDER BY article_id DESC LIMIT 8";
$query_article_list = mysqli_query($mysqli, $sql_article_list); // Truy vấn cơ sở dữ liệu để lấy bài viết
?>
<section class="customer pd-section">
    <div class="container">
        <div class="row">
            <div class="col section__heading text-center">
                <h2 class="h2">Tin tức nổi bật</h2>
            </div>
        </div>
        <div class="customer-feedback" id="articleContainer">
            <ul class="customer-feedback__items d-flex w-100" tabindex="0" id="articleList">
                <?php while ($row = mysqli_fetch_array($query_article_list)): ?>
                    <li class="customer-feedback__item d-flex justify-center align-center" id="new-<?php echo $row['article_id'] ?>">
                        <div class="customer-feedback__image w-100">
                            <a href="index.php?page=article&article_id=<?php echo $row['article_id'] ?>">
                                <img class="image-news w-100 h-100 d-block object-fit-cover" src="admin/modules/blog/uploads/<?php echo $row['article_image'] ?>" alt="customer1">
                            </a>
                        </div>
                        <div class="customer-feedback__content w-100 h-100 d-flex">
                            <span class="customer-feedback__date d-flex align-center">
                                <img class="article-icon" src="assets/images/icon/icon-date.png" alt="">
                                <?php echo $row['article_date'] ?>
                            </span>
                            <span class="customer-feedback__name d-flex align-center"> 
                                <img class="article-icon" src="assets/images/icon/icon-author.png" alt="">
                                <?php echo $row['article_author'] ?>
                            </span>
                            <p class="customer-feedback__text h4"><?php echo mb_strimwidth($row['article_summary'], 0, 200, "...") ?></p>
                        </div>
                    </li>
                <?php endwhile; ?>
            </ul>
            <!-- <ol>
                <?php
                // Reset pointer của kết quả truy vấn
                mysqli_data_seek($query_article_list, 0); 
                while ($row = mysqli_fetch_array($query_article_list)):
                ?>
                    <li><a href="#new-<?php echo $row['article_id'] ?>"></a></li>
                <?php endwhile; ?>
            </ol> -->
        </div>
    </div>
</section>

<!-- Thêm CSS trực tiếp vào đây -->
<style>
/* Đặt các bài viết trên cùng một hàng và có thể cuộn ngang */
.customer-feedback__items {
    display: flex;              /* Để các bài viết xếp ngang */
    flex-wrap: nowrap;          /* Không cho phép bài viết xuống dòng */
    justify-content: flex-start; /* Căn trái các bài viết */
    gap: 20px;                 /* Khoảng cách giữa các bài viết */
    overflow-x: auto;          /* Cho phép cuộn ngang nếu cần */
    padding-bottom: 20px;      /* Khoảng cách dưới cùng cho phần cuộn */
    scroll-behavior: smooth;   /* Thêm hiệu ứng mượt mà khi cuộn */
}

.customer-feedback__item {
    opacity: 0;
    transform: translateY(50px);
    animation: slide-up 0.5s ease-out forwards;
    transition: all 0.3s ease-in-out;
    width: 300px; /* Chiều rộng cố định cho mỗi bài viết */
    flex-shrink: 0; /* Đảm bảo các bài viết không bị thu nhỏ khi không có không gian */
}

/* Hiệu ứng di chuyển lên và xuất hiện */
@keyframes slide-up {
    0% {
        opacity: 0;
        transform: translateY(50px);
    }
    100% {
        opacity: 1;
        transform: translateY(0);
    }
}

/* Thêm delay cho các bài viết khác nhau để hiệu ứng không đồng thời */
.customer-feedback__item:nth-child(1) {
    animation-delay: 0.1s;
}
.customer-feedback__item:nth-child(2) {
    animation-delay: 0.2s;
}
.customer-feedback__item:nth-child(3) {
    animation-delay: 0.3s;
}
.customer-feedback__item:nth-child(4) {
    animation-delay: 0.4s;
}
</style>

<!-- Thêm JavaScript sau đây -->
<script>
document.addEventListener("DOMContentLoaded", function() {
    const articleList = document.getElementById('articleList');
    const articles = articleList.querySelectorAll('.customer-feedback__item');
    let currentIndex = 0;
    const scrollAmount = 300;  // Khoảng cách cuộn mỗi lần
    const scrollSpeed = 3000;  // Thời gian mỗi lần cuộn (ms)

    // Hàm cuộn ngang tự động
    function autoScroll() {
        // Cuộn danh sách bài viết sang phải
        articleList.scrollLeft += scrollAmount;

        // Kiểm tra nếu đã cuộn đến cuối danh sách
        if (articleList.scrollLeft + articleList.offsetWidth >= articleList.scrollWidth) {
            // Nếu đã đến cuối danh sách, cuộn lại từ đầu
            articleList.scrollLeft = 0;
        }
    }

    // Di chuyển các bài viết tự động mỗi `scrollSpeed` giây
    setInterval(autoScroll, scrollSpeed);

    // Khởi chạy lần đầu để bài viết đầu tiên được hiển thị
    autoScroll();
});
</script>
