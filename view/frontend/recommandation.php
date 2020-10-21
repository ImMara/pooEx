<?php ob_start(); ?>
<div id="recommandations" class="slide w-100 h-100 align-items-center bg-dark d-flex">
    <div class="left d-flex align-items-center">
        <img class="ml-5" src="view/assets/img/chef.png" alt="chef-cooking">
    </div>
    <div class="right" style="height: 560px;">
        <h1 class='ml-5 text-white text-center'>Recommandations</h1>
        <hr class="bg-light ml-5 mr-5">
        <div class="ml-5 h-100 d-flex justify-content-center align-items-center mr-5">
            <?php foreach($reco as $food) : ?>
                <?= $food->bootstrapCards($food->image,$food->nom ,$food->description,$food->getURL());?>
            <?php endforeach; ?>
        </div>
    </div>
</div>
<?php $content = ob_get_clean() ?>
<?php require('content.php') ?>

