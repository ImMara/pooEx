<?php ob_start(); ?>
<div id="menu" class="pb-5 p-5 bg-light d-flex justify-content-center">
    <div class="menuBox ml-5">
        <h1 class="mb-5 pb-5">Entrée</h1>
        <?php foreach($entree as $entree) : ?>
            <div class="mb-3">
                <h4><?= $entree->nom?></h4>
                <p><?= $entree->ingredient?></p>
                <a href="<?=$entree->getURL()?>" class="btn btn-outline-dark">Plus d'informations</a>
            </div>
        <?php endforeach; ?>
    </div>
    <hr class="bg-dark pr-0 pl-0 ml-0 mr-0 mt-4" style="width: 260px;">
    <div class="menuBox">
        <h1 class="mb-5 pb-5">Repas</h1>
        <?php foreach($repas as $repas) : ?>
            <div class="mb-3">
                <h4><?= $repas->nom?></h4>
                <p><?= $repas->ingredient?></p>
                <a href="<?=$repas->getURL()?>" class="btn btn-outline-dark">Plus d'informations</a>
            </div>
        <?php endforeach; ?>
    </div>
    <hr class="bg-dark pr-0 pl-0 ml-0 mr-0 mt-4" style="width: 260px;">
    <div class="menuBox mr-5">
        <h1 class="mb-5 pb-5">Dessert</h1>
        <?php foreach($dessert as $dessert) : ?>
            <div class="mb-3">
                <h4><?= $dessert->nom?></h4>
                <p><?= $dessert->ingredient?></p>
                <a href="<?=$dessert->getURL()?>" class="btn btn-outline-dark">Plus d'informations</a>
            </div>
        <?php endforeach; ?>
    </div>
</div>
<?php $content = ob_get_clean() ?>
<?php require('content.php') ?>