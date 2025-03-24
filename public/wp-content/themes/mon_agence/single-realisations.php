<script src="<?php echo get_template_directory_uri()?>/liaisons/js/carousel.js"></script>
<?php
get_header();
?>

<main class="page__single__realisation">


<?php
$image_info = get_field("photo_5");
if ($image_info != null) {
?>
    <div class="single-realisation__image-haut-page">
        <picture>
            <source media="(min-width: 800px)" srcset="<?= $image_info['sizes']["large"] ?>">
            <source media="(min-width: 601px)" srcset="<?= $image_info['sizes']["medium"] ?>">
            <img src="<?= $image_info['sizes']["thumbnail"] ?>" alt="<?= $image_info["alt"]; ?>">
        </picture>

        <header class="single-realisation__entete-sur-image">
            <h2 class="single-realisation__titre"><?php the_title() ?></h2>
            <h3 class="single-realisation__client"><?php echo get_field("nom_client"); ?></h3>
        </header>
    </div>
<?php } ?>

<?php the_post();?>
<article class="single-realisation__article">
  <p class="single-realisation__mandat">Notre mandat</p>
  <p class="single-realisation__texte"><?php the_content() ?></p>
</article>

<p class="single-realisation__realisations">Réalisations</p>
<?php
 

for($cpt=1;$cpt<=4;$cpt++){
    $nom_image="photo_".$cpt;
                $image_info=get_field($nom_image);
                if($image_info!=null){?>
                    <ul id="<?php echo $nom_image ?>" class="liens_caches"><li><?php echo $image_info['sizes']["medium"]?></li><li><?php echo $image_info['sizes']["medium"]?></li><li><?php echo $image_info['sizes']["large"]?></li></ul>
                    <?php
                        if($cpt==1){?>
                            <div id="<?php echo 'carousel'?>" class="carousel">
                                <picture>
                                    <source id="img_thumbnail" media="(min-width: 800px)" srcset="<?php echo $image_info['sizes']["large"];?>">
                                    <source id="img_medium" media="(min-width: 601px)" srcset="<?php echo $image_info['sizes']["medium"];?>">
                                    <img id="img_large" src="<?php echo $image_info['sizes']['medium'];?>" alt="<?php echo $image_info["alt"];?>">
                                </picture>
                            </div>
                <?php }
                }
} ?>

<div class="realisationsingle__navsequentielle">
    <?php
    the_post_navigation( array(
        'prev_text'  => '<button class="realisationsingle__navsequentielle__nav-button realisationsingle__navsequentielle__nav-button__prev-button">← %title</button>',
        'next_text'  => '<button class="realisationsingle__navsequentielle__nav-button realisationsingle__navsequentielle__next-button">%title →</button>',
    ) );
    ?>
    </div>

<article>
<footer class="article__piedPage">
            <h4>Par: <?php the_author();?></h4>
            <h4>  Publié le: <?php the_date();?></h4>
        </footer>
</article>
</main>
 
<?php get_footer()?>

 