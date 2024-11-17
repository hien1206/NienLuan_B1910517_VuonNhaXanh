<?php
$sql_product_list = "SELECT p.*, COUNT(e.evaluate_id) as total_reviews, MAX(e.evaluate_rate) as max_rating
FROM product p
LEFT JOIN evaluate e ON p.product_id = e.product_id AND e.evaluate_status = 1
GROUP BY p.product_id
ORDER BY total_reviews DESC, max_rating DESC
LIMIT 8";
$query_product_list = mysqli_query($mysqli, $sql_product_list);
?>
<div class="product-list">
    <div class="container pd-section">
        <div class="row">
            <div class="col">
                <div class="product__title">
                    <h2 class="h3">Có thể bạn quan tâm</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <?php
            while ($row = mysqli_fetch_array($query_product_list)) {
                $product_id = $row['product_id'];
                $product_name = mb_strimwidth($row['product_name'], 0, 50, "...");
                $product_image = $row['product_image'];
                $product_sale = $row['product_sale'];
                $product_price = $row['product_price'];

                // Truy vấn con để tính toán xếp hạng trung bình và đếm số lượng đánh giá
                $sql_rating = "SELECT AVG(evaluate_rate) as average_rating, COUNT(evaluate_id) as total_rate
                               FROM evaluate
                               WHERE product_id = $product_id AND evaluate_status = 1";
                $query_rating = mysqli_query($mysqli, $sql_rating);
                $row_rating = mysqli_fetch_assoc($query_rating);

                // Xếp hạng trung bình và số lượng đánh giá
                $rate_avg = round($row_rating['average_rating'], 1);
                $total_rate = $row_rating['total_rate'];

                // Hiển thị xếp hạng bằng cách sử dụng CSS class
                $full_stars = floor($rate_avg);
                $half_star = round($rate_avg - $full_stars);
                $empty_stars = 5 - $full_stars - $half_star;
            ?>
                <div class="col" style="--w: 6; --w-md: 3">
                    <div class="product__card d-flex flex-column">
                        <div class="product__image p-relative">
                            <a href="index.php?page=product_detail&product_id=<?php echo $product_id ?>">
                                <img class="w-100 h-100 object-fit-cover" src="admin/modules/product/uploads/<?php echo $product_image ?>" alt="product image" />
                            </a>
                            <?php if ($product_sale > 0) : ?>
                                <span class="product__sale h6 p-absolute"> - <?php echo $product_sale ?>%</span>
                            <?php endif; ?>
                        </div>
                        <div class="product__info">
                            <a href="index.php?page=product_detail&product_id=<?php echo $product_id ?>">
                                <h3 class="product__name h5"><?php echo $product_name ?></h3>
                            </a>
                            <span class="review-star-list d-flex">
                                <?php for ($i = 0; $i < $full_stars; $i++) : ?>
                                    <div class="rating-star"></div>
                                <?php endfor; ?>
                                <?php if ($half_star == 1) : ?>
                                    <div class="rating-star rating-half"></div>
                                <?php endif; ?>
                                <?php for ($i = 0; $i < $empty_stars; $i++) : ?>
                                    <div class="rating-star rating-off"></div>
                                <?php endfor; ?>
                                <span>(<?php echo $total_rate ?>)</span>
                            </span>
                            <a href="index.php?page=product_detail&product_id=<?php echo $product_id ?>">
                                <div class="product__price align-center">
                                    <?php if ($product_sale > 0) : ?>
                                        <del class="product__price--old h5"><?php echo number_format($product_price) . ' ₫' ?></del>
                                    <?php endif; ?>
                                    <span class="product__price--new h4"><?php echo (number_format($product_price - ($product_price / 100 * $product_sale)) . ' ₫') ?></span>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            <?php
            }
            ?>
        </div>
    </div>
</div>