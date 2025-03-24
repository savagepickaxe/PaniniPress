 
<?php
get_header();
?>
 
<main class="page__realisations">
    <div class="titre__realisations">
        <h2 class="h2__realisations"> Nos <?php the_title(); ?></h2>
    </div>
 
    <?php
    $posts = get_posts(array(
        'posts_per_page' => -1,
        'post_type' => 'realisations',
        'post_status' => 'publish',
        'orderby' => 'the_title',
        'order' => 'ASC',
    ));
 
    if (!empty($posts)) {
        $count = 0;
        foreach ($posts as $post) {
            $image_info = get_field("photo_1"); ?>
 
            <div class="realisations-container">
                <?php if ($image_info) { ?>
                    <picture class="article__image">
                        <source media="(min-width: 800px)" srcset="<?php echo esc_url($image_info['sizes']['large']); ?>">
                        <source media="(min-width: 601px)" srcset="<?php echo esc_url($image_info['sizes']['medium']); ?>">
                        <img src="<?php echo esc_url($image_info['sizes']['medium']); ?>" alt="<?php echo esc_attr($image_info["alt"]); ?>">
                    </picture>
                <?php } ?>
 
                <article class="article_realisations">
                    <header class="article__entete">
                        <h2 class="article__titre">
                            <a class="article__lien" href="<?php the_permalink(); ?>"><?php the_title(); ?></a>
                        </h2>
                    </header>
 
                    <p class="nom__client"><?php echo get_field("nom_client"); ?></p>
                    <p class="article__texte">
                        <?php the_excerpt(); ?>
                    </p>
                    <a href="<?php the_permalink(); ?>" class="bouton__realisations">En savoir plus</a>
                </article>
            </div>
 
        <?php $count++;
        }
    } ?>
</main>
 
 
<?php get_footer()?>
 