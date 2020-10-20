<div id="recommandations" class="slide w-100 h-100 align-items-center bg-dark d-flex">
    <div class="left d-flex align-items-center">
        <img class="ml-5" src="template/assets/img/chef.png" alt="chef-cooking">
    </div>
    <div class="right" style="height: 560px;">
        <h1 class='ml-5 text-white'>Recommandations : </h1>
        <div class="ml-5 h-100 d-flex align-items-center">
            <?php foreach($db->myQuery('SELECT * FROM food LIMIT 0,2','Article') as $food) : ?>
                <?= $food->bootstrapCards($food->image,$food->nom ,$food->description,$food->getURL());?>
            <?php endforeach; ?>
        </div>
    </div>
</div>