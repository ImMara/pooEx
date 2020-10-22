<?php ob_start(); ?>
<?= $recomandations ?>
<?= $menu ?>
<?= $review ?>
<?php $content = ob_get_clean() ?>
<?php require("template.php"); ?>
