<?php ob_start(); ?>
<div class="bg-dark w-100 h-100 text-white d-flex justify-content-center align-items-center">
    <div class="review-logo"></div>
    <div class="reviewContainer">
        <h1 class="mb-3 text-center">Customer Review</h1>
        <hr class="mb-3 bg-light">
        <?php foreach($review as $review) : ?>
        <div class="userReview mb-3 d-flex align-items-center justify-content-around">
            <p><?=$review->content?></p>
            <div class="starBox">
                <h6><?=$review->name?></h6>
                <?=$review->getStar()?>
            </div>
        </div>
        <?php endforeach; ?>
    </div>
    <div class="review-logo"></div>
</div>
<?php $review = ob_get_clean() ?>
<?php require('content.php') ?>
